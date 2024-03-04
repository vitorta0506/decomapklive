package org.conscrypt.ct;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
/* loaded from: classes7.dex */
public class SignedCertificateTimestamp {

    /* renamed from: a  reason: collision with root package name */
    private final Version f56318a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f56319b;

    /* renamed from: c  reason: collision with root package name */
    private final long f56320c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f56321d;

    /* renamed from: e  reason: collision with root package name */
    private final DigitallySigned f56322e;

    /* renamed from: f  reason: collision with root package name */
    private final Origin f56323f;

    /* loaded from: classes7.dex */
    public enum Origin {
        EMBEDDED,
        TLS_EXTENSION,
        OCSP_RESPONSE
    }

    /* loaded from: classes7.dex */
    public enum SignatureType {
        CERTIFICATE_TIMESTAMP,
        TREE_HASH
    }

    /* loaded from: classes7.dex */
    public enum Version {
        V1
    }

    public SignedCertificateTimestamp(Version version, byte[] bArr, long j10, byte[] bArr2, DigitallySigned digitallySigned, Origin origin) {
        this.f56318a = version;
        this.f56319b = bArr;
        this.f56320c = j10;
        this.f56321d = bArr2;
        this.f56322e = digitallySigned;
        this.f56323f = origin;
    }

    public static SignedCertificateTimestamp a(InputStream inputStream, Origin origin) throws SerializationException {
        int h10 = gl.c.h(inputStream, 1);
        Version version = Version.V1;
        if (h10 == version.ordinal()) {
            return new SignedCertificateTimestamp(version, gl.c.d(inputStream, 32), gl.c.g(inputStream, 8), gl.c.i(inputStream, 2), DigitallySigned.a(inputStream), origin);
        }
        throw new SerializationException("Unsupported SCT version " + h10);
    }

    public static SignedCertificateTimestamp b(byte[] bArr, Origin origin) throws SerializationException {
        return a(new ByteArrayInputStream(bArr), origin);
    }

    public byte[] c() {
        return this.f56319b;
    }
}
