package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.NoSuchElementException;
/* loaded from: classes7.dex */
public class d0 extends o {

    /* renamed from: b  reason: collision with root package name */
    private final int f55911b;

    /* renamed from: c  reason: collision with root package name */
    private final o[] f55912c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements Enumeration {

        /* renamed from: a  reason: collision with root package name */
        int f55913a = 0;

        a() {
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f55913a < d0.this.f55958a.length;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            int i9 = this.f55913a;
            d0 d0Var = d0.this;
            byte[] bArr = d0Var.f55958a;
            if (i9 < bArr.length) {
                int min = Math.min(bArr.length - i9, d0Var.f55911b);
                byte[] bArr2 = new byte[min];
                System.arraycopy(d0.this.f55958a, this.f55913a, bArr2, 0, min);
                this.f55913a += min;
                return new w0(bArr2);
            }
            throw new NoSuchElementException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class b implements Enumeration {

        /* renamed from: a  reason: collision with root package name */
        int f55915a = 0;

        b() {
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f55915a < d0.this.f55912c.length;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            if (this.f55915a < d0.this.f55912c.length) {
                o[] oVarArr = d0.this.f55912c;
                int i9 = this.f55915a;
                this.f55915a = i9 + 1;
                return oVarArr[i9];
            }
            throw new NoSuchElementException();
        }
    }

    public d0(byte[] bArr) {
        this(bArr, 1000);
    }

    public d0(byte[] bArr, int i9) {
        this(bArr, null, i9);
    }

    private d0(byte[] bArr, o[] oVarArr, int i9) {
        super(bArr);
        this.f55912c = oVarArr;
        this.f55911b = i9;
    }

    public d0(o[] oVarArr) {
        this(oVarArr, 1000);
    }

    public d0(o[] oVarArr, int i9) {
        this(R(oVarArr), oVarArr, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d0 P(s sVar) {
        int size = sVar.size();
        o[] oVarArr = new o[size];
        for (int i9 = 0; i9 < size; i9++) {
            oVarArr[i9] = o.K(sVar.M(i9));
        }
        return new d0(oVarArr);
    }

    private static byte[] R(o[] oVarArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i9 = 0; i9 != oVarArr.length; i9++) {
            try {
                byteArrayOutputStream.write(oVarArr[i9].M());
            } catch (IOException e10) {
                throw new IllegalArgumentException("exception converting octets " + e10.toString());
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public boolean H() {
        return true;
    }

    public Enumeration Q() {
        return this.f55912c == null ? new a() : new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public void y(q qVar, boolean z10) throws IOException {
        qVar.p(z10, 36, Q());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.bouncycastle.asn1.r
    public int z() throws IOException {
        Enumeration Q = Q();
        int i9 = 0;
        while (Q.hasMoreElements()) {
            i9 += ((e) Q.nextElement()).f().z();
        }
        return i9 + 2 + 2;
    }
}
