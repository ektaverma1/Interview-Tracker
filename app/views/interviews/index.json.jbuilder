json.array!(@interviews) do |interview|
  json.extract! interview, :candidate_name, :total_exp, :inteviewer_name, :interview_date, :interview_status
  json.url interview_url(interview, format: :json)
end
