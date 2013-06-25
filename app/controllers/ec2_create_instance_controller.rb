class Ec2CreateInstanceController < ApplicationController
  def index
    @ami = "ami-a948c3a8"
    @create = AWS.ec2.instances.create(image_id: @ami)
    @list = AWS.ec2.instances.inject({}) { |m, i| m[i.id] = i.status; m }
    
    respond_to do |format|
      format.html 
    end
  end
end
