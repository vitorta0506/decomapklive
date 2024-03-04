package org.bouncycastle.pqc.crypto.xmss;

import java.io.IOException;
import java.util.Objects;
/* loaded from: classes7.dex */
public final class q extends o implements org.bouncycastle.util.c {

    /* renamed from: c  reason: collision with root package name */
    private final p f56191c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f56192d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f56193e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f56194f;

    /* renamed from: g  reason: collision with root package name */
    private final byte[] f56195g;

    /* renamed from: h  reason: collision with root package name */
    private volatile long f56196h;

    /* renamed from: i  reason: collision with root package name */
    private volatile BDSStateMap f56197i;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f56198j;

    /* loaded from: classes7.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final p f56199a;

        /* renamed from: b  reason: collision with root package name */
        private long f56200b = 0;

        /* renamed from: c  reason: collision with root package name */
        private long f56201c = -1;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f56202d = null;

        /* renamed from: e  reason: collision with root package name */
        private byte[] f56203e = null;

        /* renamed from: f  reason: collision with root package name */
        private byte[] f56204f = null;

        /* renamed from: g  reason: collision with root package name */
        private byte[] f56205g = null;

        /* renamed from: h  reason: collision with root package name */
        private BDSStateMap f56206h = null;

        /* renamed from: i  reason: collision with root package name */
        private byte[] f56207i = null;

        /* renamed from: j  reason: collision with root package name */
        private u f56208j = null;

        public b(p pVar) {
            this.f56199a = pVar;
        }

        public q k() {
            return new q(this);
        }

        public b l(BDSStateMap bDSStateMap) {
            if (bDSStateMap.getMaxIndex() == 0) {
                this.f56206h = new BDSStateMap(bDSStateMap, (1 << this.f56199a.a()) - 1);
            } else {
                this.f56206h = bDSStateMap;
            }
            return this;
        }

        public b m(long j10) {
            this.f56200b = j10;
            return this;
        }

        public b n(long j10) {
            this.f56201c = j10;
            return this;
        }

        public b o(byte[] bArr) {
            this.f56204f = x.c(bArr);
            return this;
        }

        public b p(byte[] bArr) {
            this.f56205g = x.c(bArr);
            return this;
        }

        public b q(byte[] bArr) {
            this.f56203e = x.c(bArr);
            return this;
        }

