require 'test_helper'

class ProtoPom2sControllerTest < ActionController::TestCase
  setup do
    @proto_pom2 = proto_pom2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proto_pom2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proto_pom2" do
    assert_difference('ProtoPom2.count') do
      post :create, proto_pom2: { pp_arrival_date: @proto_pom2.pp_arrival_date, pp_end_date: @proto_pom2.pp_end_date, pp_notes: @proto_pom2.pp_notes, pp_po_name: @proto_pom2.pp_po_name, pp_retail: @proto_pom2.pp_retail, pp_start_date: @proto_pom2.pp_start_date, pp_vendor: @proto_pom2.pp_vendor, pp_wholesale: @proto_pom2.pp_wholesale }
    end

    assert_redirected_to proto_pom2_path(assigns(:proto_pom2))
  end

  test "should show proto_pom2" do
    get :show, id: @proto_pom2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proto_pom2
    assert_response :success
  end

  test "should update proto_pom2" do
    patch :update, id: @proto_pom2, proto_pom2: { pp_arrival_date: @proto_pom2.pp_arrival_date, pp_end_date: @proto_pom2.pp_end_date, pp_notes: @proto_pom2.pp_notes, pp_po_name: @proto_pom2.pp_po_name, pp_retail: @proto_pom2.pp_retail, pp_start_date: @proto_pom2.pp_start_date, pp_vendor: @proto_pom2.pp_vendor, pp_wholesale: @proto_pom2.pp_wholesale }
    assert_redirected_to proto_pom2_path(assigns(:proto_pom2))
  end

  test "should destroy proto_pom2" do
    assert_difference('ProtoPom2.count', -1) do
      delete :destroy, id: @proto_pom2
    end

    assert_redirected_to proto_pom2s_path
  end
end
