package org.conscrypt;

import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import org.conscrypt.NativeRef;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private final NativeRef.EVP_PKEY f56420a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f56421b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f56422c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(long j10) {
        this(j10, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeRef.EVP_PKEY a() {
        return this.f56420a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PublicKey b() throws NoSuchAlgorithmException {
        int EVP_PKEY_type = NativeCrypto.EVP_PKEY_type(this.f56420a);
        if (EVP_PKEY_type != 6) {
            if (EVP_PKEY_type == 408) {
                return new v(this);
            }
            throw new NoSuchAlgorithmException("unknown PKEY type");
        }
        return new OpenSSLRSAPublicKey(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f56422c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof w) {
            w wVar = (w) obj;
            return this.f56420a.equals(wVar.a()) || NativeCrypto.EVP_PKEY_cmp(this.f56420a, wVar.a()) == 1;
        }
        return false;
    }

    public int hashCode() {
        return this.f56420a.hashCode();
    }

    w(long j10, boolean z10) {
        this(j10, z10, false);
    }

    w(long j10, boolean z10, boolean z11) {
        this.f56420a = new NativeRef.EVP_PKEY(j10);
        this.f56421b = z10;
        this.f56422c = z11;
    }
}
