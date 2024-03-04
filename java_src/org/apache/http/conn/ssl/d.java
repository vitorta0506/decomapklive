package org.apache.http.conn.ssl;

import java.security.cert.X509Certificate;
import java.util.Arrays;
@Deprecated
/* loaded from: classes7.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final String f55877a;

    /* renamed from: b  reason: collision with root package name */
    private final X509Certificate[] f55878b;

    public d(String str, X509Certificate[] x509CertificateArr) {
        this.f55877a = (String) vi.a.g(str, "Private key type");
        this.f55878b = x509CertificateArr;
    }

    public String toString() {
        return this.f55877a + ':' + Arrays.toString(this.f55878b);
    }
}
