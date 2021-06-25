defmodule InmanaWeb.RestaurantsControllerTest do
  use InmanaWeb.ConnCase

  describe "create/2" do
    test "when all params are valid, creates the restaurant", %{conn: conn} do
      params = %{"email" => "restaurante@gmail.com", "name" => "Restaurante"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "message" => "Restaurant created!",
               "restaurant" => %{
                 "email" => "restaurante@gmail.com",
                 "id" => _id,
                 "name" => "Restaurante"
               }
             } = response
    end

    test "when there are invalid params, returns an error", %{conn: conn} do
      params = %{"email" => "restaurante@gmail.com"}

      expected_response = %{"message" => %{"name" => ["can't be blank"]}}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response == expected_response
    end
  end
end
