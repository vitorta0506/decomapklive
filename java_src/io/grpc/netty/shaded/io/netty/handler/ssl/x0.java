package io.grpc.netty.shaded.io.netty.handler.ssl;

import java.security.cert.Certificate;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public interface x0 extends SSLSession {
    void a(int i9);

    a1 c();

    void d(byte[] bArr, String str, String str2, byte[] bArr2, byte[][] bArr3, long j10, long j11) throws SSLException;

    void e(Certificate[] certificateArr);

    @Override // javax.net.ssl.SSLSession
    z0 getSessionContext();
}
