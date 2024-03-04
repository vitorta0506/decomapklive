package org.bouncycastle.pqc.crypto.xmss;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class w extends n implements org.bouncycastle.util.c {

    /* renamed from: c  reason: collision with root package name */
    private final u f56241c;

    /* renamed from: d  reason: collision with root package name */
    private final int f56242d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f56243e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f56244f;

    /* loaded from: classes7.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final u f56245a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f56246b = null;

        /* renamed from: c  reason: collision with root package name */
        private byte[] f56247c = null;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f56248d = null;

        public b(u uVar) {
            this.f56245a = uVar;
        }

        public w e() {
            return new w(this);
        }

        public b f(byte[] bArr) {
            this.f56248d = x.c(bArr);
            return this;
        }

        public b g(byte[] bArr) {
            this.f56247c = x.c(bArr);
            return this;
        }

        public b h(byte[] bArr) {
            this.f56246b = x.c(bArr);
            return this;
        }
    }

    private w(b bVar) {
        super(false, bVar.f56245a.f());
        u uVar = bVar.f56245a;
        this.f56241c = uVar;
        Objects.requireNonNull(uVar, "params == null");
        int h10 = uVar.h();
        byte[] bArr = bVar.f56248d;
        if (bArr != null) {
            if (bArr.length == h10 + h10) {
                this.f56242d = 0;
                this.f56243e = x.g(bArr, 0, h10);
                this.f56244f = x.g(bArr, h10 + 0, h10);
                return;
            } else if (bArr.length != h10 + 4 + h10) {
                throw new IllegalArgumentException("public key has wrong size");
            } else {
                this.f56242d = org.bouncycastle.util.g.a(bArr, 0);
                this.f56243e = x.g(bArr, 4, h10);
                this.f56244f = x.g(bArr, 4 + h10, h10);
                return;
            }
        }
        if (uVar.e() != null) {
            this.f56242d = uVar.e().a();
        } else {
            this.f56242d = 0;
        }
        byte[] bArr2 = bVar.f56246b;
        if (bArr2 == null) {
            this.f56243e = new byte[h10];
        } else if (bArr2.length != h10) {
            throw new IllegalArgumentException("length of root must be equal to length of digest");
        } else {
            this.f56243e = bArr2;
        }
        byte[] bArr3 = bVar.f56247c;
        if (bArr3 == null) {
            this.f56244f = new byte[h10];
        } else if (bArr3.length != h10) {
            throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
        } else {
            this.f56244f = bArr3;
        }
    }

    public u c() {
        return this.f56241c;
    }

    public byte[] d() {
        return x.c(this.f56244f);
    }

    public byte[] e() {
        return x.c(this.f56243e);
    }

    public byte[] f() {
        byte[] bArr;
        int h10 = this.f56241c.h();
        int i9 = this.f56242d;
        int i10 = 0;
        if (i9 != 0) {
            bArr = new byte[h10 + 4 + h10];
            org.bouncycastle.util.g.c(i9, bArr, 0);
            i10 = 4;
        } else {
            bArr = new byte[h10 + h10];
        }
        x.e(bArr, this.f56243e, i10);
        x.e(bArr, this.f56244f, i10 + h10);
        return bArr;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        return f();
    }
}
