class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    # multiple tags
    @tags = Tag.where(id: params[:plant_tag][:tag_id])
    #iterate the tags
    @tags.each do |tag|
      plant_tag = PlantTag.new(plant: @plant, tag: tag)
      plant_tag.save
    end
    redirect_to garden_path(@plant.garden)




    # one single tag
    # @plant_tag = PlantTag.new(plant_tag_params)
    # @plant_tag.plant = @plant
    # if @plant_tag.save
    #   redirect_to garden_path(@plant.garden)
    # else
    #   render :new
    # end
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:tag_id)
  end



end
