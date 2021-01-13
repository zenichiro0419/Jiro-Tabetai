module RemakeParams
  extend ActiveSupport::Concern

  def params_int(model_params)
    model_params.each do |key, value|
      model_params[key] = value.to_i if integer_string?(value)
    end
  end

  private

  def integer_string?(str)
    Integer(str)
    true
  rescue ArgumentError
    false
  end
end
