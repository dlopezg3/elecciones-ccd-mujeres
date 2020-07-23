class Candidates::ParamaterSanitizerController < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:account_update, keys: [
                                   :organization,
                                   :sector,
                                   :name,
                                   :last_name,
                                   :id,
                                   :place_of_birth,
                                   :place_of_residence,
                                   :address,
                                   :residence_area_type,
                                   :phone,
                                   :secondary_phone,
                                   :email,
                                   :education_level,
                                   :expertise,
                                   :value_proposition,
                                   :disclaimer ])
  end
end
