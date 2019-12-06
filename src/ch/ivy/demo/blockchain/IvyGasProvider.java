package ch.ivy.demo.blockchain;

import java.math.BigInteger;

import org.web3j.tx.gas.ContractGasProvider;

public class IvyGasProvider implements ContractGasProvider {
	  private static final BigInteger GAS_PRIZE = BigInteger.valueOf(40000000000l);
	  private static final BigInteger GAS_LIMIT = BigInteger.valueOf(150000l);

	@Override
	public BigInteger getGasPrice(String contractFunc) {
		return GAS_PRIZE;
	}

	@Override
	public BigInteger getGasPrice() {
		return getGasPrice(null);
	}

	@Override
	public BigInteger getGasLimit(String contractFunc) {
		return GAS_LIMIT;
	}

	@Override
	public BigInteger getGasLimit() {
		return getGasLimit(null);
	}

	public static IvyGasProvider getInstance() {
		return new IvyGasProvider();
	}
}
