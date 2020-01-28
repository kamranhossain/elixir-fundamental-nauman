defmodule User do
    defstruct name: "John", age: 29
end

defmodule Test do
    require User

    def main do
        john = %User{}
        IO.inspect john

        IO.puts "Another one"
        
        jane = %User{name: "Jane"}
        IO.inspect jane

        jane = %{jane | age: 31}
        IO.inspect jane

        IO.puts "Jane's age is: #{jane.age}"

        # Can't add the field which is not define in struct
        # IO.puts "Occupation"
        # jane = %{jane | occ: "Lawyer"}
        # IO.inspect jane
    end
end


Test.main 