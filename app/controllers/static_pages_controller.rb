class StaticPagesController < ApplicationController
  #before_action :set_page_name
  def home
    name = this_method_name.split('')
    name.first.upcase!
    @page_name = name.join
  end

  def help
    name = this_method_name.split('')
    name.first.upcase!
    @page_name = name.join
  end

  def about
    name = this_method_name.split('')
    name.first.upcase!
    @page_name = name.join
  end


  private
   # def set_page_name
    #  @page_name = this_method_name
    #end 
 
    def this_method_name
      caller[0] =~ /`([^']*)'/ and $1
    end



end
