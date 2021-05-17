require "application_system_test_case"

class TrocaProdutosTest < ApplicationSystemTestCase
  setup do
    @troca_produto = troca_produtos(:one)
  end

  test "visiting the index" do
    visit troca_produtos_url
    assert_selector "h1", text: "Troca Produtos"
  end

  test "creating a Troca produto" do
    visit troca_produtos_url
    click_on "New Troca Produto"

    fill_in "Cliente", with: @troca_produto.cliente_id
    fill_in "Estado", with: @troca_produto.estado
    fill_in "Produto", with: @troca_produto.produto_id
    click_on "Create Troca produto"

    assert_text "Troca produto was successfully created"
    click_on "Back"
  end

  test "updating a Troca produto" do
    visit troca_produtos_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @troca_produto.cliente_id
    fill_in "Estado", with: @troca_produto.estado
    fill_in "Produto", with: @troca_produto.produto_id
    click_on "Update Troca produto"

    assert_text "Troca produto was successfully updated"
    click_on "Back"
  end

  test "destroying a Troca produto" do
    visit troca_produtos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Troca produto was successfully destroyed"
  end
end
