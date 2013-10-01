require 'spec_helper'

describe "hospedes/index" do
  before(:each) do
    assign(:hospedes, [
      stub_model(Hospede,
        :cpf => 1,
        :nome => "Nome",
        :logradouro => "Logradouro",
        :numero => "Numero",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado"
      ),
      stub_model(Hospede,
        :cpf => 1,
        :nome => "Nome",
        :logradouro => "Logradouro",
        :numero => "Numero",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado"
      )
    ])
  end

  it "renders a list of hospedes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Logradouro".to_s, :count => 2
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
  end
  
  it "erases an hospede upon clicking in delte" do
    
  end
  
end
