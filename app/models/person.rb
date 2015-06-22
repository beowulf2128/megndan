class Person < ActiveRecord::Base
  def self.safe_params(params)
    params.require(:person).permit(:first_name, :middle_name, :last_name, :birthdate, :gender)
  end

end
