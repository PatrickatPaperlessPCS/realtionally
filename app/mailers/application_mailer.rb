class ApplicationMailer < ActionMailer::Base
  default from: "notifications@relationally.net"
  layout 'mailer'
end
