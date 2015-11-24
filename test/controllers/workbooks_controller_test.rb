require 'test_helper'

class WorkbooksControllerTest < ActionController::TestCase
  setup do
    @workbook = workbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workbook" do
    assert_difference('Workbook.count') do
      post :create, workbook: { clientid: @workbook.clientid, formid: @workbook.formid, formver: @workbook.formver, memberid: @workbook.memberid, q001qatext: @workbook.q001qatext, q001qlong: @workbook.q001qlong, q001qshort: @workbook.q001qshort, q001section: @workbook.q001section, title: @workbook.title, user_id: @workbook.user_id }
    end

    assert_redirected_to workbook_path(assigns(:workbook))
  end

  test "should show workbook" do
    get :show, id: @workbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workbook
    assert_response :success
  end

  test "should update workbook" do
    patch :update, id: @workbook, workbook: { clientid: @workbook.clientid, formid: @workbook.formid, formver: @workbook.formver, memberid: @workbook.memberid, q001qatext: @workbook.q001qatext, q001qlong: @workbook.q001qlong, q001qshort: @workbook.q001qshort, q001section: @workbook.q001section, title: @workbook.title, user_id: @workbook.user_id }
    assert_redirected_to workbook_path(assigns(:workbook))
  end

  test "should destroy workbook" do
    assert_difference('Workbook.count', -1) do
      delete :destroy, id: @workbook
    end

    assert_redirected_to workbooks_path
  end
end
