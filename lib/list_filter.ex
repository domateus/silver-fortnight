defmodule ListFilter do
  def filter(list) do
    filtered =
      Enum.flat_map(
        list,
        fn x ->
          case Integer.parse(x) do
            {int, _rest} -> [int]
            :error -> []
          end
        end
      )

    Enum.sum(Enum.map(filtered, fn x -> rem(x, 2) end))
  end
end
