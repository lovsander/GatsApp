package main

import (
	"encoding/json"
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

type clientStruct struct {
	User    string `json:"user"`
	Message string `json:"message"`
}

func handleClient(conn net.Conn, exit chan os.Signal) {
	go func(conn net.Conn, c chan os.Signal) {
		<-c
		conn.Write([]byte("CLOSECONNECTION_SERVER_DOWN\n")) // пишем в сокет
		conn.Close()
	}(conn, exit)

	buf := make([]byte, 250) // буфер для чтения клиентских данных
	for {
		conn.Write([]byte("Server listening...\n")) // пишем в сокет

		readLen, err := conn.Read(buf) // читаем из сокета
		if err != nil {
			fmt.Println(err)
			break
		}
		var cs clientStruct
		if err := json.Unmarshal(buf[:readLen], &cs); err != nil {
			fmt.Println(err)
		}

		if cs.Message == "" && cs.User != "" {
			fmt.Println("Connected new client:", cs.User, conn.RemoteAddr().String())
			conn.Write([]byte("Connection Ok\r\n")) // пишем в сокет
		} else {
			fmt.Println("Client Addr:", conn.RemoteAddr().String(), ", Name:", cs.User, ", Message:", cs.Message)

			ans := append([]byte("Got from: "), []byte(cs.User)...)
			ans = append(ans, []byte(" : ")...)
			ans = append(ans, []byte(cs.Message)...)
			ans = append(ans, "\r\n"...)
			conn.Write(ans) // пишем в сокет
		}
	}
}
