package io.grpc.netty.shaded.io.netty.handler.ssl;

import io.grpc.netty.shaded.io.netty.internal.tcnative.CertificateVerifier;
import java.security.cert.CertificateException;
/* loaded from: classes5.dex */
public final class OpenSslCertificateException extends CertificateException {
    private static final long serialVersionUID = 5542675253797129798L;
    private final int errorCode;

    public OpenSslCertificateException(int i9) {
        this((String) null, i9);
    }

    private static int checkErrorCode(int i9) {
        if (!e0.h() || CertificateVerifier.a(i9)) {
            return i9;
        }
        throw new IllegalArgumentException("errorCode '" + i9 + "' invalid, see https://www.openssl.org/docs/man1.0.2/apps/verify.html.");
    }

    public int errorCode() {
        return this.errorCode;
    }

    public OpenSslCertificateException(String str, int i9) {
        super(str);
        this.errorCode = checkErrorCode(i9);
    }

    public OpenSslCertificateException(String str, Throwable th2, int i9) {
        super(str, th2);
        this.errorCode = checkErrorCode(i9);
    }

    public OpenSslCertificateException(Throwable th2, int i9) {
        this(null, th2, i9);
    }
}
