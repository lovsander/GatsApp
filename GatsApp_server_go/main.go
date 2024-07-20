package main

import (
	"fmt"
	"net"
	"os"
	"os/signal"
	"syscall"
)

func main() {
	fmt.Println("Server started")

	exit := make(chan os.Signal, 1) // we need to reserve to buffer size 1, so the notifier are not blocked
	signal.Notify(exit, os.Interrupt, syscall.SIGTERM)

	listener, _ := net.Listen("tcp", "localhost:8080") // открываем слушающий сокет
	for {
		conn, err := listener.Accept() // принимаем TCP-соединение от клиента и создаем новый сокет
		if err != nil {
			continue
		}

		go handleClient(conn, exit) // обрабатываем запросы клиента в отдельной го-рутине

	}

	//
}

func handleClient(conn net.Conn, exit chan os.Signal) {
	go func(conn net.Conn, c chan os.Signal) {
		<-c
		conn.Write([]byte("CLOSECONNECTION_SERVER_DOWN\n")) // пишем в сокет
		conn.Close()
	}(conn, exit)

	buf := make([]byte, 32) // буфер для чтения клиентских данных
	for {
		conn.Write([]byte("Hello, what's your name?\n")) // пишем в сокет

		readLen, err := conn.Read(buf) // читаем из сокета
		if err != nil {
			fmt.Println(err)
			break
		}
		fmt.Println("got", conn.RemoteAddr().String(), string(buf[:readLen]))
		ans := append([]byte("Goodbye, "), buf[:readLen]...)
		ans = append(ans, "\r\n"...)
		conn.Write(ans) // пишем в сокет

	}
}
