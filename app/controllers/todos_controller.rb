class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      redirect_to edit_todo_path(@todo)
    else
      render :new
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
    redirect_to edit_todo_path(@todo)
  end


  private

  def todo_params
    params.require(:todo).permit(:title, todo_items_attributes: [:id, :content, :_destroy])
  end
end
