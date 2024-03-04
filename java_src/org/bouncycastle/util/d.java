package org.bouncycastle.util;

import com.facebook.internal.security.CertificateUtil;
/* loaded from: classes7.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static char[] f56265b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f56266a;

    public d(byte[] bArr) {
        this(bArr, 160);
    }

    public d(byte[] bArr, int i9) {
        this.f56266a = a(bArr, i9);
    }

    public static byte[] a(byte[] bArr, int i9) {
        if (i9 % 8 == 0) {
            rj.i iVar = new rj.i(256);
            iVar.c(bArr, 0, bArr.length);
            int i10 = i9 / 8;
            byte[] bArr2 = new byte[i10];
            iVar.e(bArr2, 0, i10);
            return bArr2;
        }
        throw new IllegalArgumentException("bitLength must be a multiple of 8");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            return a.a(((d) obj).f56266a, this.f56266a);
        }
        return false;
    }

    public int hashCode() {
        return a.r(this.f56266a);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i9 = 0; i9 != this.f56266a.length; i9++) {
            if (i9 > 0) {
                stringBuffer.append(CertificateUtil.DELIMITER);
            }
            stringBuffer.append(f56265b[(this.f56266a[i9] >>> 4) & 15]);
            stringBuffer.append(f56265b[this.f56266a[i9] & 15]);
        }
        return stringBuffer.toString();
    }
}
