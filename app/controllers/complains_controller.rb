class ComplainsController < ApplicationController
  before_action :set_complain, only: %i[ show edit update destroy ]

  # GET /complains or /complains.json
  def index
    @complains = Complain.all
  end

  # GET /complains/1 or /complains/1.json
  def show
  end

  # GET /complains/new
  def new
    @complain = Complain.new
  end

  # GET /complains/1/edit
  def edit
  end

  # POST /complains or /complains.json
  def create
    @complain = Complain.new(complain_params)

    respond_to do |format|
      if @complain.save
        format.html { redirect_to complain_url(@complain), notice: "Complain was successfully created." }
        format.json { render :show, status: :created, location: @complain }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @complain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complains/1 or /complains/1.json
  def update
    respond_to do |format|
      if @complain.update(complain_params)
        message = 
          {
            "type": "flex",
      "altText": "ข้อความตอบกลับจากแอดมิน",
      "contents": {
        "type": "bubble",
        "hero": {
          "type": "image",
          "url": "https://scdn.line-apps.com/n/channel_devcenter/img/fx/01_1_cafe.png",
          "size": "full",
          "aspectRatio": "20:13",
          "aspectMode": "cover"
        },
        "body": {
          "type": "box",
          "layout": "vertical",
          "contents": [

            {
              "type": "box",
              "layout": "vertical",
              # "margin": "lg",
              "spacing": "sm",
              "contents": [
                {
                  "type": "box",
                  "layout": "baseline",
                  "spacing": "sm",
                  "contents": [
                    {
                      "type": "text",
                      "text": "หัวข้อ",
                      "color": "#aaaaaa",
                      "size": "sm",
                      "flex": 3
                    },
                    {
                      "type": "text",
                      "text": @complain.section,
                      "wrap": true,
                      "color": "#666666",
                      "size": "sm",
                      "flex": 3
                    }
                  ]
                },
                {
                  "type": "box",
                  "layout": "baseline",
                  "spacing": "sm",
                  "contents": [
                    {
                      "type": "text",
                      "text": "รายละเอียด",
                      "color": "#aaaaaa",
                      "size": "sm",
                      "flex": 3
                    },
                    {
                      "type": "text",
                      "text": @complain.body,
                      "wrap": true,
                      "color": "#666666",
                      "size": "sm",
                      "flex": 3
                    }
                  ]
                },
                {
                  "type": "box",
                  "layout": "baseline",
                  "spacing": "sm",
                  "contents": [
                    {
                      "type": "text",
                      "text": "ข้อความตอบกลับ",
                      "color": "#aaaaaa",
                      "size": "sm",
                      "flex": 3
                    },
                    {
                      "type": "text",
                      "text": @complain.reply,
                      "wrap": true,
                      "color": "#666666",
                      "size": "sm",
                      "flex": 3
                    }
                  ]
                }
              ]
            }
          ]
        }
      }

          }
        
        client = Line::Bot::Client.new { |config|
            config.channel_secret = "139c143c0618ba4d7827d1260e11dcb0"
            config.channel_token = "QIesJhRg7ms6O1JLTzEmOz485/19FhMG7cWdL65E3Gb88RgAqOvTCxfUkO/afMp1lPgI9paQ5XnjwwM/Y4k+Iidn/aocD7oaU6HBGXBeoD9G4oarK8YDHZg+B1jpZQoQ4MTcjZ8KCC1EsgfW6lj3MQdB04t89/1O/w1cDnyilFU="
        }
        response = client.push_message(@complain.user_id, message)
        p response

        format.html { redirect_to complain_url(@complain), notice: "Complain was successfully updated." }
        format.json { render :show, status: :ok, location: @complain }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @complain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complains/1 or /complains/1.json
  def destroy
    @complain.destroy

    respond_to do |format|
      format.html { redirect_to complains_url, notice: "Complain was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complain
      @complain = Complain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complain_params
      params.require(:complain).permit(:yname, :section, :body, :user_id, :reply)
    end
end
