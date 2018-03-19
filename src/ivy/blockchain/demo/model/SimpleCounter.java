package ivy.blockchain.demo.model;

import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collections;
import org.web3j.abi.TypeReference;
import org.web3j.abi.datatypes.Function;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.datatypes.generated.Uint256;
import org.web3j.crypto.Credentials;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.RemoteCall;
import org.web3j.protocol.core.methods.response.TransactionReceipt;
import org.web3j.tx.Contract;
import org.web3j.tx.TransactionManager;

/**
 * <p>Auto generated code.
 * <p><strong>Do not modify!</strong>
 * <p>Please use the <a href="https://docs.web3j.io/command_line.html">web3j command line tools</a>,
 * or the org.web3j.codegen.SolidityFunctionWrapperGenerator in the 
 * <a href="https://github.com/web3j/web3j/tree/master/codegen">codegen module</a> to update.
 *
 * <p>Generated with web3j version 3.0.2.
 */
public final class SimpleCounter extends Contract {
    private static final String BINARY = "60606040526005600055341561001457600080fd5b60e4806100226000396000f30060606040526004361060525763ffffffff7c01000000000000000000000000000000000000000000000000000000006000350416634f2be91f811460575780636deebae31460695780638ada066e146079575b600080fd5b3415606157600080fd5b6067609b565b005b3415607357600080fd5b606760a6565b3415608357600080fd5b608960b2565b60405190815260200160405180910390f35b600080546001019055565b60008054600019019055565b600054905600a165627a7a723058206df173d0eaf74c8ef265f2a64b0f754c0762b6d867be5d881c4de8dbbc32a42b0029";

    private SimpleCounter(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    private SimpleCounter(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        super(BINARY, contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }

    public RemoteCall<TransactionReceipt> add() {
        Function function = new Function(
                "add", 
                Arrays.<Type>asList(), 
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function);
    }

    public RemoteCall<TransactionReceipt> subtract() {
        Function function = new Function(
                "subtract", 
                Arrays.<Type>asList(), 
                Collections.<TypeReference<?>>emptyList());
        return executeRemoteCallTransaction(function);
    }

    public RemoteCall<BigInteger> getCounter() {
        Function function = new Function("getCounter", 
                Arrays.<Type>asList(), 
                Arrays.<TypeReference<?>>asList(new TypeReference<Uint256>() {}));
        return executeRemoteCallSingleValueReturn(function, BigInteger.class);
    }

    public static RemoteCall<SimpleCounter> deploy(Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(SimpleCounter.class, web3j, credentials, gasPrice, gasLimit, BINARY, "");
    }

    public static RemoteCall<SimpleCounter> deploy(Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return deployRemoteCall(SimpleCounter.class, web3j, transactionManager, gasPrice, gasLimit, BINARY, "");
    }

    public static SimpleCounter load(String contractAddress, Web3j web3j, Credentials credentials, BigInteger gasPrice, BigInteger gasLimit) {
        return new SimpleCounter(contractAddress, web3j, credentials, gasPrice, gasLimit);
    }

    public static SimpleCounter load(String contractAddress, Web3j web3j, TransactionManager transactionManager, BigInteger gasPrice, BigInteger gasLimit) {
        return new SimpleCounter(contractAddress, web3j, transactionManager, gasPrice, gasLimit);
    }
}
