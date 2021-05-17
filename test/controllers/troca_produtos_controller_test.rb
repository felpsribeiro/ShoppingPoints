require "test_helper"

class TrocaProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @troca_produto = troca_produtos(:one)
  end

  test "should get index" do
    get troca_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_troca_produto_url
    assert_response :success
  end

  test "should create troca_produto" do
    assert_difference('TrocaProduto.count') do
      post troca_produtos_url, params: { troca_produto: { cliente_id: @troca_produto.cliente_id, estado: @troca_produto.estado, produto_id: @troca_produto.produto_id } }
    end

    assert_redirected_to troca_produto_url(TrocaProduto.last)
  end

  test "should show troca_produto" do
    get troca_produto_url(@troca_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_troca_produto_url(@troca_produto)
    assert_response :success
  end

  test "should update troca_produto" do
    patch troca_produto_url(@troca_produto), params: { troca_produto: { cliente_id: @troca_produto.cliente_id, estado: @troca_produto.estado, produto_id: @troca_produto.produto_id } }
    assert_redirected_to troca_produto_url(@troca_produto)
  end

  test "should destroy troca_produto" do
    assert_difference('TrocaProduto.count', -1) do
      delete troca_produto_url(@troca_produto)
    end

    assert_redirected_to troca_produtos_url
  end
end
