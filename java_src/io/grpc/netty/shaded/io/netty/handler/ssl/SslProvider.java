package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.Provider;
/* loaded from: classes5.dex */
public enum SslProvider {
    JDK,
    OPENSSL,
    OPENSSL_REFCNT;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f44493a;

        static {
            int[] iArr = new int[SslProvider.values().length];
            f44493a = iArr;
            try {
                iArr[SslProvider.JDK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44493a[SslProvider.OPENSSL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44493a[SslProvider.OPENSSL_REFCNT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static boolean isAlpnSupported(SslProvider sslProvider) {
        int i9 = a.f44493a[sslProvider.ordinal()];
        if (i9 != 1) {
            if (i9 != 2 && i9 != 3) {
                throw new Error("Unknown SslProvider: " + sslProvider);
            }
            return e0.g();
        }
        return r.g();
    }

    static boolean isTlsv13EnabledByDefault(SslProvider sslProvider, Provider provider) {
        int i9 = a.f44493a[sslProvider.ordinal()];
        if (i9 != 1) {
            if (i9 != 2 && i9 != 3) {
                throw new Error("Unknown SslProvider: " + sslProvider);
            }
            return e0.l();
        }
        return v1.j(provider);
    }

    public static boolean isTlsv13Supported(SslProvider sslProvider) {
        return isTlsv13Supported(sslProvider, null);
    }

    public static boolean isTlsv13Supported(SslProvider sslProvider, Provider provider) {
        int i9 = a.f44493a[sslProvider.ordinal()];
        if (i9 != 1) {
            if (i9 != 2 && i9 != 3) {
                throw new Error("Unknown SslProvider: " + sslProvider);
            }
            return e0.l();
        }
        return v1.l(provider);
    }
}
