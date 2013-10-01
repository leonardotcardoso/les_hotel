require 'spec_helper'

describe "hospedes/show" do
  before(:each) do
    @hospede = assign(:hospede, stub_model(Hospede,
      :cpf => 1,
      :nome => "Nome",
      :logradouro => "Logradouro",
      :numero => "Numero",
      :complemento => "Complemento",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :estado => "Estado"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Nome/)
    rendered.should match(/Logradouro/)
    rendered.should match(/Numero/)
    rendered.should match(/Complemento/)
    rendered.should match(/Bairro/)
    rendered.should match(/Cidade/)
    rendered.should match(/Estado/)
  end
end
