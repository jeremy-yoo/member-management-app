class MemberController < ApplicationController
  protect_from_forgery

  def create
    member = Member.create(member_params)
    render json: member
  end

  def index
    render json: Member.all
  end

  def update
    member = Member.find(params[:id])
    dog.update_attributes(dog_params)
    render json: dog
  end

  def destroy
    Member.destroy(params[:id])
  end

  def member_params
    params.require(:member).permit(:name, :age)
  end
end
