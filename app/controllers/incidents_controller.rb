class IncidentsController < InheritedResources::Base

  private

    def incident_params
      params.require(:incident).permit(:name, :duration)
    end
end

