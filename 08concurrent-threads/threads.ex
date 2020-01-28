defmodule Server do
    def listen do
        receive do
            {:ok, :ping} -> IO.puts "Pong"
            {:ok, :ding} -> IO.puts "Dong"
        end
        listen()
    end

    # in terminal iex
    # iex(1)> c("08concurrent-threads/threads.ex") 
    # [Server]
    # iex(2)> pid = spawn(Server, :listen, []) 
    # #PID<0.114.0>
    # iex(3)>  send pid, {:ok, :ping} 
    # pong
    # {:ok, :ping}
    # iex(4)>  send pid, {:ok, :dong} 
    # {:ok, :dong}
    # iex(5)>  send pid, {:ok, :ding} 
    # dong
    # {:ok, :ding}

end