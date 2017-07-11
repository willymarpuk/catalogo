require 'test_helper'

class ProductosDetallesControllerTest < ActionController::TestCase
  setup do
    @producto_detalle = productos_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_detalle" do
    assert_difference('ProductoDetalle.count') do
      post :create, producto_detalle: { fecha_compra: @producto_detalle.fecha_compra, precio_compra: @producto_detalle.precio_compra, producto_id: @producto_detalle.producto_id, proveedor_id: @producto_detalle.proveedor_id }
    end

    assert_redirected_to producto_detalle_path(assigns(:producto_detalle))
  end

  test "should show producto_detalle" do
    get :show, id: @producto_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_detalle
    assert_response :success
  end

  test "should update producto_detalle" do
    patch :update, id: @producto_detalle, producto_detalle: { fecha_compra: @producto_detalle.fecha_compra, precio_compra: @producto_detalle.precio_compra, producto_id: @producto_detalle.producto_id, proveedor_id: @producto_detalle.proveedor_id }
    assert_redirected_to producto_detalle_path(assigns(:producto_detalle))
  end

  test "should destroy producto_detalle" do
    assert_difference('ProductoDetalle.count', -1) do
      delete :destroy, id: @producto_detalle
    end

    assert_redirected_to productos_detalles_path
  end
end
