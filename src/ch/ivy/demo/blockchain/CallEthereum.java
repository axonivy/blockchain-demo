package ch.ivy.demo.blockchain;

import java.math.BigInteger;

import org.web3j.crypto.Credentials;
import org.web3j.crypto.WalletUtils;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.protocol.http.HttpService;

import com.axonivy.demo.blockchain.SimpleCounter;
import ch.ivyteam.ivy.environment.Ivy;

public class CallEthereum
{
  private static final BigInteger GAS_PRIZE = BigInteger.valueOf(40000000000l);
  private static final BigInteger GAS_LIMIT = BigInteger.valueOf(150000l);

  private final Credentials credentials;

  public CallEthereum(String keystoreFile, String passwd)
  {
    try
    {
      this.credentials = loadCredentials(passwd, keystoreFile);
    }
    catch (Exception ex)
    {
      throw new RuntimeException(ex);
    }
  }

  public ContractData deployContract(String url) throws Exception
  {
    Web3j web3 = buildWeb3j(url);
    SimpleCounter sc = SimpleCounter.deploy(web3, this.credentials, GAS_PRIZE, GAS_LIMIT).send();
    logTransaction(sc);
    ContractData data = new ContractData();
    data.setCounterValue(getCounterValue(sc));
    data.setContractAddress(sc.getContractAddress());
    data.setContractGasPrice(GAS_PRIZE);
    data.addTransaction(sc.getTransactionReceipt().get(), GAS_PRIZE, GAS_LIMIT);
    return data;
  }

  public ContractData add(String url, String contractAddress, ContractData data) throws Exception
  {
    SimpleCounter sc = loadContract(url, contractAddress);
    TransactionReceipt trxReceipt = sc.add().send();
    logTxSuccess(trxReceipt);
    data.setCounterValue(getCounterValue(sc));
    data.addTransaction(trxReceipt, GAS_PRIZE, GAS_LIMIT);
    return data;
  }

  public ContractData subtract(String url, String contractAddress, ContractData data) throws Exception
  {
    SimpleCounter sc = loadContract(url, contractAddress);
    TransactionReceipt trxReceipt = sc.subtract().send();
    logTxSuccess(trxReceipt);
    data.setCounterValue(getCounterValue(sc));
    data.addTransaction(trxReceipt, GAS_PRIZE, GAS_LIMIT);
    return data;
  }

  public Number getCounter(String url, String contractAddress) throws Exception
  {
    return getCounterValue(loadContract(url, contractAddress));
  }

  private BigInteger getCounterValue(SimpleCounter sc) throws Exception
  {
    BigInteger counter = sc.getCounter().send();
    return counter;
  }

  private SimpleCounter loadContract(String url, String contractAddress)
  {
    Web3j web3 = buildWeb3j(url);
    SimpleCounter sc = SimpleCounter.load(contractAddress, web3, credentials, GAS_PRIZE, GAS_LIMIT);
    return sc;
  }

  private Web3j buildWeb3j(String url)
  {
    HttpService httpService = new HttpService(url);
    return Web3j.build(httpService);
  }

  private Credentials loadCredentials(String passwd, String source) throws Exception
  {
    return WalletUtils.loadCredentials(passwd, source);
  }

  private void logTransaction(SimpleCounter sc)
  {
    if (sc.getTransactionReceipt().isPresent())
    {
      logTxSuccess(sc.getTransactionReceipt().get());
    }
    else
    {
      Ivy.log().warn("Transaction execution failed!");
    }
  }

  private void logTxSuccess(TransactionReceipt txReceipt)
  {
    Ivy.log().info("Successfully executed tx " + txReceipt.getTransactionHash());
  }
}
