class AboutController < ApplicationController
  def index
  end

  def new
    @contact = ContactForm.new
  end

  def create
  end
end
