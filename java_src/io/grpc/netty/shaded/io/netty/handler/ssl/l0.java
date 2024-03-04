package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.cert.Certificate;
import java.util.Map;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLException;
/* loaded from: classes5.dex */
public abstract class l0 extends j1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(Iterable<String> iterable, i iVar, ApplicationProtocolConfig applicationProtocolConfig, int i9, Certificate[] certificateArr, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        super(iterable, iVar, j1.U(applicationProtocolConfig), i9, certificateArr, clientAuth, strArr, z10, z11, false, entryArr);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.j1
    final SSLEngine M(kg.k kVar, String str, int i9, boolean z10) {
        return new o0(this, kVar, str, i9, z10);
    }

    protected final void finalize() throws Throwable {
        super.finalize();
        e0.o(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(Iterable<String> iterable, i iVar, f0 f0Var, int i9, Certificate[] certificateArr, ClientAuth clientAuth, String[] strArr, boolean z10, boolean z11, Map.Entry<r1<?>, Object>... entryArr) throws SSLException {
        super(iterable, iVar, f0Var, i9, certificateArr, clientAuth, strArr, z10, z11, false, entryArr);
    }
}
