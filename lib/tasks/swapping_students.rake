task :swapping_students => :environment do
    puts "-----------------\n"
    require 'roo'
    xlsx = Roo::Spreadsheet.open("#{Rails.root}/lib/tasks/students_2.xlsx")
    xlsx.each_row_streaming do |row|
      begin
        status = :checkouted
        if row[5] == 1
          status = :checkouted
        elsif row[5] == 2
          status = :completed
        end
        student = Student.where(name: "#{row[0]}").first
        if student.blank?
          Student.create!(
            name: "#{row[0]}",
            phone: "#{row[1]}",
            lesson_id: "#{row[2]}".to_i,
            dayline_id: "#{row[3]}".to_i,
            timeline_id: "#{row[4]}".to_i,
            status: status,
            paid_in: "#{row[6]}".to_f
          )
        else
          student.update_attributes!(
            phone: "#{row[1]}",
            lesson_id: "#{row[2]}".to_i,
            dayline_id: "#{row[3]}".to_i,
            timeline_id: "#{row[4]}".to_i,
            status: status,
            paid_in: "#{row[6]}".to_f
          )
        end
      rescue => exception
        puts exception
      end
    end
    puts "-----------------\n"
end