class HomeController < ApplicationController
    def index
        # instance variable using @
        @langs = ['ruby','php','java','go','c++']
        @title = 'Hallo this is title'
    end

    def hallo
      
    end

    end