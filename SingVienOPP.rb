class Man
    attr_accessor :name, :hair ,:gender , :phone, :email, :nation
    attr_accessor :height, :weight, :age
    def initialize(name,gender,hair,height,weight,age,phone,email,nation)          
            @name = name    
            @gender = gender    
            @hair = hair
            @height = height
            @weight = weight
            @phone =  phone
            @email = email 
            @age = age
            @nation = nation 
    end 
    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Tóc: #{lan}, Chiều cao: #{height}, Cân nặng: #{height}, Số điện thoại: #{phone}, Email: #{email}, Dân tộc: #{nation}\n"
    end 
end 

class Student < Man
    attr_accessor :grade1, :grade2, :grade3, :average 
    def diem(grade1,grade2,grade3)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
        @average = [@grade1, @grade2, @grade3].inject(&:+).to_f/3
    end  
    def show
        puts "Tên : #{name}, Giới tính: #{gender},  Tuổi: #{age}, Tóc: #{hair}, Chiều cao: #{height}(cm), Cân nặng: #{height}(kg), Số điện thoại: #{phone}, Email: #{email}, Dân tộc: #{nation}, Điểm trung bình: #{average}\n"
    end
end
arr = Array.new()
Student1 = Student.new("Quốc Toản","Nam","Xám","1m75","45kg","21","9845973846","aressssssg@gmail.com","Kinh")
Student1.diem(8,7,10)
arr.push(Student1)
Student2 = Student.new("Thái Công","Nữ","Hồng","1m8","51kg","28","018356789","toan001@gmail.com","Kinh")
Student2.diem(6,4,3)
arr.push(Student2)
Student3 = Student.new("Huy Hoàng","Nam","Trắng","1m68","42kg","23","7346829847","acquyprovip@gmail.com","Kinh")
Student3.diem(2,6,10)
arr.push(Student3)
arr.each_index {
    |index|
    puts "#{arr[index].show()}"
}
print "Danh sách sinh viên sau khi sắp xếp:\n"
for x in arr.sort_by{|stu| [stu.average]}.reverse do
    puts "#{x.show}"
end
