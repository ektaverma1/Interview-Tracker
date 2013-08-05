class Interview < ActiveRecord::Base

	validates :candidate_name, presence: true
	validates :inteviewer_name, presence: true
	validates :total_exp, presence: true
	validates :interview_date, presence: true
	validates :interview_status, presence: true

	def self.search(search)
	  if search
	    find(:all, :conditions => ['candidate_name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end

end
