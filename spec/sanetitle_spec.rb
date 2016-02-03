require 'spec_helper'

describe SaneTitle do
    
  it 'SaneTitle has a version number' do
    expect(SaneTitle::VERSION).not_to be nil
  end
  
  it 'SaneTitle::Sanifier.new should raise an ArgumentError (Invalid string) if initialization parameter title is NOT a String' do
    expect {
      cl = SaneTitle::Sanifier.new(2)
    }.to raise_error(ArgumentError,'Invalid string.')
  end

  it 'SaneTitle::Sanifier.new should raise an ArgumentError (Invalid string) if initialization parameter title is an empty String' do
    expect {
      cl = SaneTitle::Sanifier.new("")
    }.to raise_error(ArgumentError,'Invalid string.')
  end  
  
  it 'SaneTitle::Sanifier.to_lower should return the string given in lower case' do
    cl = SaneTitle::Sanifier.new(" ")
    res = cl.to_lower("Este é um exemplo de string (teste) *&%$ que será corrigida no curso da programação!")
    expect(res).to eq("este é um exemplo de string (teste) *&%$ que será corrigida no curso da programação!")
  end
  
  it 'SaneTitle::Sanifier.spaces_to_underlines should change the spaces into hyfens' do
    cl = SaneTitle::Sanifier.new(" ")
    res = cl.spaces_to_underlines("Este é um exemplo de string (teste) *&%$ que será corrigida no curso da programação!")
    expect(res).to eq("Este-é-um-exemplo-de-string-(teste)-*&%$-que-será-corrigida-no-curso-da-programação!")
  end
  
  it 'SaneTitle::Sanifier.remove_special_chars should return the title with no special chars' do
    cl = SaneTitle::Sanifier.new(" ")
    res = cl.remove_special_chars("Este é um exemplo de string (teste) *&%$ que será corrigida no curso da programação!")
    expect(res).to eq("Este e um exemplo de string teste que sera corrigida no curso da programacao")        
  end
  
  it 'SaneTitle::Sanifier.result should return a correct string when all steps are finished' do
    cl = SaneTitle::Sanifier.new("Este é um exemplo de string (teste) *&%$ que será corrigida no curso da programação!")
    res = cl.result
    expect(res).to eq("este-e-um-exemplo-de-string-teste-que-sera-corrigida-no-curso-da-programacao")    
  end
  
  it 'SaneTitle::Sanifier.result_imp should return a string limited to lim and WITHOUT .html at the end' do
    cl = SaneTitle::Sanifier.new("Este é um exemplo de string (teste) *&%$ que será corrigida no curso da programação!")
    res = cl.result_imp(25,false)
    expect(res).to eq("este-e-um-exemplo-de-stri")            
  end

  it 'SaneTitle::Sanifier.result_imp should return a string limited to lim and WITH .html at the end' do
    cl = SaneTitle::Sanifier.new("Este é um exemplo de string (teste) *&%$ que será corrigida no curso da programação!")
    res = cl.result_imp(25,true)
    expect(res).to eq("este-e-um-exemplo-de-stri.html")            
  end
  
end
