module MateriaisHelper
require 'searchlogic'
#def busca(nome_busca)
 #@material = Material.find(:all, :conditions => {:name_contains => nome_busca })
 #return @material
#end


def busca2(termo)
@material = Material.nome_like_all(termo)
 return @material
end
end

