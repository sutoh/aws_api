class Ec2DescribeRegionsController < ApplicationController
  def index
    #@region = Ec2.region(`ec2-describe-regions`)
    @region = AWS.ec2.regions.inject({}) { |m, r| m[r.name] = r.endpoint; m }
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  
end
