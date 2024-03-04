package io.grpc.netty.shaded.io.netty.handler.ssl;

import com.facebook.internal.security.OidcSecurityUtil;
import java.security.Principal;
import java.security.cert.Certificate;
import javax.net.ssl.ExtendedSSLSession;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSessionBindingEvent;
import javax.net.ssl.SSLSessionBindingListener;
import javax.security.cert.X509Certificate;
/* loaded from: classes5.dex */
abstract class m extends ExtendedSSLSession implements x0 {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f44699b = {"SHA512withRSA", "SHA512withECDSA", "SHA384withRSA", "SHA384withECDSA", OidcSecurityUtil.SIGNATURE_ALGORITHM_SHA256, "SHA256withECDSA", "SHA224withRSA", "SHA224withECDSA", "SHA1withRSA", "SHA1withECDSA", "RSASSA-PSS"};

    /* renamed from: a  reason: collision with root package name */
    private final x0 f44700a;

    /* loaded from: classes5.dex */
    private final class a implements SSLSessionBindingListener {

        /* renamed from: a  reason: collision with root package name */
        final SSLSessionBindingListener f44701a;

        a(SSLSessionBindingListener sSLSessionBindingListener) {
            this.f44701a = sSLSessionBindingListener;
        }

        @Override // javax.net.ssl.SSLSessionBindingListener
        public void valueBound(SSLSessionBindingEvent sSLSessionBindingEvent) {
            this.f44701a.valueBound(new SSLSessionBindingEvent(m.this, sSLSessionBindingEvent.getName()));
        }

        @Override // javax.net.ssl.SSLSessionBindingListener
        public void valueUnbound(SSLSessionBindingEvent sSLSessionBindingEvent) {
            this.f44701a.valueUnbound(new SSLSessionBindingEvent(m.this, sSLSessionBindingEvent.getName()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(x0 x0Var) {
        this.f44700a = x0Var;
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
    public final void a(int i9) {
        this.f44700a.a(i9);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
    public a1 c() {
        return this.f44700a.c();
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
    public void d(byte[] bArr, String str, String str2, byte[] bArr2, byte[][] bArr3, long j10, long j11) throws SSLException {
        this.f44700a.d(bArr, str, str2, bArr2, bArr3, j10, j11);
    }

    @Override // io.grpc.netty.shaded.io.netty.handler.ssl.x0
    public final void e(Certificate[] certificateArr) {
        this.f44700a.e(certificateArr);
    }

    @Override // javax.net.ssl.SSLSession
    public final int getApplicationBufferSize() {
        return this.f44700a.getApplicationBufferSize();
    }

    @Override // javax.net.ssl.SSLSession
    public final String getCipherSuite() {
        return this.f44700a.getCipherSuite();
    }

    @Override // javax.net.ssl.SSLSession
    public final long getCreationTime() {
        return this.f44700a.getCreationTime();
    }

    @Override // javax.net.ssl.SSLSession
    public final byte[] getId() {
        return this.f44700a.getId();
    }

    @Override // javax.net.ssl.SSLSession
    public final long getLastAccessedTime() {
        return this.f44700a.getLastAccessedTime();
    }

    @Override // javax.net.ssl.SSLSession
    public final Certificate[] getLocalCertificates() {
        return this.f44700a.getLocalCertificates();
    }

    @Override // javax.net.ssl.SSLSession
    public final Principal getLocalPrincipal() {
        return this.f44700a.getLocalPrincipal();
    }

    @Override // javax.net.ssl.ExtendedSSLSession
    public final String[] getLocalSupportedSignatureAlgorithms() {
        return (String[]) f44699b.clone();
    }

    @Override // javax.net.ssl.SSLSession
    public final int getPacketBufferSize() {
        return this.f44700a.getPacketBufferSize();
    }

    @Override // javax.net.ssl.SSLSession
    public final X509Certificate[] getPeerCertificateChain() throws SSLPeerUnverifiedException {
        return this.f44700a.getPeerCertificateChain();
    }

    @Override // javax.net.ssl.SSLSession
    public final Certificate[] getPeerCertificates() throws SSLPeerUnverifiedException {
        return this.f44700a.getPeerCertificates();
    }

    @Override // javax.net.ssl.SSLSession
    public final String getPeerHost() {
        return this.f44700a.getPeerHost();
    }

    @Override // javax.net.ssl.SSLSession
    public final int getPeerPort() {
        return this.f44700a.getPeerPort();
    }

    @Override // javax.net.ssl.SSLSession
    public final Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
        return this.f44700a.getPeerPrincipal();
    }

    @Override // javax.net.ssl.SSLSession
    public String getProtocol() {
        return this.f44700a.getProtocol();
    }

    @Override // javax.net.ssl.SSLSession
    public final Object getValue(String str) {
        Object value = this.f44700a.getValue(str);
        return value instanceof a ? ((a) value).f44701a : value;
    }

    @Override // javax.net.ssl.SSLSession
    public final String[] getValueNames() {
        return this.f44700a.getValueNames();
    }

    @Override // javax.net.ssl.SSLSession
    public final void invalidate() {
        this.f44700a.invalidate();
    }

    @Override // javax.net.ssl.SSLSession
    public final boolean isValid() {
        return this.f44700a.isValid();
    }

    @Override // javax.net.ssl.SSLSession
    public final void putValue(String str, Object obj) {
        if (obj instanceof SSLSessionBindingListener) {
            obj = new a((SSLSessionBindingListener) obj);
        }
        this.f44700a.putValue(str, obj);
    }

    @Override // javax.net.ssl.SSLSession
    public final void removeValue(String str) {
        this.f44700a.removeValue(str);
    }

    public String toString() {
        return "ExtendedOpenSslSession{wrapped=" + this.f44700a + '}';
    }

    @Override // javax.net.ssl.SSLSession
    public final z0 getSessionContext() {
        return this.f44700a.getSessionContext();
    }
}
