task :swapping_students => :environment do
    Student.where("phone LIKE ?", '%Roo::Excelx::Cell::Empty%').each do |student|
        student.update(phone: "")
    end
end