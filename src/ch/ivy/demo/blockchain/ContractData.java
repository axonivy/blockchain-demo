package ch.ivy.demo.blockchain;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.web3j.protocol.core.methods.response.TransactionReceipt;

public final class ContractData
{
  private List<TransactionDetails> transactions = new ArrayList<>();
  private String contractAddress;
  private Number counterValue;
  private Number contractGasPrice;

  public String getContractAddress()
  {
    return contractAddress;
  }

  public void setContractAddress(String _contractAddress)
  {
    contractAddress = _contractAddress;
  }

  public Number getContractGasPrice()
  {
    return contractGasPrice;
  }

  public void setContractGasPrice(Number _contractGasPrice)
  {
    contractGasPrice = _contractGasPrice;
  }

  public Number getCounterValue()
  {
    return counterValue;
  }

  public void setCounterValue(Number _counterValue)
  {
    counterValue = _counterValue;
  }

  public void addTransaction(TransactionReceipt txReceipt, BigInteger gasPrice, BigInteger gasLimit)
  {
    TransactionDetails tx = new TransactionDetails(txReceipt, gasPrice, gasLimit);
    transactions.add(0, tx);
  }

  public List<TransactionDetails> getTransactions()
  {
    return transactions;
  }

  public void setTransactions(List<TransactionDetails> _transactions)
  {
    transactions = _transactions;
  }

  @Override
  public String toString()
  {
    String output = "Contract:" +
                  "\n  contractAddress:  " + contractAddress +
                  "\n  counterValue:     " + counterValue +
                  "\n  contractGasPrice: " + contractGasPrice +
                  "\n  transactionSize:  " + transactions.size() +
                  "\n  transactions:     " + transactions;
    return output;
  }
}
