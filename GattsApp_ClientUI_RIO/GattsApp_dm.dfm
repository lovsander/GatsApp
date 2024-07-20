object DM: TDM
  OldCreateOrder = False
  Height = 334
  Width = 398
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 8080
    OnConnecting = ClientSocket1Connecting
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    OnRead = ClientSocket1Read
    OnError = ClientSocket1Error
    Left = 40
    Top = 24
  end
end
