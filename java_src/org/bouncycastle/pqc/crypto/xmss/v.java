package org.bouncycastle.pqc.crypto.xmss;

import java.io.IOException;
import java.util.Objects;
import org.bouncycastle.pqc.crypto.xmss.h;
/* loaded from: classes7.dex */
public final class v extends n implements org.bouncycastle.util.c {

    /* renamed from: c  reason: collision with root package name */
    private final u f56226c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f56227d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f56228e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f56229f;

    /* renamed from: g  reason: collision with root package name */
    private final byte[] f56230g;

    /* renamed from: h  reason: collision with root package name */
    private volatile BDS f56231h;

    /* loaded from: classes7.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final u f56232a;

        /* renamed from: b  reason: collision with root package name */
        private int f56233b = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f56234c = -1;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f56235d = null;

        /* renamed from: e  reason: collision with root package name */
        private byte[] f56236e = null;

        /* renamed from: f  reason: collision with root package name */
        private byte[] f56237f = null;

        /* renamed from: g  reason: collision with root package name */
        private byte[] f56238g = null;

        /* renamed from: h  reason: collision with root package name */
        private BDS f56239h = null;

        /* renamed from: i  reason: collision with root package name */
        private byte[] f56240i = null;

        public b(u uVar) {
            this.f56232a = uVar;
        }

        public v j() {
            return new v(this);
        }

        public b k(BDS bds) {
            this.f56239h = bds;
            return this;
        }

        public b l(int i9) {
            this.f56233b = i9;
            return this;
        }

        public b m(int i9) {
            this.f56234c = i9;
            return this;
        }

        public b n(byte[] bArr) {
            this.f56237f = x.c(bArr);
            return this;
        }

        public b o(byte[] bArr) {
            this.f56238g = x.c(bArr);
            return this;
        }

        public b p(byte[] bArr) {
            this.f56236e = x.c(bArr);
            return this;
        }

        public b q(byte[] bArr) {
            this.f56235d = x.c(bArr);
            return this;
        }
    }

    private v(b bVar) {
        super(true, bVar.f56232a.f());
        u uVar = bVar.f56232a;
        this.f56226c = uVar;
        Objects.requireNonNull(uVar, "params == null");
        int h10 = uVar.h();
        byte[] bArr = bVar.f56240i;
        if (bArr != null) {
            int b10 = uVar.b();
            int a10 = org.bouncycastle.util.g.a(bArr, 0);
            if (!x.l(b10, a10)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            this.f56227d = x.g(bArr, 4, h10);
            int i9 = 4 + h10;
            this.f56228e = x.g(bArr, i9, h10);
            int i10 = i9 + h10;
            this.f56229f = x.g(bArr, i10, h10);
            int i11 = i10 + h10;
            this.f56230g = x.g(bArr, i11, h10);
            int i12 = i11 + h10;
            try {
                BDS bds = (BDS) x.f(x.g(bArr, i12, bArr.length - i12), BDS.class);
                if (bds.getIndex() != a10) {
                    throw new IllegalStateException("serialized BDS has wrong index");
                }
                this.f56231h = bds.withWOTSDigest(bVar.f56232a.g());
                return;
            } catch (IOException e10) {
                throw new IllegalArgumentException(e10.getMessage(), e10);
            } catch (ClassNotFoundException e11) {
                throw new IllegalArgumentException(e11.getMessage(), e11);
            }
        }
        byte[] bArr2 = bVar.f56235d;
        if (bArr2 == null) {
            this.f56227d = new byte[h10];
        } else if (bArr2.length != h10) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
        } else {
            this.f56227d = bArr2;
        }
        byte[] bArr3 = bVar.f56236e;
        if (bArr3 == null) {
            this.f56228e = new byte[h10];
        } else if (bArr3.length != h10) {
            throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
        } else {
            this.f56228e = bArr3;
        }
        byte[] bArr4 = bVar.f56237f;
        if (bArr4 == null) {
            this.f56229f = new byte[h10];
        } else if (bArr4.length != h10) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
        } else {
            this.f56229f = bArr4;
        }
        byte[] bArr5 = bVar.f56238g;
        if (bArr5 == null) {
            this.f56230g = new byte[h10];
        } else if (bArr5.length != h10) {
            throw new IllegalArgumentException("size of root needs to be equal size of digest");
        } else {
            this.f56230g = bArr5;
        }
        BDS bds2 = bVar.f56239h;
        this.f56231h = bds2 == null ? (bVar.f56233b >= (1 << uVar.b()) + (-2) || bArr4 == null || bArr2 == null) ? new BDS(uVar, (1 << uVar.b()) - 1, bVar.f56233b) : new BDS(uVar, bArr4, bArr2, (h) new h.b().l(), bVar.f56233b) : bds2;
        if (bVar.f56234c >= 0 && bVar.f56234c != this.f56231h.getMaxIndex()) {
            throw new IllegalArgumentException("maxIndex set but not reflected in state");
        }
    }

    public v c(int i9) {
        v j10;
        if (i9 >= 1) {
            synchronized (this) {
                long j11 = i9;
                if (j11 > f()) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining");
                }
                j10 = new b(this.f56226c).q(this.f56227d).p(this.f56228e).n(this.f56229f).o(this.f56230g).l(d()).k(this.f56231h.withMaxIndex((this.f56231h.getIndex() + i9) - 1, this.f56226c.g())).j();
                if (j11 == f()) {
                    this.f56231h = new BDS(this.f56226c, this.f56231h.getMaxIndex(), d() + i9);
                } else {
                    h hVar = (h) new h.b().l();
                    for (int i10 = 0; i10 != i9; i10++) {
                        this.f56231h = this.f56231h.getNextState(this.f56229f, this.f56227d, hVar);
                    }
                }
            }
            return j10;
        }
        throw new IllegalArgumentException("cannot ask for a shard with 0 keys");
    }

    public int d() {
        return this.f56231h.getIndex();
    }

    public u e() {
        return this.f56226c;
    }

    public long f() {
        long maxIndex;
        synchronized (this) {
            maxIndex = (this.f56231h.getMaxIndex() - d()) + 1;
        }
        return maxIndex;
    }

    public byte[] g() {
        byte[] j10;
        synchronized (this) {
            int h10 = this.f56226c.h();
            byte[] bArr = new byte[h10 + 4 + h10 + h10 + h10];
            org.bouncycastle.util.g.c(this.f56231h.getIndex(), bArr, 0);
            x.e(bArr, this.f56227d, 4);
            int i9 = 4 + h10;
            x.e(bArr, this.f56228e, i9);
            int i10 = i9 + h10;
            x.e(bArr, this.f56229f, i10);
            x.e(bArr, this.f56230g, i10 + h10);
            try {
                j10 = org.bouncycastle.util.a.j(bArr, x.p(this.f56231h));
            } catch (IOException e10) {
                throw new RuntimeException("error serializing bds state: " + e10.getMessage());
            }
        }
        return j10;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        byte[] g10;
        synchronized (this) {
            g10 = g();
        }
        return g10;
    }
}
