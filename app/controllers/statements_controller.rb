class StatementsController < ApplicationController
  def query_statement
    data = [[0,1],[1,5],[2,2],[3,4]]

    respond_to do |format|
      format.json { render json: data }
    end
  end
end
