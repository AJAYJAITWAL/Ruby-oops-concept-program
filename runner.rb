module Runner
  def self.included(base)
    base.include(ObjectMethods)
    base.extend(ClassMethods)
  end

  def initialize(a)
    process
  end

  def call
    C.new(4)
    A.new(5).process
  end

   module ObjectMethods
    def run(a)
     a.new(65)
    end
  end

  module ClassMethods
    def run(a)
    end
  end
end

# do NOT change code below
# do NOT use global scopes or ObjectSpace

class A
  include Runner

  def process
    puts 'A'
    {nameA: 'A'}
  end
end

class B
  include Runner

   run A

  def process
    puts 'B'
    {nameB: 'B'}
  end
end

class C < B
  def process
    puts 'C'
    {nameC: 'C'}
  end
end

class D < B
  run C

  def process
    puts 'D'
    {nameD: 'D'}
    super

    run A
  end

end

D.new({asd: 33}).()

#output there
# D
# B
# A
# C
# A
# A 

client_id
1082989528549-3f31605l2t5k4s28gjvvobpbs5so1bv8.apps.googleusercontent.com

client_secret
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