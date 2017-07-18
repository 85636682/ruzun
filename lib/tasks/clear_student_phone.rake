task :clear_student_phone => :environment do
    Student.where("phone LIKE ?", '%Roo::Excelx::Cell::Empty%').each do |student|
        student.update(phone: "")
    end
end