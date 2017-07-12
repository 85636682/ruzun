task :swapping_students => :environment do
    puts "-----------------\n"
    require 'roo'
    xlsx = Roo::Spreadsheet.open("#{Rails.root}/lib/tasks/students.xlsx")
    xlsx.each_row_streaming do |row|
      begin
        status = :checkouted
        if row[5] == 1
          status = :checkouted
        elsif row[5] == 2
          status = :completed
        end
        Student.create!(
          name: row[0],
          phone: row[1].to_s,
          lesson_id: row[2],
          dayline_id: row[3],
          timeline_id: row[4],
          status: status,
          paid_in: row[6]
        )
      rescue => exception
        puts exception
      end
    end
    puts "-----------------\n"
end