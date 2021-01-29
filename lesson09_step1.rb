# クラス[Person]を作成します。
# クラス[Person]は以下のメンバ変数を持ちます。

# @first_name         // 苗字(文字列)
# @last_name          // 名前(文字列)
# @age                // 年齢(数値)
# @sex                // 性別("男性" or "女性")
# @birth_year         // 誕生年(数値)
# @birth_month        // 誕生月(数値)
# @birth_date         // 誕生日(数値)

# ■STEP1
# クラスpersonのコンストラクタを作成しましょう。
# コンストラクタは苗字のデータと名前のデータを受け取り。
# メンバ変数@first_nameと@last_nameに代入します。

# ■STEP2
# メソッドgetFullNameを作成しましょう。
# このメソッドは@first_nameと@last_nameを結合したものを戻り値として返すメソッドです。
# （※@first_nameと@last_nameの間は半角スペースを一つあけましょう。）

# ■STEP3
# メソッドsetAgeを作成しましょう。
# setAgeは引数として数値を受け取り、受け取った数値を@ageに代入するメソッドです。

# ■STEP4
# メソッドgetAgeを作成しましょう。
# getAgeは@ageの値を戻り値として返すメソッドです。

# ■STEP5
# メソッドsetBirthDayを作成しましょう。
# setBirthDayは引数として誕生年、誕生月、誕生日を受け取り、
# 受け取った値を@birth_year,@birth_month,@birth_dateに代入するメソッドです。

# ■STEP6
# メソッドcheckAgeを作成しましょう。
# checkAgeは現在の年、月、日を引数として受け取り、
# 引数として受け取った年、月、日とメンバ変数の@birth_year,@birth_month,@birth_dateを使用し、
# メンバ変数の@ageに格納されている年齢が正しいかどうかをチェックするメソッドです。
# 年齢が正しければtrueを
# 年齢が正しくなければfalseを返しましょう。

require "date"

class Person
  @first_name
  @last_name
  @age
  @sex
  @birth_year
  @birth_month
  @birth_date

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

  def setBirthDay(birth_year, birth_month, birth_date)
    @birth_year = birth_year
    @birth_month = birth_month
    @birth_date = birth_date
  end

  def getBirthDay()
    return @birth_year, @birth_month, @birth_date
  end

  # checkAgeは現在の年、月、日を引数として受け取り、
  # 引数として受け取った年、月、日とメンバ変数の@birth_year,@birth_month,@birth_dateを使用し、
  def checkAge(year, month, date)
    # 引数として受け取った年、月、日とメンバ変数の@birth_year,@birth_month,@birth_dateを使用し、
    # メンバ変数の@ageに格納されている年齢が正しいかどうかをチェックするメソッドです。
    # 年齢が正しければtrueを
    # 年齢が正しくなければfalseを返しましょう。
    # 1.checAgeの引数として受け取った年月日を元に年齢を出す
    #　　　@birth_yearからcheckAgeのyearを引く
    #　　　@birth_year 1985  @birth_month 8  @birth_date 20
    #　　　year        1986  month        8  date        19 

    #　　　@birth_year 1985  @birth_month 8  @birth_date 20
    #　　　year        1986  month        7  date        15 

    #　　　@birth_year 1985  @birth_month 8  @birth_date 20
    #　　　year        1986  month        9  date        15
    
    #　　　@birth_year 1985  @birth_month 8  @birth_date 20
    #　　　year        1986  month        7  date        30 
    if year - @birth_year > 0 && month - @birth_month > 0 && date - @birth_date > 0
       trueAge = year - @birth_year
    elsif year - @birth_year < 0 && month - @birth_month < 0 && date - @birth_date < 0
        trueAge = year - @birth_year - 1
    else
        trueAge = year - @birth_year
    end
    # 2.1の年齢から@ageの値を引き算する
    # 3.0であればtrue、0でなければfalseを返す
    trueAge == @age
    return true
    elsif trueAge != @age
     return false 

  end

  #   if @nowTime - @age = 0
  #     puts true
  #   elsif @nowTime - @age != 0
  #     puts false
  #   end
end

person1 = Person.new("tanaka", "kenichi")
person1.setAge(35)
person1.setBirthDay(1985, 8, 20)
p person1.getFullName()
p person1.getAge()
p person1.getBirthDay()

# ■STEP6
# メソッドcheckAgeを作成しましょう。
# checkAgeは現在の年、月、日を引数として受け取り、
# 引数として受け取った年、月、日とメンバ変数の@birth_year,@birth_month,@birth_dateを使用し、
# メンバ変数の@ageに格納されている年齢が正しいかどうかをチェックするメソッドです。
# 年齢が正しければtrueを
# 年齢が正しくなければfalseを返しましょう。
