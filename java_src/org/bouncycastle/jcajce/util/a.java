package org.bouncycastle.jcajce.util;

import java.security.Provider;
import java.security.Security;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
/* loaded from: classes7.dex */
public class a extends c {

    /* renamed from: b  reason: collision with root package name */
    private static volatile Provider f56085b;

    public a() {
        super(b());
    }

    private static synchronized Provider b() {
        synchronized (a.class) {
            Provider provider = Security.getProvider(BouncyCastleProvider.PROVIDER_NAME);
            if (provider instanceof BouncyCastleProvider) {
                return provider;
            }
            if (f56085b != null) {
                return f56085b;
            }
            f56085b = new BouncyCastleProvider();
            return f56085b;
        }
    }
}
