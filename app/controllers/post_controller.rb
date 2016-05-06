class PostController < ApplicationController
  before_action :authenticate_user!, only: [:new,:create,:edit,:update,:destroy]
  
  def index
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def new
  end
  
  def create
    a = Post.new
    a.user_id = current_user.id
    a.title = params[:title]
    a.content = params[:content]
    a.gako = params[:gako]
    a.img = params[:img]
    a.dday = params[:dday]
    a.people = params[:people]
    a.save
    redirect_to "/post/show/#{a.id}"
  end

  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  def add_applicant
    @post = Post.find(params[:post_id])
    if @post.applicants.count < @post.people
      Applicant.create(user_id: current_user.id, post_id: params[:post_id])
      #flash[:notice] = "모임에 지원 신청 하셨습니다"
      redirect_to :back
    else
      #flash[:notice] = "모임이 가득 찼습니다"
      redirect_to :back
    end
  end
  
  def del_applicant
    @post = Post.find(params[:post_id])
    b = @post.applicants.where(user_id: current_user.id)[0]
    b.destroy
    #flash[:notice] = "모임에 지원 취소 하셨습니다"
    redirect_to :back
  end
end
