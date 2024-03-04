package org.bouncycastle.asn1;

import java.io.IOException;
import java.math.BigInteger;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes7.dex */
public class k extends r {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f55941a;

    /* renamed from: b  reason: collision with root package name */
    private final int f55942b;

    public k(long j10) {
        this.f55941a = BigInteger.valueOf(j10).toByteArray();
        this.f55942b = 0;
    }

    public k(BigInteger bigInteger) {
        this.f55941a = bigInteger.toByteArray();
        this.f55942b = 0;
    }

    public k(byte[] bArr) {
        this(bArr, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(byte[] bArr, boolean z10) {
        if (S(bArr)) {
            throw new IllegalArgumentException("malformed integer");
        }
        this.f55941a = z10 ? org.bouncycastle.util.a.e(bArr) : bArr;
        this.f55942b = c0(bArr);
    }

    public static k K(Object obj) {
        if (obj == null || (obj instanceof k)) {
            return (k) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (k) r.G((byte[]) obj);
        } catch (Exception e10) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e10.toString());
        }
    }

    public static k L(y yVar, boolean z10) {
        r M = yVar.M();
        return (z10 || (M instanceof k)) ? K(M) : new k(o.K(M).M());
    }

    static int Q(byte[] bArr, int i9, int i10) {
        int length = bArr.length;
        int max = Math.max(i9, length - 4);
        int i11 = i10 & bArr[max];
        while (true) {
            max++;
            if (max >= length) {
                return i11;
            }
            i11 = (i11 << 8) | (bArr[max] & 255);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean S(byte[] bArr) {
        int length = bArr.length;
        if (length != 0) {
            return (length == 1 || bArr[0] != (bArr[1] >> 7) || org.bouncycastle.util.h.b("org.bouncycastle.asn1.allow_unsafe_integer")) ? false : true;
        }
        return true;
    }

    static long a0(byte[] bArr, int i9, int i10) {
        int length = bArr.length;
        int max = Math.max(i9, length - 8);
        long j10 = i10 & bArr[max];
        while (true) {
            max++;
            if (max >= length) {
                return j10;
            }
            j10 = (j10 << 8) | (bArr[max] & UByte.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c0(byte[] bArr) {
        int length = bArr.length - 1;
        int i9 = 0;
        while (i9 < length) {
            int i10 = i9 + 1;
            if (bArr[i9] != (bArr[i10] >> 7)) {
                break;
            }
            i9 = i10;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    public BigInteger M() {
        return new BigInteger(1, this.f55941a);
    }

    public BigInteger N() {
        return new BigInteger(this.f55941a);
    }

    public boolean O(BigInteger bigInteger) {
        return bigInteger != null && Q(this.f55941a, this.f55942b, -1) == bigInteger.intValue() && N().equals(bigInteger);
    }

    public int P() {
        byte[] bArr = this.f55941a;
        int length = bArr.length;
        int i9 = this.f55942b;
        int i10 = length - i9;
        if (i10 > 4 || (i10 == 4 && (bArr[i9] & ByteCompanionObject.MIN_VALUE) != 0)) {
            throw new ArithmeticException("ASN.1 Integer out of positive int range");
        }
        return Q(bArr, i9, 255);
    }

    public int R() {
        byte[] bArr = this.f55941a;
        int length = bArr.length;
        int i9 = this.f55942b;
        if (length - i9 <= 4) {
            return Q(bArr, i9, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of int range");
    }

    public long b0() {
        byte[] bArr = this.f55941a;
        int length = bArr.length;
        int i9 = this.f55942b;
        if (length - i9 <= 8) {
            return a0(bArr, i9, -1);
        }
        throw new ArithmeticException("ASN.1 Integer out of long range");
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return org.bouncycastle.util.a.r(this.f55941a);
    }

    public String toString() {
        return N().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar instanceof k) {
            return org.bouncycastle.util.a.a(this.f55941a, ((k) rVar).f55941a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 2, this.f55941a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() {
        return a2.a(this.f55941a.length) + 1 + this.f55941a.length;
    }
}
