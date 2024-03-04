package org.conscrypt.ct;

import java.io.InputStream;
/* loaded from: classes7.dex */
public class DigitallySigned {

    /* renamed from: a  reason: collision with root package name */
    private final HashAlgorithm f56315a;

    /* renamed from: b  reason: collision with root package name */
    private final SignatureAlgorithm f56316b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f56317c;

    /* loaded from: classes7.dex */
    public enum HashAlgorithm {
        NONE,
        MD5,
        SHA1,
        SHA224,
        SHA256,
        SHA384,
        SHA512;
        
        private static HashAlgorithm[] values = values();

        public static HashAlgorithm valueOf(int i9) {
            try {
                return values[i9];
            } catch (IndexOutOfBoundsException e10) {
                throw new IllegalArgumentException("Invalid hash algorithm " + i9, e10);
            }
        }
    }

    /* loaded from: classes7.dex */
    public enum SignatureAlgorithm {
        ANONYMOUS,
        RSA,
        DSA,
        ECDSA;
        
        private static SignatureAlgorithm[] values = values();

        public static SignatureAlgorithm valueOf(int i9) {
            try {
                return values[i9];
            } catch (IndexOutOfBoundsException e10) {
                throw new IllegalArgumentException("Invalid signature algorithm " + i9, e10);
            }
        }
    }

    public DigitallySigned(HashAlgorithm hashAlgorithm, SignatureAlgorithm signatureAlgorithm, byte[] bArr) {
        this.f56315a = hashAlgorithm;
        this.f56316b = signatureAlgorithm;
        this.f56317c = bArr;
    }

    public static DigitallySigned a(InputStream inputStream) throws SerializationException {
        try {
            return new DigitallySigned(gl.c.h(inputStream, 1), gl.c.h(inputStream, 1), gl.c.i(inputStream, 2));
        } catch (IllegalArgumentException e10) {
            throw new SerializationException(e10);
        }
    }

    public DigitallySigned(int i9, int i10, byte[] bArr) {
        this(HashAlgorithm.valueOf(i9), SignatureAlgorithm.valueOf(i10), bArr);
    }
}
