class CheckReg
  attr_accessor :regexp

  def proverka
    regexp =~ /\A(@{1,2}[a-z][a-z0-9_]*|[a-z][a-z0-9_]+|[A-Z]\w+|[A-Z][A-Z0-9_]+)\Z/
   end
end
