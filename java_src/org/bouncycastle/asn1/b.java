package org.bouncycastle.asn1;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* loaded from: classes7.dex */
public abstract class b extends r implements x {

    /* renamed from: c  reason: collision with root package name */
    private static final char[] f55899c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a  reason: collision with root package name */
    protected final byte[] f55900a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f55901b;

    public b(byte[] bArr, int i9) {
        Objects.requireNonNull(bArr, "'data' cannot be null");
        if (bArr.length == 0 && i9 != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        }
        if (i9 > 7 || i9 < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.f55900a = org.bouncycastle.util.a.e(bArr);
        this.f55901b = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b K(int i9, InputStream inputStream) throws IOException {
        if (i9 >= 1) {
            int read = inputStream.read();
            int i10 = i9 - 1;
            byte[] bArr = new byte[i10];
            if (i10 != 0) {
                if (dl.a.c(inputStream, bArr) != i10) {
                    throw new EOFException("EOF encountered in middle of BIT STRING");
                }
                if (read > 0 && read < 8) {
                    int i11 = i10 - 1;
                    if (bArr[i11] != ((byte) (bArr[i11] & (255 << read)))) {
                        return new j1(bArr, read);
                    }
                }
            }
            return new n0(bArr, read);
        }
        throw new IllegalArgumentException("truncated BIT STRING detected");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r I() {
        return new n0(this.f55900a, this.f55901b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public r J() {
        return new j1(this.f55900a, this.f55901b);
    }

    public byte[] L() {
        byte[] bArr = this.f55900a;
        if (bArr.length == 0) {
            return bArr;
        }
        byte[] e10 = org.bouncycastle.util.a.e(bArr);
        int length = this.f55900a.length - 1;
        e10[length] = (byte) (e10[length] & (255 << this.f55901b));
        return e10;
    }

    public byte[] M() {
        if (this.f55901b == 0) {
            return org.bouncycastle.util.a.e(this.f55900a);
        }
        throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
    }

    public int N() {
        return this.f55901b;
    }

    @Override // org.bouncycastle.asn1.x
    public String g() {
        StringBuffer stringBuffer = new StringBuffer("#");
        try {
            byte[] encoded = getEncoded();
            for (int i9 = 0; i9 != encoded.length; i9++) {
                char[] cArr = f55899c;
                stringBuffer.append(cArr[(encoded[i9] >>> 4) & 15]);
                stringBuffer.append(cArr[encoded[i9] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e10) {
            throw new ASN1ParsingException("Internal error encoding BitString: " + e10.getMessage(), e10);
        }
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        byte[] bArr = this.f55900a;
        int length = bArr.length - 1;
        if (length < 0) {
            return 1;
        }
        return ((org.bouncycastle.util.a.s(bArr, 0, length) * 257) ^ ((byte) (bArr[length] & (255 << this.f55901b)))) ^ this.f55901b;
    }

    public String toString() {
        return g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof b) {
            b bVar = (b) rVar;
            if (this.f55901b != bVar.f55901b) {
                return false;
            }
            byte[] bArr = this.f55900a;
            byte[] bArr2 = bVar.f55900a;
            int length = bArr.length;
            if (length != bArr2.length) {
                return false;
            }
            int i9 = length - 1;
            if (i9 < 0) {
                return true;
            }
            for (int i10 = 0; i10 < i9; i10++) {
                if (bArr[i10] != bArr2[i10]) {
                    return false;
                }
            }
            byte b10 = bArr[i9];
            int i11 = this.f55901b;
            return ((byte) (b10 & (255 << i11))) == ((byte) (bArr2[i9] & (255 << i11)));
        }
        return false;
    }
}
