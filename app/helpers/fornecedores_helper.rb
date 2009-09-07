module FornecedoresHelper

  def valor_total
      @fornecedor.materiais.each do |material|
     valortotal += material.valor
   end
   return valortotal
  end
end

