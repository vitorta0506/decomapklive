package org.conscrypt;

import java.security.PublicKey;
import java.util.Arrays;
/* loaded from: classes7.dex */
final class f0 implements PublicKey {
    private static final long serialVersionUID = -8610156854731664298L;

    /* renamed from: a  reason: collision with root package name */
    private final String f56358a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f56359b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f0(String str, byte[] bArr) {
        this.f56358a = str;
        this.f56359b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && f0.class == obj.getClass()) {
            f0 f0Var = (f0) obj;
            String str = this.f56358a;
            if (str == null) {
                if (f0Var.f56358a != null) {
                    return false;
                }
            } else if (!str.equals(f0Var.f56358a)) {
                return false;
            }
            return Arrays.equals(this.f56359b, f0Var.f56359b);
        }
        return false;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.f56358a;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return this.f56359b;
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public int hashCode() {
        String str = this.f56358a;
        return (((str == null ? 0 : str.hashCode()) + 31) * 31) + Arrays.hashCode(this.f56359b);
    }

    public String toString() {
        return "X509PublicKey [algorithm=" + this.f56358a + ", encoded=" + Arrays.toString(this.f56359b) + "]";
    }
}
