class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

<<<<<<< Updated upstream
  def index 
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :last_name, :first_name, :last_name_kana, :first_name_kana, :user_birth_data_1i])
  end
end
=======
  def index
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:nickname, :last_name, :first_name, :last_name_kana, :first_name_kana,
                                             :user_birth_data_1i])
  end
end
>>>>>>> Stashed changes
