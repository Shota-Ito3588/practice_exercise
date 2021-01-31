# lesson09で作成したPersonクラスを使用します。
# Personのインスタンスの配列を管理するPersonsクラスを作成します。
# メンバ変数として以下のメンバ変数を持ちます。

# @persons        //クラスPersonのインスタンスの配列

# 前提として同姓同名のPersonのインスタンスは存在しないものとします。
# また、同姓同名の人物も追加されることはないものとします。

# ■STEP1
# コンストラクタを作成しましょう。
# コンストラクタは@personsを空の配列として初期化します。

# ■STEP2
# メソッドaddPersonを作成しましょう。
# このメソッドは引数として以下のようなハッシュを受け取ります。
# {
#     :first_name => "Tanaka"
#     :last_name => "Ichiro"
# }
# 受け取ったハッシュの:first_nameと:last_nameを使って
# Personクラスのインスタンスを作成し、
# @personsに追加しましょう。

# ■STEP3
# メソッド
# addPersonsを作成しましょう。
# addPersonsは複数の人物を一度に追加できるメソッドです。
# 以下のようなハッシュの配列を引数として受け取ります。
# [
#     {
#         :first_name => "Saito"
#         :last_name => "Takashi"
#     },
#     {
#         :first_name => "Sato"
#         :last_name => "Hirosi"
#     },
#     {
#         :first_name => "Kuroki"
#         :last_name => "Junko"
#     },
# ]
# 配列の要素数分Personのインスタンスを作成し、
# @personsに追加しましょう。

# ■STEP4
# メソッドsearchPersonを作成しましょう。
# 引数として苗字と名前を受け取り、
# @personsの中から苗字と名前が一致するPersonクラスのインスタンスを
# 戻り値として返却しましょう。
# なお、一致するインスタンスがなかった場合はnilを返却するようにしてください。

# ■STEP5
# メソッドserchPersonsByFirstNameを作成しましょう。
# 引数として苗字を受け取り、
# @personsの中から苗字が一致したすべてのPersonクラスのインスタンスを
# 配列として返却しましょう。
# なお、一致するインスタンスがなかった場合は空の配列を返却するようにしてください。

class Person
  @first_name
  @last_name
  @age
  @sex
  @birth_year
  @birth_month
  @birth_date
  @persons

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def getFullName()
    return @first_name + " " + @last_name
  end

  def setAge(age)
    @age = age
  end

  def getAge()
    return @age
  end
end

class Persons
  @persons

  def initialize()
    @persons = []
  end

  def addPerson(personName)
    createdPerson = Person.new(personName[:first_name], personName[:last_name])
    @persons.push(createdPerson)
  end

  def addPersons(personsName)
    for i in 0..personsName.length - 1
      createdPersons = Person.new(personsName[i][:first_name], personsName[i][:last_name])
      @persons.push(createdPersons)
    end
    p @persons
  end
end

persons1 = Persons.new()

addPersonName1 = {
  :first_name => "Tanaka",
  :last_name => "Ichiro",
}
addPersonName2 = {
  :first_name => "Sato",
  :last_name => "Jiro",
}

addPersonsName1 = [
  {
    :first_name => "Saito",
    :last_name => "Takashi",
  },
  {
    :first_name => "Sato",
    :last_name => "Hirosi",
  },
  {
    :first_name => "Kuroki",
    :last_name => "Junko",
  },
]

persons1.addPerson(addPersonName1)
persons1.addPerson(addPersonName2)

persons1.addPersons(addPersonsName1)
