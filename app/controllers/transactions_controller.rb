class TransactionsController < ApplicationController

  def index
    transactions = Transaction.all
    render json: transactions
  end

  def create

    transaction = Transaction.new(transaction_params)

    if transaction.save
      render json: transaction
    else
      render json: {errors: transaction.errors.full_messages}
    end
  end

  def update
    transaction = Transaction.find(params[:id])
    transaction.update(transaction_params)
    render json: transaction
  end
  
  def destroy
    transaction = Transaction.find(params[:id])
    transaction_id = transaction.id
    transaction.destroy
    render json: transaction_id
  end
end


private

def transaction_params
  params.require(:transaction).permit(:kind,:description,:frequency,:price,:date,:category_id, :user_id)
end
