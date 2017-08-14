class StaticPagesController < ApplicationController
  #before_action :set_page_name
  def home
  end

  def help
  end

  def about
  end

  def contact

  end

  private
=begin 
    另外一種嘗試，純粹是好玩，不過不夠有效率,所以就收起來做個紀念   
    def set_page_name
      @page_name = this_method_name
    end 
 
    def this_method_name
      caller[0] =~ /`([^']*)'/ and $1
    end
    name = this_method_name.split('')
    name.first.upcase!
    @page_name = name.join
=end



end
