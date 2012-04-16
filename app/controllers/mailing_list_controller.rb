class MailingListController < ApplicationController
    def subscribe
        gb = Gibbon.new
        @lists = gb.lists
        @r = gb.list_subscribe({:id => ENV['MC_NEWSLETTER_ID'], 
                                :email_address => params['email'],
                                :merge_var => {:EMAIL => params['email'],
                                               :FNAME => params['first_name'],
                                               :LNAME => params['last_name']}})
        @header = "Failed!"
        @header = "Subscribed!" if @r == true
    end
end
