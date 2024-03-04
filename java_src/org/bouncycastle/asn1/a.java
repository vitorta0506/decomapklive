package org.bouncycastle.asn1;

import java.io.IOException;
import kotlin.UByte;
/* loaded from: classes7.dex */
public abstract class a extends r {

    /* renamed from: a  reason: collision with root package name */
    protected final boolean f55894a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f55895b;

    /* renamed from: c  reason: collision with root package name */
    protected final byte[] f55896c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(boolean z10, int i9, byte[] bArr) {
        this.f55894a = z10;
        this.f55895b = i9;
        this.f55896c = org.bouncycastle.util.a.e(bArr);
    }

    public static a M(Object obj) {
        if (obj == null || (obj instanceof a)) {
            return (a) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        try {
            return M(r.G((byte[]) obj));
        } catch (IOException e10) {
            throw new IllegalArgumentException("Failed to construct object from byte[]: " + e10.getMessage());
        }
    }

    private byte[] O(int i9, byte[] bArr) throws IOException {
        int i10;
        if ((bArr[0] & 31) == 31) {
            i10 = 2;
            int i11 = bArr[1] & UByte.MAX_VALUE;
            if ((i11 & 127) == 0) {
                throw new IOException("corrupted stream - invalid high tag number found");
            }
            while ((i11 & 128) != 0) {
                i11 = bArr[i10] & UByte.MAX_VALUE;
                i10++;
            }
        } else {
            i10 = 1;
        }
        int length = (bArr.length - i10) + 1;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i10, bArr2, 1, length - 1);
        bArr2[0] = (byte) i9;
        return bArr2;
    }

    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return this.f55894a;
    }

    public int K() {
        return this.f55895b;
    }

    public byte[] L() {
        return org.bouncycastle.util.a.e(this.f55896c);
    }

    public r N(int i9) throws IOException {
        if (i9 < 31) {
            byte[] encoded = getEncoded();
            byte[] O = O(i9, encoded);
            if ((encoded[0] & 32) != 0) {
                O[0] = (byte) (O[0] | 32);
            }
            return r.G(O);
        }
        throw new IOException("unsupported tag number");
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        boolean z10 = this.f55894a;
        return ((z10 ? 1 : 0) ^ this.f55895b) ^ org.bouncycastle.util.a.r(this.f55896c);
    }

    public String toString() {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        if (H()) {
            stringBuffer.append("CONSTRUCTED ");
        }
        stringBuffer.append("APPLICATION ");
        stringBuffer.append(Integer.toString(K()));
        stringBuffer.append("]");
        if (this.f55896c != null) {
            stringBuffer.append(" #");
            str = org.bouncycastle.util.encoders.d.f(this.f55896c);
        } else {
            str = " #null";
        }
        stringBuffer.append(str);
        stringBuffer.append(" ");
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof a) {
            a aVar = (a) rVar;
            return this.f55894a == aVar.f55894a && this.f55895b == aVar.f55895b && org.bouncycastle.util.a.a(this.f55896c, aVar.f55896c);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.m(z10, this.f55894a ? 96 : 64, this.f55895b, this.f55896c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        return a2.b(this.f55895b) + a2.a(this.f55896c.length) + this.f55896c.length;
    }
}
