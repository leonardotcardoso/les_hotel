require 'spec_helper'

describe "hospedes/edit" do
  before(:each) do
    @hospede = assign(:hospede, stub_model(Hospede,
      :cpf => 1,
      :nome => "MyString",
      :logradouro => "MyString",
      :numero => "MyString",
      :complemento => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString"
    ))
  end

  it "renders the edit hospede form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hospede_path(@hospede), "post" do
      assert_select "input#hospede_cpf[name=?]", "hospede[cpf]"
      assert_select "input#hospede_nome[name=?]", "hospede[nome]"
      assert_select "input#hospede_logradouro[name=?]", "hospede[logradouro]"
      assert_select "input#hospede_numero[name=?]", "hospede[numero]"
      assert_select "input#hospede_complemento[name=?]", "hospede[complemento]"
      assert_select "input#hospede_bairro[name=?]", "hospede[bairro]"
      assert_select "input#hospede_cidade[name=?]", "hospede[cidade]"
      assert_select "input#hospede_estado[name=?]", "hospede[estado]"
    end
  end
end
