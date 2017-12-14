require 'test_helper'

class NotadeaulasControllerTest < ActionController::TestCase
  setup do
    @notadeaula = notadeaulas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notadeaulas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notadeaula" do
    assert_difference('Notadeaula.count') do
      post :create, notadeaula: { ano: @notadeaula.ano, autor: @notadeaula.autor, data: @notadeaula.data, disciplina: @notadeaula.disciplina, semestre: @notadeaula.semestre, texto: @notadeaula.texto, titulo: @notadeaula.titulo }
    end

    assert_redirected_to notadeaula_path(assigns(:notadeaula))
  end

  test "should show notadeaula" do
    get :show, id: @notadeaula
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notadeaula
    assert_response :success
  end

  test "should update notadeaula" do
    patch :update, id: @notadeaula, notadeaula: { ano: @notadeaula.ano, autor: @notadeaula.autor, data: @notadeaula.data, disciplina: @notadeaula.disciplina, semestre: @notadeaula.semestre, texto: @notadeaula.texto, titulo: @notadeaula.titulo }
    assert_redirected_to notadeaula_path(assigns(:notadeaula))
  end

  test "should destroy notadeaula" do
    assert_difference('Notadeaula.count', -1) do
      delete :destroy, id: @notadeaula
    end

    assert_redirected_to notadeaulas_path
  end
end
