package com.google.common.hash;

import com.google.common.hash.BloomFilter;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class g implements BloomFilter.c {

    /* renamed from: a  reason: collision with root package name */
    public static final g f13526a = new a("MURMUR128_MITZ_32", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final g f13527b = new g("MURMUR128_MITZ_64", 1) { // from class: com.google.common.hash.g.b
        private long b(byte[] bArr) {
            return com.google.common.primitives.h.d(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        private long c(byte[] bArr) {
            return com.google.common.primitives.h.d(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }

        @Override // com.google.common.hash.BloomFilter.c
        public <T> boolean M(T t10, Funnel<? super T> funnel, int i9, c cVar) {
            long b10 = cVar.b();
            byte[] g10 = k.a().b(t10, funnel).g();
            long b11 = b(g10);
            long c10 = c(g10);
            boolean z10 = false;
            for (int i10 = 0; i10 < i9; i10++) {
                z10 |= cVar.g((Long.MAX_VALUE & b11) % b10);
                b11 += c10;
            }
            return z10;
        }

        @Override // com.google.common.hash.BloomFilter.c
        public <T> boolean y(T t10, Funnel<? super T> funnel, int i9, c cVar) {
            long b10 = cVar.b();
            byte[] g10 = k.a().b(t10, funnel).g();
            long b11 = b(g10);
            long c10 = c(g10);
            for (int i10 = 0; i10 < i9; i10++) {
                if (!cVar.d((Long.MAX_VALUE & b11) % b10)) {
                    return false;
                }
                b11 += c10;
            }
            return true;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ g[] f13528c = a();

    /* loaded from: classes2.dex */
    enum a extends g {
        a(String str, int i9) {
            super(str, i9, null);
        }

        @Override // com.google.common.hash.BloomFilter.c
        public <T> boolean M(T t10, Funnel<? super T> funnel, int i9, c cVar) {
            long b10 = cVar.b();
            long c10 = k.a().b(t10, funnel).c();
            int i10 = (int) c10;
            int i11 = (int) (c10 >>> 32);
            boolean z10 = false;
            for (int i12 = 1; i12 <= i9; i12++) {
                int i13 = (i12 * i11) + i10;
                if (i13 < 0) {
                    i13 = ~i13;
                }
                z10 |= cVar.g(i13 % b10);
            }
            return z10;
        }

        @Override // com.google.common.hash.BloomFilter.c
        public <T> boolean y(T t10, Funnel<? super T> funnel, int i9, c cVar) {
            long b10 = cVar.b();
            long c10 = k.a().b(t10, funnel).c();
            int i10 = (int) c10;
            int i11 = (int) (c10 >>> 32);
            for (int i12 = 1; i12 <= i9; i12++) {
                int i13 = (i12 * i11) + i10;
                if (i13 < 0) {
                    i13 = ~i13;
                }
                if (!cVar.d(i13 % b10)) {
                    return false;
                }
            }
            return true;
        }
    }

    private g(String str, int i9) {
    }

    private static /* synthetic */ g[] a() {
        return new g[]{f13526a, f13527b};
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f13528c.clone();
    }

    /* synthetic */ g(String str, int i9, a aVar) {
        this(str, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        final AtomicLongArray f13529a;

        /* renamed from: b  reason: collision with root package name */
        private final m f13530b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(long j10) {
            com.google.common.base.o.e(j10 > 0, "data length is zero!");
            this.f13529a = new AtomicLongArray(com.google.common.primitives.f.d(com.google.common.math.e.d(j10, 64L, RoundingMode.CEILING)));
            this.f13530b = n.a();
        }

        public static long[] h(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i9 = 0; i9 < length; i9++) {
                jArr[i9] = atomicLongArray.get(i9);
            }
            return jArr;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long a() {
            return this.f13530b.a();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long b() {
            return this.f13529a.length() * 64;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c c() {
            return new c(h(this.f13529a));
        }

        boolean d(long j10) {
            return ((1 << ((int) j10)) & this.f13529a.get((int) (j10 >>> 6))) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void e(c cVar) {
            com.google.common.base.o.i(this.f13529a.length() == cVar.f13529a.length(), "BitArrays must be of equal length (%s != %s)", this.f13529a.length(), cVar.f13529a.length());
            for (int i9 = 0; i9 < this.f13529a.length(); i9++) {
                f(i9, cVar.f13529a.get(i9));
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return Arrays.equals(h(this.f13529a), h(((c) obj).f13529a));
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void f(int i9, long j10) {
            long j11;
            long j12;
            boolean z10;
            while (true) {
                j11 = this.f13529a.get(i9);
                j12 = j11 | j10;
                if (j11 != j12) {
                    if (this.f13529a.compareAndSet(i9, j11, j12)) {
                        z10 = true;
                        break;
                    }
                } else {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                this.f13530b.add(Long.bitCount(j12) - Long.bitCount(j11));
            }
        }

        boolean g(long j10) {
            long j11;
            long j12;
            if (d(j10)) {
                return false;
            }
            int i9 = (int) (j10 >>> 6);
            long j13 = 1 << ((int) j10);
            do {
                j11 = this.f13529a.get(i9);
                j12 = j11 | j13;
                if (j11 == j12) {
                    return false;
                }
            } while (!this.f13529a.compareAndSet(i9, j11, j12));
            this.f13530b.increment();
            return true;
        }

        public int hashCode() {
            return Arrays.hashCode(h(this.f13529a));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(long[] jArr) {
            com.google.common.base.o.e(jArr.length > 0, "data length is zero!");
            this.f13529a = new AtomicLongArray(jArr);
            this.f13530b = n.a();
            long j10 = 0;
            for (long j11 : jArr) {
                j10 += Long.bitCount(j11);
            }
            this.f13530b.add(j10);
        }
    }
}
