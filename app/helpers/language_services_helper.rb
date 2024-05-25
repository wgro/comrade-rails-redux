module LanguageServicesHelper

  # Returns the provided `description` if it is not nil or empty, otherwise returns a dash ("-").
  #
  # @param description [String] the description to be checked
  # @return [String] the provided `description` if it is not nil or empty, otherwise returns a dash ("-")
  def maybe_description(description)
    if description
      description
    else
      "-"
    end
  end
end
