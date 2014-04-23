require 'test_helper'

class ResellersControllerTest < ActionController::TestCase
  setup do
    @reseller = resellers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resellers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reseller" do
    assert_difference('Reseller.count') do
      post :create, reseller: { Management_name_en: @reseller.Management_name_en, Management_name_fa: @reseller.Management_name_fa, address_en: @reseller.address_en, address_fa: @reseller.address_fa, phone: @reseller.phone, title_en: @reseller.title_en, title_fa: @reseller.title_fa }
    end

    assert_redirected_to reseller_path(assigns(:reseller))
  end

  test "should show reseller" do
    get :show, id: @reseller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reseller
    assert_response :success
  end

  test "should update reseller" do
    patch :update, id: @reseller, reseller: { Management_name_en: @reseller.Management_name_en, Management_name_fa: @reseller.Management_name_fa, address_en: @reseller.address_en, address_fa: @reseller.address_fa, phone: @reseller.phone, title_en: @reseller.title_en, title_fa: @reseller.title_fa }
    assert_redirected_to reseller_path(assigns(:reseller))
  end

  test "should destroy reseller" do
    assert_difference('Reseller.count', -1) do
      delete :destroy, id: @reseller
    end

    assert_redirected_to resellers_path
  end
end
