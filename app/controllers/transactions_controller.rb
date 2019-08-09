class TransactionsController < ApplicationController

  def index
    transactions = Transaction.all
    render json: transactions
  end

  def create

    transaction = Transaction.new(transaction_params)
    if transaction.kind == "Expense" and transaction.price > 0
      transaction.price = transaction.price * -1
    elsif transaction.kind == "Income" and transaction.price < 0
      transaction.price = transaction.price * -1
    end
    if transaction.save
      render json: transaction
    else
      render json: {errors: transaction.errors.full_messages}
    end
  end

  def update
    transaction = Transaction.find(params[:id])
    transaction.update(transaction_params)
    if transaction.kind == "Expense" and transaction.price > 0
      transaction.update(price: transaction.price * -1)
    elsif transaction.kind == "Income" and transaction.price < 0
      transaction.update(price: transaction.price * -1)
    end

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
