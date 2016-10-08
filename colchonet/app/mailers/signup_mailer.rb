class SignupMailer < ActionMailer::Base
    default :from => 'no-reply@colcho.net'

    def confirm_email(user)
        @user = user
        @confirmation_link = confirmation_url({
                    token: @user.confirmation_token,
                    locale: "pt-BR"
        })

        mail({
            :to => user.email,
            :bcc => ['sign ups <signups@colcho.ne>'],
            :subject => I18n.t('signup_mailer.confirm_email.subject')
        })
    end
end
