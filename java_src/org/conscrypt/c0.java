package org.conscrypt;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import javax.net.ssl.ManagerFactoryParameters;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactorySpi;
/* loaded from: classes7.dex */
public class c0 extends TrustManagerFactorySpi {

    /* renamed from: a  reason: collision with root package name */
    private KeyStore f56311a;

    @Override // javax.net.ssl.TrustManagerFactorySpi
    public TrustManager[] engineGetTrustManagers() {
        if (this.f56311a != null) {
            return new TrustManager[]{new d0(this.f56311a)};
        }
        throw new IllegalStateException("TrustManagerFactory is not initialized");
    }

    @Override // javax.net.ssl.TrustManagerFactorySpi
    public void engineInit(KeyStore keyStore) throws KeyStoreException {
        if (keyStore != null) {
            this.f56311a = keyStore;
        } else {
            this.f56311a = a0.c();
        }
    }

    @Override // javax.net.ssl.TrustManagerFactorySpi
    public void engineInit(ManagerFactoryParameters managerFactoryParameters) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("ManagerFactoryParameters not supported");
    }
}
