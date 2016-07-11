class CSVImport
  require 'csv'

  def run(filepath)
    lines = CSV.import(filepath)
    if lines.blank?
      puts "CSV is blank."
      return
    end
    lines.shift
    lines.each do |line|
      incident_obj = {
        date: lines[0],
        state: lines[1],
        city: lines[2],
        address: lines[3],
        numKilled: lines[4],
        numInjured: lines[5]
      }

      Incident.create(incident_obj)
    end
  end
end
