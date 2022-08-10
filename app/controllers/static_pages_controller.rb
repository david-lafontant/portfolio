class StaticPagesController < ApplicationController
  require 'json'

  def project
    @profile_data = JSON.parse(File.read('app/assets/javascripts/data.json'))
    @profile_data = @profile_data['data']['repositoryOwner']['itemShowcase']['items']['edges']

    @profile_data
  end

  def about; end

  def home; end

  def resume
    send_file "#{Rails.root}/app/assets/docs/Resume.pdf", type: 'application/pdf', x_sendfile: true
  end
end
