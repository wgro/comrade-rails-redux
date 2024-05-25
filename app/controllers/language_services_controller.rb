class LanguageServicesController < ApplicationController
  def index
    @language_services = LanguageService.all
    render inertia: 'language_services/Index', props: { language_services: @language_services }
  end

  private

  def language_service_params
    params.require(:language_service).permit(:name, :description)
  end
end
