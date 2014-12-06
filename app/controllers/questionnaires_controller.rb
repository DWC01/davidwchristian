class QuestionnairesController < ApplicationController
  before_action :set_questionnaire, only: [:show, :edit, :update, :destroy]

  # GET /questionnaires
  def index
    @questionnaires = Questionnaire.all
  end

  # GET /questionnaires/1
  def show
    @questionnaires = Questionnaire.all
  end

  # GET /questionnaires/new
  def new
    @questionnaire = Questionnaire.new
    render layout: 'no-sidebar'
  end

  # GET /questionnaires/1/edit
  def edit
  end

  # POST /questionnaires
  def create
    @questionnaire = Questionnaire.new(questionnaire_params)

    if @questionnaire.save
      redirect_to @questionnaire, notice: 'questionnaire was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /questionnaires/1
  def update
    if @questionnaire.update(questionnaire_params)
      redirect_to @questionnaire, notice: 'questionnaire was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /questionnaires/1
  def destroy
    @questionnaire.destroy
    redirect_to questionnaires_url, notice: 'questionnaire was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire
      @questionnaire = Questionnaire.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def questionnaire_params 
     params.require(:questionnaire).permit(
      :company, :invested, :age, :visits_desktop, :visits_mobile,
      :features_visited_1, :features_visited_2, :features_visited_3,
      :features_visited_4, :features_visited_5,  
      :delightful_features_1, :delightful_features_2,
      :delightful_features_3, :delightful_features_4, 
      :delightful_features_5, :annoying_features_1, 
      :annoying_features_2, :annoying_features_3, 
      :annoying_features_4, :annoying_features_5, 
      :feature_requests, :open_feedback)
    end
end
