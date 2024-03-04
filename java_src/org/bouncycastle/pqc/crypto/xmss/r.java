package org.bouncycastle.pqc.crypto.xmss;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class r extends o implements org.bouncycastle.util.c {

    /* renamed from: c  reason: collision with root package name */
    private final p f56209c;

    /* renamed from: d  reason: collision with root package name */
    private final int f56210d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f56211e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f56212f;

    /* loaded from: classes7.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final p f56213a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f56214b = null;

        /* renamed from: c  reason: collision with root package name */
        private byte[] f56215c = null;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f56216d = null;

        public b(p pVar) {
            this.f56213a = pVar;
        }

        public r e() {
            return new r(this);
        }

        public b f(byte[] bArr) {
            this.f56216d = x.c(bArr);
            return this;
        }

        public b g(byte[] bArr) {
            this.f56215c = x.c(bArr);
            return this;
        }

        public b h(byte[] bArr) {
            this.f56214b = x.c(bArr);
            return this;
        }
    }

    private r(b bVar) {
        super(false, bVar.f56213a.e());
        p pVar = bVar.f56213a;
        this.f56209c = pVar;
        Objects.requireNonNull(pVar, "params == null");
        int f10 = pVar.f();
        byte[] bArr = bVar.f56216d;
        if (bArr != null) {
            if (bArr.length == f10 + f10) {
                this.f56210d = 0;
                this.f56211e = x.g(bArr, 0, f10);
                this.f56212f = x.g(bArr, f10 + 0, f10);
                return;
            } else if (bArr.length != f10 + 4 + f10) {
                throw new IllegalArgumentException("public key has wrong size");
            } else {
                this.f56210d = org.bouncycastle.util.g.a(bArr, 0);
                this.f56211e = x.g(bArr, 4, f10);
                this.f56212f = x.g(bArr, 4 + f10, f10);
                return;
            }
        }
        if (pVar.d() != null) {
            this.f56210d = pVar.d().a();
        } else {
            this.f56210d = 0;
        }
        byte[] bArr2 = bVar.f56214b;
        if (bArr2 == null) {
            this.f56211e = new byte[f10];
        } else if (bArr2.length != f10) {
            throw new IllegalArgumentException("length of root must be equal to length of digest");
        } else {
            this.f56211e = bArr2;
        }
        byte[] bArr3 = bVar.f56215c;
        if (bArr3 == null) {
            this.f56212f = new byte[f10];
        } else if (bArr3.length != f10) {
            throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
        } else {
            this.f56212f = bArr3;
        }
    }

    public p c() {
        return this.f56209c;
    }

    public byte[] d() {
        return x.c(this.f56212f);
    }

    public byte[] e() {
        return x.c(this.f56211e);
    }

    public byte[] f() {
        byte[] bArr;
        int f10 = this.f56209c.f();
        int i9 = this.f56210d;
        int i10 = 0;
        if (i9 != 0) {
            bArr = new byte[f10 + 4 + f10];
            org.bouncycastle.util.g.c(i9, bArr, 0);
            i10 = 4;
        } else {
            bArr = new byte[f10 + f10];
        }
        x.e(bArr, this.f56211e, i10);
        x.e(bArr, this.f56212f, i10 + f10);
        return bArr;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return f();
    }
}