        public b r(byte[] bArr) {
            this.f56202d = x.c(bArr);
            return this;
        }
    }

    private q(b bVar) {
        super(true, bVar.f56199a.e());
        p pVar = bVar.f56199a;
        this.f56191c = pVar;
        Objects.requireNonNull(pVar, "params == null");
        int f10 = pVar.f();
        byte[] bArr = bVar.f56207i;
        if (bArr != null) {
            Objects.requireNonNull(bVar.f56208j, "xmss == null");
            int a10 = pVar.a();
            int i9 = (a10 + 7) / 8;
            this.f56196h = x.a(bArr, 0, i9);
            if (!x.l(a10, this.f56196h)) {
                throw new IllegalArgumentException("index out of bounds");
            }
            int i10 = i9 + 0;
            this.f56192d = x.g(bArr, i10, f10);
            int i11 = i10 + f10;
            this.f56193e = x.g(bArr, i11, f10);
            int i12 = i11 + f10;
            this.f56194f = x.g(bArr, i12, f10);
            int i13 = i12 + f10;
            this.f56195g = x.g(bArr, i13, f10);
            int i14 = i13 + f10;
            try {
                this.f56197i = ((BDSStateMap) x.f(x.g(bArr, i14, bArr.length - i14), BDSStateMap.class)).withWOTSDigest(bVar.f56208j.g());
                return;
            } catch (IOException e10) {
                throw new IllegalArgumentException(e10.getMessage(), e10);
            } catch (ClassNotFoundException e11) {
                throw new IllegalArgumentException(e11.getMessage(), e11);
            }
        }
        this.f56196h = bVar.f56200b;
        byte[] bArr2 = bVar.f56202d;
        if (bArr2 == null) {
            this.f56192d = new byte[f10];
        } else if (bArr2.length != f10) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal size of digest");
        } else {
            this.f56192d = bArr2;
        }
        byte[] bArr3 = bVar.f56203e;
        if (bArr3 == null) {
            this.f56193e = new byte[f10];
        } else if (bArr3.length != f10) {
            throw new IllegalArgumentException("size of secretKeyPRF needs to be equal size of digest");
        } else {
            this.f56193e = bArr3;
        }
        byte[] bArr4 = bVar.f56204f;
        if (bArr4 == null) {
            this.f56194f = new byte[f10];
        } else if (bArr4.length != f10) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal size of digest");
        } else {
            this.f56194f = bArr4;
        }
        byte[] bArr5 = bVar.f56205g;
        if (bArr5 == null) {
            this.f56195g = new byte[f10];
        } else if (bArr5.length != f10) {
            throw new IllegalArgumentException("size of root needs to be equal size of digest");
        } else {
            this.f56195g = bArr5;
        }
        BDSStateMap bDSStateMap = bVar.f56206h;
        if (bDSStateMap == null) {
            bDSStateMap = (!x.l(pVar.a(), bVar.f56200b) || bArr4 == null || bArr2 == null) ? new BDSStateMap(bVar.f56201c + 1) : new BDSStateMap(pVar, bVar.f56200b, bArr4, bArr2);
        }
        this.f56197i = bDSStateMap;
        if (bVar.f56201c >= 0 && bVar.f56201c != this.f56197i.getMaxIndex()) {
            throw new IllegalArgumentException("maxIndex set but not reflected in state");
        }
    }

    public q c(int i9) {
        q k10;
        if (i9 >= 1) {
            synchronized (this) {
                long j10 = i9;
                if (j10 > f()) {
                    throw new IllegalArgumentException("usageCount exceeds usages remaining");
                }
                k10 = new b(this.f56191c).r(this.f56192d).q(this.f56193e).o(this.f56194f).p(this.f56195g).m(d()).l(new BDSStateMap(this.f56197i, (d() + j10) - 1)).k();
                for (int i10 = 0; i10 != i9; i10++) {
                    g();
                }
            }
            return k10;
        }
        throw new IllegalArgumentException("cannot ask for a shard with 0 keys");
    }

    public long d() {
        return this.f56196h;
    }

    public p e() {
        return this.f56191c;
    }

    public long f() {
        long maxIndex;
        synchronized (this) {
            maxIndex = (this.f56197i.getMaxIndex() - d()) + 1;
        }
        return maxIndex;
    }

    q g() {
        synchronized (this) {
            if (d() < this.f56197i.getMaxIndex()) {
                this.f56197i.updateState(this.f56191c, this.f56196h, this.f56194f, this.f56192d);
                this.f56196h++;
            } else {
                this.f56196h = this.f56197i.getMaxIndex() + 1;
                this.f56197i = new BDSStateMap(this.f56197i.getMaxIndex());
            }
            this.f56198j = false;
        }
        return this;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        byte[] h10;
        synchronized (this) {
            h10 = h();
        }
        return h10;
    }

    public byte[] h() {
        byte[] j10;
        synchronized (this) {
            int f10 = this.f56191c.f();
            int a10 = (this.f56191c.a() + 7) / 8;
            byte[] bArr = new byte[a10 + f10 + f10 + f10 + f10];
            x.e(bArr, x.q(this.f56196h, a10), 0);
            int i9 = a10 + 0;
            x.e(bArr, this.f56192d, i9);
            int i10 = i9 + f10;
            x.e(bArr, this.f56193e, i10);
            int i11 = i10 + f10;
            x.e(bArr, this.f56194f, i11);
            x.e(bArr, this.f56195g, i11 + f10);
            try {
                j10 = org.bouncycastle.util.a.j(bArr, x.p(this.f56197i));
            } catch (IOException e10) {
                throw new IllegalStateException("error serializing bds state: " + e10.getMessage(), e10);
            }
        }
        return j10;
    }
}
