defmodule ElixirTalkWeb.PageViewTest do
  use ElixirTalkWeb.ConnCase, async: true

  import ElixirTalkWeb.PageView

  describe "markdown tests" do
    test "a url is converted to a link" do
      expected = "[http://foo.com](http://foo.com)"

      result =
        "http://foo.com"
        |> replace_links

      assert expected == result
    end

    test "multiple urls are converted to links" do
      input = """
** SHOW NOTES **
* https://github.com/ElixirTalk/elixirtalk/issues/44
* https://github.com/akoutmos/pharams
* https://github.com/vic/params
* https://github.com/jonasschmidt/ex_json_schema
* https://github.com/bitwalker/libcluster
* https://www.youtube.com/watch?v=L2_MUD16EIk
"""

      expected = """
** SHOW NOTES **
* [https://github.com/ElixirTalk/elixirtalk/issues/44](https://github.com/ElixirTalk/elixirtalk/issues/44)
* [https://github.com/akoutmos/pharams](https://github.com/akoutmos/pharams)
* [https://github.com/vic/params](https://github.com/vic/params)
* [https://github.com/jonasschmidt/ex_json_schema](https://github.com/jonasschmidt/ex_json_schema)
* [https://github.com/bitwalker/libcluster](https://github.com/bitwalker/libcluster)
* [https://www.youtube.com/watch?v=L2_MUD16EIk](https://www.youtube.com/watch?v=L2_MUD16EIk)
"""

      result =
        input
        |> replace_links

      assert expected == result
    end
  end
end
