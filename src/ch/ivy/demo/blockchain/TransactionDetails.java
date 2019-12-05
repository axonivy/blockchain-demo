package ch.ivy.demo.blockchain;

import java.math.BigInteger;

import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.tx.gas.ContractGasProvider;

public class TransactionDetails
{
  private static final BigInteger BILLION = BigInteger.valueOf(1000000000);

  private String txHash;
  private Number blockId;
  private BigInteger gasPrice;
  private BigInteger gasUsed;
  private BigInteger gasLimit;
  private BigInteger txCost;
  private String from;
  private String to;

  public TransactionDetails(TransactionReceipt txReceipt, ContractGasProvider gasProvider) {
	    this.txHash = txReceipt.getTransactionHash();
	    this.blockId = txReceipt.getBlockNumber();
	    this.gasPrice = gasProvider.getGasPrice(null);
	    this.gasUsed = txReceipt.getGasUsed();
	    this.gasLimit = gasProvider.getGasLimit(null);
	    this.txCost = this.gasPrice.multiply(gasUsed);
	    this.from = txReceipt.getFrom();
	    this.to = txReceipt.getTo() == null ? "n/a" : txReceipt.getTo();
}

public String getTxHash()
  {
    return txHash;
  }

  public void setTxHash(String txHash)
  {
    this.txHash = txHash;
  }

  public Number getBlockId()
  {
    return blockId;
  }

  public void setBlockId(Number blockId)
  {
    this.blockId = blockId;
  }

  public BigInteger getGasPrice()
  {
    return gasPrice;
  }

  public void setGasPrice(BigInteger gasPrice)
  {
    this.gasPrice = gasPrice;
  }

  public BigInteger getGasUsed()
  {
    return gasUsed;
  }

  public void setGasUsed(BigInteger gasUsed)
  {
    this.gasUsed = gasUsed;
  }

  public BigInteger getGasLimit()
  {
    return gasLimit;
  }

  public void setGasLimit(BigInteger gasLimit)
  {
    this.gasLimit = gasLimit;
  }

  public BigInteger getTxCost()
  {
    return txCost.divide(BILLION);
  }

  public void setTxCost(BigInteger txCost)
  {
    this.txCost = txCost.multiply(BILLION);
  }

  public String getFrom()
  {
    return from;
  }

  public void setFrom(String from)
  {
    this.from = from;
  }

  public String getTo()
  {
    return to;
  }

  public void setTo(String to)
  {
    this.to = to;
  }

  @Override
  public String toString()
  {
    return "Transaction: (txHash: " + txHash + ", blockId: " + blockId + ", gasPrice:" + gasPrice
            + ", gasUsed: " + gasUsed + ", gasLimit: " + gasLimit + ", txCost: " + txCost + ", from: " + from
            + ", to: " + to + ")";
  }
}
