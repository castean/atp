require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { address: @client.address, cel_phone: @client.cel_phone, client_number: @client.client_number, company_name: @client.company_name, contact_name: @client.contact_name, email: @client.email, last_name: @client.last_name, name: @client.name, phone: @client.phone, second_last_name: @client.second_last_name, zip_code: @client.zip_code }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    put :update, id: @client, client: { address: @client.address, cel_phone: @client.cel_phone, client_number: @client.client_number, company_name: @client.company_name, contact_name: @client.contact_name, email: @client.email, last_name: @client.last_name, name: @client.name, phone: @client.phone, second_last_name: @client.second_last_name, zip_code: @client.zip_code }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
