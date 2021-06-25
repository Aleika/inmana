defmodule InmanaWeb.RestaurantsViewTest do
  use InmanaWeb.ConnCase

  import Phoenix.View

  alias Inmana.Restaurant
  alias InmanaWeb.RestaurantsView

  describe "render/2" do
    test "render create.json" do
      params = %{"email" => "restaurante@gmail.com", "name" => "Restaurante"}
      {:ok, restaurant} = Inmana.create_restaurant(params)

      response = render(RestaurantsView, "create.json", restaurant: restaurant)

      assert %{
               message: "Restaurant created!",
               restaurant: %Restaurant{
                 email: "restaurante@gmail.com",
                 id: _id,
                 name: "Restaurante"
               }
             } = response
    end
  end
end
