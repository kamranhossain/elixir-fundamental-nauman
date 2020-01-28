defmodule FileHandling do
    # file will be string
    def file_write do
        {:ok, file} = File.open "file", [:write]
        IO.binwrite file, "world"
        File.close file
    end

    def file_read(file) do
        {:ok, contents} = File.read "file"
    end
    
    # path func in elixir
    Path.join("foo", "bar")
    Path.expand("~/pathname")
end