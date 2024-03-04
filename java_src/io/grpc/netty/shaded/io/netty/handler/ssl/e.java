package io.grpc.netty.shaded.io.netty.handler.ssl;

import javax.net.ssl.SSLEngine;
/* loaded from: classes5.dex */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f44519a;

    static {
        boolean z10;
        try {
            Class.forName("org.bouncycastle.jsse.provider.BouncyCastleJsseProvider");
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        f44519a = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return f44519a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(SSLEngine sSLEngine) {
        return sSLEngine.getClass().getPackage().getName().startsWith("org.bouncycastle.jsse.provider");
    }
}
