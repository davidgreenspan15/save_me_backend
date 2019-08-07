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
end

private

def transaction_params
  params.require(:transaction).permit(:kind,:description,:frequency,:price,:date,:category_id, :user_id)
end
