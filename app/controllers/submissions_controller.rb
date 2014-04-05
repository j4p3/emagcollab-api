class SubmissionsController < ApplicationController
  def create
    @submission = Submission.new(submission_params.except :responses)

    if @submission.save
      submission_params[:responses].each do |response, i|
        @submission.responses.create(content: response, question_id: i)
      end
    end
  end

  def test
    logger.debug __method__.to_s
    logger.debug Rails.env
    logger.debug ENV['S3_BUCKET_NAME']
    logger.debug LineOfLife::Application.config.paperclip_defaults
  end

  private

    def submission_params
      params.require(:submission).permit(:email,:name,:pickup,:image,:type_id,:transform_id,responses:[])
    end
end