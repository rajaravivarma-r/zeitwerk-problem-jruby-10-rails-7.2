module Workzone
  class TasksController < ApplicationController
    def index
      @workzone_tasks = Workzone::Task.all
    end
  end
end
