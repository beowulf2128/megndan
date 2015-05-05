class Gijoe < ActiveRecord::Base
  def self.safe_params(params)
    params.require(:gijoe).permit(:name, :year, :yojoe_url, :condition)
  end
end
