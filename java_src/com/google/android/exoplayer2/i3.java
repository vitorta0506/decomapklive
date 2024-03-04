package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.s1;
import com.google.common.collect.ImmutableList;
import w2.c;
/* loaded from: classes.dex */
public abstract class i3 implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final i3 f6023a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final h.a<i3> f6024b = new h.a() { // from class: com.google.android.exoplayer2.h3
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            i3 b10;
            b10 = i3.b(bundle);
            return b10;
        }
    };

    /* loaded from: classes.dex */
    class a extends i3 {
        a() {
        }

        @Override // com.google.android.exoplayer2.i3
        public int f(Object obj) {
            return -1;
        }

        @Override // com.google.android.exoplayer2.i3
        public b k(int i9, b bVar, boolean z10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.i3
        public int m() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.i3
        public Object q(int i9) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.i3
        public d s(int i9, d dVar, long j10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.i3
        public int t() {
            return 0;
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements h {

        /* renamed from: h  reason: collision with root package name */
        public static final h.a<b> f6025h = new h.a() { // from class: com.google.android.exoplayer2.j3
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                i3.b c10;
                c10 = i3.b.c(bundle);
                return c10;
            }
        };
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public Object f6026a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public Object f6027b;

        /* renamed from: c  reason: collision with root package name */
        public int f6028c;

        /* renamed from: d  reason: collision with root package name */
        public long f6029d;

        /* renamed from: e  reason: collision with root package name */
        public long f6030e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f6031f;

        /* renamed from: g  reason: collision with root package name */
        private w2.c f6032g = w2.c.f59362g;

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Bundle bundle) {
            w2.c cVar;
            int i9 = bundle.getInt(u(0), 0);
            long j10 = bundle.getLong(u(1), -9223372036854775807L);
            long j11 = bundle.getLong(u(2), 0L);
            boolean z10 = bundle.getBoolean(u(3));
            Bundle bundle2 = bundle.getBundle(u(4));
            if (bundle2 != null) {
                cVar = w2.c.f59364i.a(bundle2);
            } else {
                cVar = w2.c.f59362g;
            }
            w2.c cVar2 = cVar;
            b bVar = new b();
            bVar.w(null, null, i9, j10, j11, cVar2, z10);
            return bVar;
        }

        private static String u(int i9) {
            return Integer.toString(i9, 36);
        }

        public int d(int i9) {
            return this.f6032g.c(i9).f59373b;
        }

        public long e(int i9, int i10) {
            c.a c10 = this.f6032g.c(i9);
            if (c10.f59373b != -1) {
                return c10.f59376e[i10];
            }
            return -9223372036854775807L;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return com.google.android.exoplayer2.util.l0.c(this.f6026a, bVar.f6026a) && com.google.android.exoplayer2.util.l0.c(this.f6027b, bVar.f6027b) && this.f6028c == bVar.f6028c && this.f6029d == bVar.f6029d && this.f6030e == bVar.f6030e && this.f6031f == bVar.f6031f && com.google.android.exoplayer2.util.l0.c(this.f6032g, bVar.f6032g);
        }

        public int f() {
            return this.f6032g.f59366b;
        }

        public int g(long j10) {
            return this.f6032g.d(j10, this.f6029d);
        }

        public int h(long j10) {
            return this.f6032g.e(j10, this.f6029d);
        }

        public int hashCode() {
            Object obj = this.f6026a;
            int hashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.f6027b;
            int hashCode2 = obj2 != null ? obj2.hashCode() : 0;
            long j10 = this.f6029d;
            long j11 = this.f6030e;
            return ((((((((((hashCode + hashCode2) * 31) + this.f6028c) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f6031f ? 1 : 0)) * 31) + this.f6032g.hashCode();
        }

        public long i(int i9) {
            return this.f6032g.c(i9).f59372a;
        }

        public long j() {
            return this.f6032g.f59367c;
        }

        public int k(int i9, int i10) {
            c.a c10 = this.f6032g.c(i9);
            if (c10.f59373b != -1) {
                return c10.f59375d[i10];
            }
            return 0;
        }

        public long l(int i9) {
            return this.f6032g.c(i9).f59377f;
        }

        public long m() {
            return this.f6029d;
        }

        public int n(int i9) {
            return this.f6032g.c(i9).e();
        }

        public int o(int i9, int i10) {
            return this.f6032g.c(i9).f(i10);
        }

        public long p() {
            return com.google.android.exoplayer2.util.l0.P0(this.f6030e);
        }

        public long q() {
            return this.f6030e;
        }

        public int r() {
            return this.f6032g.f59369e;
        }

        public boolean s(int i9) {
            return !this.f6032g.c(i9).g();
        }

        public boolean t(int i9) {
            return this.f6032g.c(i9).f59378g;
        }

        public b v(@Nullable Object obj, @Nullable Object obj2, int i9, long j10, long j11) {
            return w(obj, obj2, i9, j10, j11, w2.c.f59362g, false);
        }

        public b w(@Nullable Object obj, @Nullable Object obj2, int i9, long j10, long j11, w2.c cVar, boolean z10) {
            this.f6026a = obj;
            this.f6027b = obj2;
            this.f6028c = i9;
            this.f6029d = j10;
            this.f6030e = j11;
            this.f6032g = cVar;
            this.f6031f = z10;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends i3 {

        /* renamed from: c  reason: collision with root package name */
        private final ImmutableList<d> f6033c;

        /* renamed from: d  reason: collision with root package name */
        private final ImmutableList<b> f6034d;

        /* renamed from: e  reason: collision with root package name */
        private final int[] f6035e;

        /* renamed from: f  reason: collision with root package name */
        private final int[] f6036f;

        public c(ImmutableList<d> immutableList, ImmutableList<b> immutableList2, int[] iArr) {
            com.google.android.exoplayer2.util.a.a(immutableList.size() == iArr.length);
            this.f6033c = immutableList;
            this.f6034d = immutableList2;
            this.f6035e = iArr;
            this.f6036f = new int[iArr.length];
            for (int i9 = 0; i9 < iArr.length; i9++) {
                this.f6036f[iArr[i9]] = i9;
            }
        }

        @Override // com.google.android.exoplayer2.i3
        public int e(boolean z10) {
            if (u()) {
                return -1;
            }
            if (z10) {
                return this.f6035e[0];
            }
            return 0;
        }

        @Override // com.google.android.exoplayer2.i3
        public int f(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.i3
        public int g(boolean z10) {
            if (u()) {
                return -1;
            }
            if (z10) {
                return this.f6035e[t() - 1];
            }
            return t() - 1;
        }

        @Override // com.google.android.exoplayer2.i3
        public int i(int i9, int i10, boolean z10) {
            if (i10 == 1) {
                return i9;
            }
            if (i9 != g(z10)) {
                return z10 ? this.f6035e[this.f6036f[i9] + 1] : i9 + 1;
            } else if (i10 == 2) {
                return e(z10);
            } else {
                return -1;
            }
        }

        @Override // com.google.android.exoplayer2.i3
        public b k(int i9, b bVar, boolean z10) {
            b bVar2 = this.f6034d.get(i9);
            bVar.w(bVar2.f6026a, bVar2.f6027b, bVar2.f6028c, bVar2.f6029d, bVar2.f6030e, bVar2.f6032g, bVar2.f6031f);
            return bVar;
        }

        @Override // com.google.android.exoplayer2.i3
        public int m() {
            return this.f6034d.size();
        }

        @Override // com.google.android.exoplayer2.i3
        public int p(int i9, int i10, boolean z10) {
            if (i10 == 1) {
                return i9;
            }
            if (i9 != e(z10)) {
                return z10 ? this.f6035e[this.f6036f[i9] - 1] : i9 - 1;
            } else if (i10 == 2) {
                return g(z10);
            } else {
                return -1;
            }
        }

        @Override // com.google.android.exoplayer2.i3
        public Object q(int i9) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.i3
        public d s(int i9, d dVar, long j10) {
            d dVar2 = this.f6033c.get(i9);
            dVar.i(dVar2.f6041a, dVar2.f6043c, dVar2.f6044d, dVar2.f6045e, dVar2.f6046f, dVar2.f6047g, dVar2.f6048h, dVar2.f6049i, dVar2.f6051k, dVar2.f6053m, dVar2.f6054n, dVar2.f6055o, dVar2.f6056p, dVar2.f6057q);
            dVar.f6052l = dVar2.f6052l;
            return dVar;
        }

        @Override // com.google.android.exoplayer2.i3
        public int t() {
            return this.f6033c.size();
        }
    }

    /* loaded from: classes.dex */
    public static final class d implements h {

        /* renamed from: r  reason: collision with root package name */
        public static final Object f6037r = new Object();

        /* renamed from: s  reason: collision with root package name */
        private static final Object f6038s = new Object();

        /* renamed from: t  reason: collision with root package name */
        private static final s1 f6039t = new s1.c().c("com.google.android.exoplayer2.Timeline").e(Uri.EMPTY).a();

        /* renamed from: u  reason: collision with root package name */
        public static final h.a<d> f6040u = new h.a() { // from class: com.google.android.exoplayer2.k3
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                i3.d b10;
                b10 = i3.d.b(bundle);
                return b10;
            }
        };
        @Nullable
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public Object f6042b;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public Object f6044d;

        /* renamed from: e  reason: collision with root package name */
        public long f6045e;

        /* renamed from: f  reason: collision with root package name */
        public long f6046f;

        /* renamed from: g  reason: collision with root package name */
        public long f6047g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f6048h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f6049i;
        @Deprecated

        /* renamed from: j  reason: collision with root package name */
        public boolean f6050j;
        @Nullable

        /* renamed from: k  reason: collision with root package name */
        public s1.g f6051k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f6052l;

        /* renamed from: m  reason: collision with root package name */
        public long f6053m;

        /* renamed from: n  reason: collision with root package name */
        public long f6054n;

        /* renamed from: o  reason: collision with root package name */
        public int f6055o;

        /* renamed from: p  reason: collision with root package name */
        public int f6056p;

        /* renamed from: q  reason: collision with root package name */
        public long f6057q;

        /* renamed from: a  reason: collision with root package name */
        public Object f6041a = f6037r;

        /* renamed from: c  reason: collision with root package name */
        public s1 f6043c = f6039t;

        /* JADX INFO: Access modifiers changed from: private */
        public static d b(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(h(1));
            s1 a10 = bundle2 != null ? s1.f6451j.a(bundle2) : null;
            long j10 = bundle.getLong(h(2), -9223372036854775807L);
            long j11 = bundle.getLong(h(3), -9223372036854775807L);
            long j12 = bundle.getLong(h(4), -9223372036854775807L);
            boolean z10 = bundle.getBoolean(h(5), false);
            boolean z11 = bundle.getBoolean(h(6), false);
            Bundle bundle3 = bundle.getBundle(h(7));
            s1.g a11 = bundle3 != null ? s1.g.f6505g.a(bundle3) : null;
            boolean z12 = bundle.getBoolean(h(8), false);
            long j13 = bundle.getLong(h(9), 0L);
            long j14 = bundle.getLong(h(10), -9223372036854775807L);
            int i9 = bundle.getInt(h(11), 0);
            int i10 = bundle.getInt(h(12), 0);
            long j15 = bundle.getLong(h(13), 0L);
            d dVar = new d();
            dVar.i(f6038s, a10, null, j10, j11, j12, z10, z11, a11, j13, j14, i9, i10, j15);
            dVar.f6052l = z12;
            return dVar;
        }

        private static String h(int i9) {
            return Integer.toString(i9, 36);
        }

        public long c() {
            return com.google.android.exoplayer2.util.l0.V(this.f6047g);
        }

        public long d() {
            return com.google.android.exoplayer2.util.l0.P0(this.f6053m);
        }

        public long e() {
            return this.f6053m;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !d.class.equals(obj.getClass())) {
                return false;
            }
            d dVar = (d) obj;
            return com.google.android.exoplayer2.util.l0.c(this.f6041a, dVar.f6041a) && com.google.android.exoplayer2.util.l0.c(this.f6043c, dVar.f6043c) && com.google.android.exoplayer2.util.l0.c(this.f6044d, dVar.f6044d) && com.google.android.exoplayer2.util.l0.c(this.f6051k, dVar.f6051k) && this.f6045e == dVar.f6045e && this.f6046f == dVar.f6046f && this.f6047g == dVar.f6047g && this.f6048h == dVar.f6048h && this.f6049i == dVar.f6049i && this.f6052l == dVar.f6052l && this.f6053m == dVar.f6053m && this.f6054n == dVar.f6054n && this.f6055o == dVar.f6055o && this.f6056p == dVar.f6056p && this.f6057q == dVar.f6057q;
        }

        public long f() {
            return com.google.android.exoplayer2.util.l0.P0(this.f6054n);
        }

        public boolean g() {
            com.google.android.exoplayer2.util.a.f(this.f6050j == (this.f6051k != null));
            return this.f6051k != null;
        }

        public int hashCode() {
            int hashCode = (((217 + this.f6041a.hashCode()) * 31) + this.f6043c.hashCode()) * 31;
            Object obj = this.f6044d;
            int hashCode2 = (hashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            s1.g gVar = this.f6051k;
            int hashCode3 = gVar != null ? gVar.hashCode() : 0;
            long j10 = this.f6045e;
            long j11 = this.f6046f;
            long j12 = this.f6047g;
            long j13 = this.f6053m;
            long j14 = this.f6054n;
            long j15 = this.f6057q;
            return ((((((((((((((((((((((hashCode2 + hashCode3) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31) + (this.f6048h ? 1 : 0)) * 31) + (this.f6049i ? 1 : 0)) * 31) + (this.f6052l ? 1 : 0)) * 31) + ((int) (j13 ^ (j13 >>> 32)))) * 31) + ((int) (j14 ^ (j14 >>> 32)))) * 31) + this.f6055o) * 31) + this.f6056p) * 31) + ((int) (j15 ^ (j15 >>> 32)));
        }

        public d i(Object obj, @Nullable s1 s1Var, @Nullable Object obj2, long j10, long j11, long j12, boolean z10, boolean z11, @Nullable s1.g gVar, long j13, long j14, int i9, int i10, long j15) {
            s1.h hVar;
            this.f6041a = obj;
            this.f6043c = s1Var != null ? s1Var : f6039t;
            this.f6042b = (s1Var == null || (hVar = s1Var.f6453b) == null) ? null : hVar.f6523h;
            this.f6044d = obj2;
            this.f6045e = j10;
            this.f6046f = j11;
            this.f6047g = j12;
            this.f6048h = z10;
            this.f6049i = z11;
            this.f6050j = gVar != null;
            this.f6051k = gVar;
            this.f6053m = j13;
            this.f6054n = j14;
            this.f6055o = i9;
            this.f6056p = i10;
            this.f6057q = j15;
            this.f6052l = false;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static i3 b(Bundle bundle) {
        ImmutableList c10 = c(d.f6040u, com.google.android.exoplayer2.util.b.a(bundle, w(0)));
        ImmutableList c11 = c(b.f6025h, com.google.android.exoplayer2.util.b.a(bundle, w(1)));
        int[] intArray = bundle.getIntArray(w(2));
        if (intArray == null) {
            intArray = d(c10.size());
        }
        return new c(c10, c11, intArray);
    }

    private static <T extends h> ImmutableList<T> c(h.a<T> aVar, @Nullable IBinder iBinder) {
        if (iBinder == null) {
            return ImmutableList.of();
        }
        ImmutableList.b bVar = new ImmutableList.b();
        ImmutableList<Bundle> a10 = g.a(iBinder);
        for (int i9 = 0; i9 < a10.size(); i9++) {
            bVar.a(aVar.a(a10.get(i9)));
        }
        return bVar.j();
    }

    private static int[] d(int i9) {
        int[] iArr = new int[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            iArr[i10] = i10;
        }
        return iArr;
    }

    private static String w(int i9) {
        return Integer.toString(i9, 36);
    }

    public int e(boolean z10) {
        return u() ? -1 : 0;
    }

    public boolean equals(@Nullable Object obj) {
        int g10;
        if (this == obj) {
            return true;
        }
        if (obj instanceof i3) {
            i3 i3Var = (i3) obj;
            if (i3Var.t() == t() && i3Var.m() == m()) {
                d dVar = new d();
                b bVar = new b();
                d dVar2 = new d();
                b bVar2 = new b();
                for (int i9 = 0; i9 < t(); i9++) {
                    if (!r(i9, dVar).equals(i3Var.r(i9, dVar2))) {
                        return false;
                    }
                }
                for (int i10 = 0; i10 < m(); i10++) {
                    if (!k(i10, bVar, true).equals(i3Var.k(i10, bVar2, true))) {
                        return false;
                    }
                }
                int e10 = e(true);
                if (e10 == i3Var.e(true) && (g10 = g(true)) == i3Var.g(true)) {
                    while (e10 != g10) {
                        int i11 = i(e10, 0, true);
                        if (i11 != i3Var.i(e10, 0, true)) {
                            return false;
                        }
                        e10 = i11;
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public abstract int f(Object obj);

    public int g(boolean z10) {
        if (u()) {
            return -1;
        }
        return t() - 1;
    }

    public final int h(int i9, b bVar, d dVar, int i10, boolean z10) {
        int i11 = j(i9, bVar).f6028c;
        if (r(i11, dVar).f6056p == i9) {
            int i12 = i(i11, i10, z10);
            if (i12 == -1) {
                return -1;
            }
            return r(i12, dVar).f6055o;
        }
        return i9 + 1;
    }

    public int hashCode() {
        d dVar = new d();
        b bVar = new b();
        int t10 = 217 + t();
        for (int i9 = 0; i9 < t(); i9++) {
            t10 = (t10 * 31) + r(i9, dVar).hashCode();
        }
        int m10 = (t10 * 31) + m();
        for (int i10 = 0; i10 < m(); i10++) {
            m10 = (m10 * 31) + k(i10, bVar, true).hashCode();
        }
        int e10 = e(true);
        while (e10 != -1) {
            m10 = (m10 * 31) + e10;
            e10 = i(e10, 0, true);
        }
        return m10;
    }

    public int i(int i9, int i10, boolean z10) {
        if (i10 == 0) {
            if (i9 == g(z10)) {
                return -1;
            }
            return i9 + 1;
        } else if (i10 != 1) {
            if (i10 == 2) {
                return i9 == g(z10) ? e(z10) : i9 + 1;
            }
            throw new IllegalStateException();
        } else {
            return i9;
        }
    }

    public final b j(int i9, b bVar) {
        return k(i9, bVar, false);
    }

    public abstract b k(int i9, b bVar, boolean z10);

    public b l(Object obj, b bVar) {
        return k(f(obj), bVar, true);
    }

    public abstract int m();

    public final Pair<Object, Long> n(d dVar, b bVar, int i9, long j10) {
        return (Pair) com.google.android.exoplayer2.util.a.e(o(dVar, bVar, i9, j10, 0L));
    }

    @Nullable
    public final Pair<Object, Long> o(d dVar, b bVar, int i9, long j10, long j11) {
        com.google.android.exoplayer2.util.a.c(i9, 0, t());
        s(i9, dVar, j11);
        if (j10 == -9223372036854775807L) {
            j10 = dVar.e();
            if (j10 == -9223372036854775807L) {
                return null;
            }
        }
        int i10 = dVar.f6055o;
        j(i10, bVar);
        while (i10 < dVar.f6056p && bVar.f6030e != j10) {
            int i11 = i10 + 1;
            if (j(i11, bVar).f6030e > j10) {
                break;
            }
            i10 = i11;
        }
        k(i10, bVar, true);
        long j12 = j10 - bVar.f6030e;
        long j13 = bVar.f6029d;
        if (j13 != -9223372036854775807L) {
            j12 = Math.min(j12, j13 - 1);
        }
        return Pair.create(com.google.android.exoplayer2.util.a.e(bVar.f6027b), Long.valueOf(Math.max(0L, j12)));
    }

    public int p(int i9, int i10, boolean z10) {
        if (i10 == 0) {
            if (i9 == e(z10)) {
                return -1;
            }
            return i9 - 1;
        } else if (i10 != 1) {
            if (i10 == 2) {
                return i9 == e(z10) ? g(z10) : i9 - 1;
            }
            throw new IllegalStateException();
        } else {
            return i9;
        }
    }

    public abstract Object q(int i9);

    public final d r(int i9, d dVar) {
        return s(i9, dVar, 0L);
    }

    public abstract d s(int i9, d dVar, long j10);

    public abstract int t();

    public final boolean u() {
        return t() == 0;
    }

    public final boolean v(int i9, b bVar, d dVar, int i10, boolean z10) {
        return h(i9, bVar, dVar, i10, z10) == -1;
    }
}
