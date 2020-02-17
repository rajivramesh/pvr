namespace :send_mail do
	desc "TODO"
	task notify: :environment do
		Show.where(start_at: (Time.zone.now + 30*60)).each do |show|
			show.favourites.each do |fav|
				user_id = fav.user_id
				NotifyMailer.send_remainder(user_id, show.id).deliver_now
			end
		end
	end
end