package org.bouncycastle.asn1;

import io.jsonwebtoken.JwtParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes7.dex */
public class n extends r {

    /* renamed from: c  reason: collision with root package name */
    private static final ConcurrentMap<a, n> f55952c = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final String f55953a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f55954b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f55955a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f55956b;

        a(byte[] bArr) {
            this.f55955a = org.bouncycastle.util.a.r(bArr);
            this.f55956b = bArr;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return org.bouncycastle.util.a.a(this.f55956b, ((a) obj).f55956b);
            }
            return false;
        }

        public int hashCode() {
            return this.f55955a;
        }
    }

    public n(String str) {
        Objects.requireNonNull(str, "'identifier' cannot be null");
        if (a0(str)) {
            this.f55953a = str;
            return;
        }
        throw new IllegalArgumentException("string " + str + " not an OID");
    }

    n(n nVar, String str) {
        if (!S(str, 0)) {
            throw new IllegalArgumentException("string " + str + " not a valid OID branch");
        }
        this.f55953a = nVar.O() + "." + str;
    }

    n(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z10 = true;
        long j10 = 0;
        BigInteger bigInteger = null;
        for (int i9 = 0; i9 != bArr.length; i9++) {
            int i10 = bArr[i9] & UByte.MAX_VALUE;
            if (j10 <= 72057594037927808L) {
                long j11 = j10 + (i10 & 127);
                if ((i10 & 128) == 0) {
                    if (z10) {
                        if (j11 < 40) {
                            stringBuffer.append('0');
                        } else if (j11 < 80) {
                            stringBuffer.append('1');
                            j11 -= 40;
                        } else {
                            stringBuffer.append('2');
                            j11 -= 80;
                        }
                        z10 = false;
                    }
                    stringBuffer.append(JwtParser.SEPARATOR_CHAR);
                    stringBuffer.append(j11);
                    j10 = 0;
                } else {
                    j10 = j11 << 7;
                }
            } else {
                BigInteger or = (bigInteger == null ? BigInteger.valueOf(j10) : bigInteger).or(BigInteger.valueOf(i10 & 127));
                if ((i10 & 128) == 0) {
                    if (z10) {
                        stringBuffer.append('2');
                        or = or.subtract(BigInteger.valueOf(80L));
                        z10 = false;
                    }
                    stringBuffer.append(JwtParser.SEPARATOR_CHAR);
                    stringBuffer.append(or);
                    j10 = 0;
                    bigInteger = null;
                } else {
                    bigInteger = or.shiftLeft(7);
                }
            }
        }
        this.f55953a = stringBuffer.toString();
        this.f55954b = org.bouncycastle.util.a.e(bArr);
    }

    private void L(ByteArrayOutputStream byteArrayOutputStream) {
        z1 z1Var = new z1(this.f55953a);
        int parseInt = Integer.parseInt(z1Var.b()) * 40;
        String b10 = z1Var.b();
        if (b10.length() <= 18) {
            c0(byteArrayOutputStream, parseInt + Long.parseLong(b10));
        } else {
            e0(byteArrayOutputStream, new BigInteger(b10).add(BigInteger.valueOf(parseInt)));
        }
        while (z1Var.a()) {
            String b11 = z1Var.b();
            if (b11.length() <= 18) {
                c0(byteArrayOutputStream, Long.parseLong(b11));
            } else {
                e0(byteArrayOutputStream, new BigInteger(b11));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n M(byte[] bArr) {
        n nVar = f55952c.get(new a(bArr));
        return nVar == null ? new n(bArr) : nVar;
    }

    private synchronized byte[] N() {
        if (this.f55954b == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            L(byteArrayOutputStream);
            this.f55954b = byteArrayOutputStream.toByteArray();
        }
        return this.f55954b;
    }

    public static n P(Object obj) {
        if (obj == null || (obj instanceof n)) {
            return (n) obj;
        }
        if (obj instanceof e) {
            r f10 = ((e) obj).f();
            if (f10 instanceof n) {
                return (n) f10;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (n) r.G((byte[]) obj);
        } catch (IOException e10) {
            throw new IllegalArgumentException("failed to construct object identifier from byte[]: " + e10.getMessage());
        }
    }

    public static n Q(y yVar, boolean z10) {
        r M = yVar.M();
        return (z10 || (M instanceof n)) ? P(M) : M(o.K(M).M());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        if (r7.charAt(r0 + 1) != '0') goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002b, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
        if (r2 == 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        if (r2 <= 1) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean S(java.lang.String r7, int r8) {
        /*
            int r0 = r7.length()
            r1 = 0
        L5:
            r2 = 0
        L6:
            int r0 = r0 + (-1)
            r3 = 48
            r4 = 1
            if (r0 < r8) goto L2c
            char r5 = r7.charAt(r0)
            r6 = 46
            if (r5 != r6) goto L22
            if (r2 == 0) goto L21
            if (r2 <= r4) goto L5
            int r2 = r0 + 1
            char r2 = r7.charAt(r2)
            if (r2 != r3) goto L5
        L21:
            return r1
        L22:
            if (r3 > r5) goto L2b
            r3 = 57
            if (r5 > r3) goto L2b
            int r2 = r2 + 1
            goto L6
        L2b:
            return r1
        L2c:
            if (r2 == 0) goto L39
            if (r2 <= r4) goto L38
            int r0 = r0 + r4
            char r7 = r7.charAt(r0)
            if (r7 != r3) goto L38
            goto L39
        L38:
            return r4
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.asn1.n.S(java.lang.String, int):boolean");
    }

    private static boolean a0(String str) {
        char charAt;
        if (str.length() < 3 || str.charAt(1) != '.' || (charAt = str.charAt(0)) < '0' || charAt > '2') {
            return false;
        }
        return S(str, 2);
    }

    private void c0(ByteArrayOutputStream byteArrayOutputStream, long j10) {
        byte[] bArr = new byte[9];
        int i9 = 8;
        bArr[8] = (byte) (((int) j10) & 127);
        while (j10 >= 128) {
            j10 >>= 7;
            i9--;
            bArr[i9] = (byte) ((((int) j10) & 127) | 128);
        }
        byteArrayOutputStream.write(bArr, i9, 9 - i9);
    }

    private void e0(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int bitLength = (bigInteger.bitLength() + 6) / 7;
        if (bitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        byte[] bArr = new byte[bitLength];
        int i9 = bitLength - 1;
        for (int i10 = i9; i10 >= 0; i10--) {
            bArr[i10] = (byte) ((bigInteger.intValue() & 127) | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        bArr[i9] = (byte) (bArr[i9] & ByteCompanionObject.MAX_VALUE);
        byteArrayOutputStream.write(bArr, 0, bitLength);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return false;
    }

    public n K(String str) {
        return new n(this, str);
    }

    public String O() {
        return this.f55953a;
    }

    public n R() {
        a aVar = new a(N());
        ConcurrentMap<a, n> concurrentMap = f55952c;
        n nVar = concurrentMap.get(aVar);
        if (nVar == null) {
            n putIfAbsent = concurrentMap.putIfAbsent(aVar, this);
            return putIfAbsent == null ? this : putIfAbsent;
        }
        return nVar;
    }

    public boolean b0(n nVar) {
        String O = O();
        String O2 = nVar.O();
        return O.length() > O2.length() && O.charAt(O2.length()) == '.' && O.startsWith(O2);
    }

    @Override // org.bouncycastle.asn1.r, org.bouncycastle.asn1.m
    public int hashCode() {
        return this.f55953a.hashCode();
    }

    public String toString() {
        return O();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean x(r rVar) {
        if (rVar == this) {
            return true;
        }
        if (rVar instanceof n) {
            return this.f55953a.equals(((n) rVar).f55953a);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.n(z10, 6, N());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        int length = N().length;
        return a2.a(length) + 1 + length;
    }
}
