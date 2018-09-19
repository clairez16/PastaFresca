class NoodlesController < ApplicationController
  def index
    @all_pasta = Noodle.all
  end
end
