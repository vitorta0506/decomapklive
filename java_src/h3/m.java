package h3;

import android.content.Context;
import android.graphics.Point;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.v2;
import com.google.android.exoplayer2.x2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.e3;
import com.google.common.collect.y6;
import com.guochao.faceshow.utils.BaseConfig;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import h3.a;
import h3.m;
import h3.s;
import h3.u;
import h3.z;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import v2.o0;
import v2.q;
import v2.q0;
/* loaded from: classes2.dex */
public class m extends u {

    /* renamed from: k  reason: collision with root package name */
    private static final y6<Integer> f40401k = y6.a(new Comparator() { // from class: h3.i
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int O;
            O = m.O((Integer) obj, (Integer) obj2);
            return O;
        }
    });

    /* renamed from: l  reason: collision with root package name */
    private static final y6<Integer> f40402l = y6.a(new Comparator() { // from class: h3.h
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int P;
            P = m.P((Integer) obj, (Integer) obj2);
            return P;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private final Object f40403d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final Context f40404e;

    /* renamed from: f  reason: collision with root package name */
    private final s.b f40405f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f40406g;
    @GuardedBy("lock")

    /* renamed from: h  reason: collision with root package name */
    private d f40407h;
    @Nullable
    @GuardedBy("lock")

    /* renamed from: i  reason: collision with root package name */
    private f f40408i;
    @GuardedBy("lock")

    /* renamed from: j  reason: collision with root package name */
    private com.google.android.exoplayer2.audio.e f40409j;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b extends h<b> implements Comparable<b> {

        /* renamed from: e  reason: collision with root package name */
        private final int f40410e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f40411f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private final String f40412g;

        /* renamed from: h  reason: collision with root package name */
        private final d f40413h;

        /* renamed from: i  reason: collision with root package name */
        private final boolean f40414i;

        /* renamed from: j  reason: collision with root package name */
        private final int f40415j;

        /* renamed from: k  reason: collision with root package name */
        private final int f40416k;

        /* renamed from: l  reason: collision with root package name */
        private final int f40417l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f40418m;

        /* renamed from: n  reason: collision with root package name */
        private final int f40419n;

        /* renamed from: o  reason: collision with root package name */
        private final int f40420o;

        /* renamed from: p  reason: collision with root package name */
        private final boolean f40421p;

        /* renamed from: q  reason: collision with root package name */
        private final int f40422q;

        /* renamed from: r  reason: collision with root package name */
        private final int f40423r;

        /* renamed from: s  reason: collision with root package name */
        private final int f40424s;

        /* renamed from: t  reason: collision with root package name */
        private final int f40425t;

        /* renamed from: u  reason: collision with root package name */
        private final boolean f40426u;

        /* renamed from: v  reason: collision with root package name */
        private final boolean f40427v;

        public b(int i9, o0 o0Var, int i10, d dVar, int i11, boolean z10, com.google.common.base.q<k1> qVar) {
            super(i9, o0Var, i10);
            int i12;
            int i13;
            int i14;
            this.f40413h = dVar;
            this.f40412g = m.S(this.f40454d.f6102c);
            this.f40414i = m.K(i11, false);
            int i15 = 0;
            while (true) {
                i12 = Integer.MAX_VALUE;
                if (i15 >= dVar.f40504n.size()) {
                    i15 = Integer.MAX_VALUE;
                    i13 = 0;
                    break;
                }
                i13 = m.C(this.f40454d, dVar.f40504n.get(i15), false);
                if (i13 > 0) {
                    break;
                }
                i15++;
            }
            this.f40416k = i15;
            this.f40415j = i13;
            this.f40417l = m.G(this.f40454d.f6104e, dVar.f40505o);
            k1 k1Var = this.f40454d;
            int i16 = k1Var.f6104e;
            this.f40418m = i16 == 0 || (i16 & 1) != 0;
            this.f40421p = (k1Var.f6103d & 1) != 0;
            int i17 = k1Var.f6124y;
            this.f40422q = i17;
            this.f40423r = k1Var.f6125z;
            int i18 = k1Var.f6107h;
            this.f40424s = i18;
            this.f40411f = (i18 == -1 || i18 <= dVar.f40507q) && (i17 == -1 || i17 <= dVar.f40506p) && qVar.apply(k1Var);
            String[] c02 = l0.c0();
            int i19 = 0;
            while (true) {
                if (i19 >= c02.length) {
                    i19 = Integer.MAX_VALUE;
                    i14 = 0;
                    break;
                }
                i14 = m.C(this.f40454d, c02[i19], false);
                if (i14 > 0) {
                    break;
                }
                i19++;
            }
            this.f40419n = i19;
            this.f40420o = i14;
            int i20 = 0;
            while (true) {
                if (i20 < dVar.f40508r.size()) {
                    String str = this.f40454d.f6111l;
                    if (str != null && str.equals(dVar.f40508r.get(i20))) {
                        i12 = i20;
                        break;
                    }
                    i20++;
                } else {
                    break;
                }
            }
            this.f40425t = i12;
            this.f40426u = v2.e(i11) == 128;
            this.f40427v = v2.g(i11) == 64;
            this.f40410e = f(i11, z10);
        }

        public static int c(List<b> list, List<b> list2) {
            return ((b) Collections.max(list)).compareTo((b) Collections.max(list2));
        }

        public static ImmutableList<b> e(int i9, o0 o0Var, d dVar, int[] iArr, boolean z10, com.google.common.base.q<k1> qVar) {
            ImmutableList.b builder = ImmutableList.builder();
            for (int i10 = 0; i10 < o0Var.f58912a; i10++) {
                builder.a(new b(i9, o0Var, i10, dVar, iArr[i10], z10, qVar));
            }
            return builder.j();
        }

        private int f(int i9, boolean z10) {
            if (m.K(i9, this.f40413h.N)) {
                if (this.f40411f || this.f40413h.H) {
                    if (m.K(i9, false) && this.f40411f && this.f40454d.f6107h != -1) {
                        d dVar = this.f40413h;
                        if (!dVar.f40514x && !dVar.f40513w && (dVar.P || !z10)) {
                            return 2;
                        }
                    }
                    return 1;
                }
                return 0;
            }
            return 0;
        }

        @Override // h3.m.h
        public int a() {
            return this.f40410e;
        }

        @Override // java.lang.Comparable
        /* renamed from: d */
        public int compareTo(b bVar) {
            y6 h10;
            if (this.f40411f && this.f40414i) {
                h10 = m.f40401k;
            } else {
                h10 = m.f40401k.h();
            }
            e3 g10 = e3.k().h(this.f40414i, bVar.f40414i).g(Integer.valueOf(this.f40416k), Integer.valueOf(bVar.f40416k), y6.e().h()).d(this.f40415j, bVar.f40415j).d(this.f40417l, bVar.f40417l).h(this.f40421p, bVar.f40421p).h(this.f40418m, bVar.f40418m).g(Integer.valueOf(this.f40419n), Integer.valueOf(bVar.f40419n), y6.e().h()).d(this.f40420o, bVar.f40420o).h(this.f40411f, bVar.f40411f).g(Integer.valueOf(this.f40425t), Integer.valueOf(bVar.f40425t), y6.e().h()).g(Integer.valueOf(this.f40424s), Integer.valueOf(bVar.f40424s), this.f40413h.f40513w ? m.f40401k.h() : m.f40402l).h(this.f40426u, bVar.f40426u).h(this.f40427v, bVar.f40427v).g(Integer.valueOf(this.f40422q), Integer.valueOf(bVar.f40422q), h10).g(Integer.valueOf(this.f40423r), Integer.valueOf(bVar.f40423r), h10);
            Integer valueOf = Integer.valueOf(this.f40424s);
            Integer valueOf2 = Integer.valueOf(bVar.f40424s);
            if (!l0.c(this.f40412g, bVar.f40412g)) {
                h10 = m.f40402l;
            }
            return g10.g(valueOf, valueOf2, h10).j();
        }

        @Override // h3.m.h
        /* renamed from: g */
        public boolean b(b bVar) {
            int i9;
            String str;
            int i10;
            d dVar = this.f40413h;
            if ((dVar.K || ((i10 = this.f40454d.f6124y) != -1 && i10 == bVar.f40454d.f6124y)) && (dVar.I || ((str = this.f40454d.f6111l) != null && TextUtils.equals(str, bVar.f40454d.f6111l)))) {
                d dVar2 = this.f40413h;
                if ((dVar2.J || ((i9 = this.f40454d.f6125z) != -1 && i9 == bVar.f40454d.f6125z)) && (dVar2.L || (this.f40426u == bVar.f40426u && this.f40427v == bVar.f40427v))) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c implements Comparable<c> {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f40428a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f40429b;

        public c(k1 k1Var, int i9) {
            this.f40428a = (k1Var.f6103d & 1) != 0;
            this.f40429b = m.K(i9, false);
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(c cVar) {
            return e3.k().h(this.f40429b, cVar.f40429b).h(this.f40428a, cVar.f40428a).j();
        }
    }

    /* loaded from: classes2.dex */
    public static final class d extends z {
        @Deprecated
        public static final d V1;

        /* renamed from: a1  reason: collision with root package name */
        public static final d f40430a1;

        /* renamed from: a2  reason: collision with root package name */
        public static final h.a<d> f40431a2;
        public final boolean D;
        public final boolean E;
        public final boolean F;
        public final boolean G;
        public final boolean H;
        public final boolean I;
        public final boolean J;
        public final boolean K;
        public final boolean L;
        public final boolean M;
        public final boolean N;
        public final boolean O;
        public final boolean P;
        private final SparseArray<Map<q0, e>> Q;
        private final SparseBooleanArray R;

        static {
            d A = new a().A();
            f40430a1 = A;
            V1 = A;
            f40431a2 = new h.a() { // from class: h3.n
                @Override // com.google.android.exoplayer2.h.a
                public final com.google.android.exoplayer2.h a(Bundle bundle) {
                    m.d o10;
                    o10 = m.d.o(bundle);
                    return o10;
                }
            };
        }

        private static boolean g(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i9 = 0; i9 < size; i9++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i9)) < 0) {
                    return false;
                }
            }
            return true;
        }

        private static boolean h(SparseArray<Map<q0, e>> sparseArray, SparseArray<Map<q0, e>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i9 = 0; i9 < size; i9++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i9));
                if (indexOfKey < 0 || !i(sparseArray.valueAt(i9), sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static boolean i(java.util.Map<v2.q0, h3.m.e> r4, java.util.Map<v2.q0, h3.m.e> r5) {
            /*
                int r0 = r4.size()
                int r1 = r5.size()
                r2 = 0
                if (r1 == r0) goto Lc
                return r2
            Lc:
                java.util.Set r4 = r4.entrySet()
                java.util.Iterator r4 = r4.iterator()
            L14:
                boolean r0 = r4.hasNext()
                if (r0 == 0) goto L3b
                java.lang.Object r0 = r4.next()
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                java.lang.Object r1 = r0.getKey()
                v2.q0 r1 = (v2.q0) r1
                boolean r3 = r5.containsKey(r1)
                if (r3 == 0) goto L3a
                java.lang.Object r0 = r0.getValue()
                java.lang.Object r1 = r5.get(r1)
                boolean r0 = com.google.android.exoplayer2.util.l0.c(r0, r1)
                if (r0 != 0) goto L14
            L3a:
                return r2
            L3b:
                r4 = 1
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: h3.m.d.i(java.util.Map, java.util.Map):boolean");
        }

        public static d k(Context context) {
            return new a(context).A();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ d o(Bundle bundle) {
            return new a(bundle).A();
        }

        @Override // h3.z
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return super.equals(dVar) && this.D == dVar.D && this.E == dVar.E && this.F == dVar.F && this.G == dVar.G && this.H == dVar.H && this.I == dVar.I && this.J == dVar.J && this.K == dVar.K && this.L == dVar.L && this.M == dVar.M && this.N == dVar.N && this.O == dVar.O && this.P == dVar.P && g(this.R, dVar.R) && h(this.Q, dVar.Q);
        }

        @Override // h3.z
        public int hashCode() {
            return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31) + (this.H ? 1 : 0)) * 31) + (this.I ? 1 : 0)) * 31) + (this.J ? 1 : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0)) * 31) + (this.M ? 1 : 0)) * 31) + (this.N ? 1 : 0)) * 31) + (this.O ? 1 : 0)) * 31) + (this.P ? 1 : 0);
        }

        @Override // h3.z
        /* renamed from: j */
        public a a() {
            return new a();
        }

        public boolean l(int i9) {
            return this.R.get(i9);
        }

        @Nullable
        @Deprecated
        public e m(int i9, q0 q0Var) {
            Map<q0, e> map = this.Q.get(i9);
            if (map != null) {
                return map.get(q0Var);
            }
            return null;
        }

        @Deprecated
        public boolean n(int i9, q0 q0Var) {
            Map<q0, e> map = this.Q.get(i9);
            return map != null && map.containsKey(q0Var);
        }

        /* loaded from: classes2.dex */
        public static final class a extends z.a {
            private boolean A;
            private boolean B;
            private boolean C;
            private boolean D;
            private boolean E;
            private boolean F;
            private boolean G;
            private boolean H;
            private boolean I;
            private boolean J;
            private boolean K;
            private boolean L;
            private boolean M;
            private final SparseArray<Map<q0, e>> N;
            private final SparseBooleanArray O;

            private static SparseArray<Map<q0, e>> d0(SparseArray<Map<q0, e>> sparseArray) {
                SparseArray<Map<q0, e>> sparseArray2 = new SparseArray<>();
                for (int i9 = 0; i9 < sparseArray.size(); i9++) {
                    sparseArray2.put(sparseArray.keyAt(i9), new HashMap(sparseArray.valueAt(i9)));
                }
                return sparseArray2;
            }

            private void e0() {
                this.A = true;
                this.B = false;
                this.C = true;
                this.D = false;
                this.E = true;
                this.F = false;
                this.G = false;
                this.H = false;
                this.I = false;
                this.J = true;
                this.K = true;
                this.L = false;
                this.M = true;
            }

            private SparseBooleanArray f0(@Nullable int[] iArr) {
                if (iArr == null) {
                    return new SparseBooleanArray();
                }
                SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
                for (int i9 : iArr) {
                    sparseBooleanArray.append(i9, true);
                }
                return sparseBooleanArray;
            }

            private void x0(Bundle bundle) {
                ImmutableList b10;
                SparseArray c10;
                int[] intArray = bundle.getIntArray(z.c(1010));
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(z.c(1011));
                if (parcelableArrayList == null) {
                    b10 = ImmutableList.of();
                } else {
                    b10 = com.google.android.exoplayer2.util.c.b(q0.f58919e, parcelableArrayList);
                }
                SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(z.c(1012));
                if (sparseParcelableArray == null) {
                    c10 = new SparseArray();
                } else {
                    c10 = com.google.android.exoplayer2.util.c.c(e.f40432e, sparseParcelableArray);
                }
                if (intArray == null || intArray.length != b10.size()) {
                    return;
                }
                for (int i9 = 0; i9 < intArray.length; i9++) {
                    w0(intArray[i9], (q0) b10.get(i9), (e) c10.get(i9));
                }
            }

            @Override // h3.z.a
            /* renamed from: A0 */
            public a K(int i9, int i10, boolean z10) {
                super.K(i9, i10, z10);
                return this;
            }

            @Override // h3.z.a
            /* renamed from: B0 */
            public a L(Context context, boolean z10) {
                super.L(context, z10);
                return this;
            }

            @Override // h3.z.a
            /* renamed from: b0 */
            public d A() {
                return new d(this);
            }

            @Override // h3.z.a
            /* renamed from: c0 */
            public a B(int i9) {
                super.B(i9);
                return this;
            }

            protected a g0(z zVar) {
                super.E(zVar);
                return this;
            }

            public a h0(boolean z10) {
                this.H = z10;
                return this;
            }

            public a i0(boolean z10) {
                this.I = z10;
                return this;
            }

            public a j0(boolean z10) {
                this.F = z10;
                return this;
            }

            public a k0(boolean z10) {
                this.G = z10;
                return this;
            }

            public a l0(boolean z10) {
                this.M = z10;
                return this;
            }

            public a m0(boolean z10) {
                this.D = z10;
                return this;
            }

            public a n0(boolean z10) {
                this.B = z10;
                return this;
            }

            public a o0(boolean z10) {
                this.C = z10;
                return this;
            }

            public a p0(boolean z10) {
                this.J = z10;
                return this;
            }

            public a q0(boolean z10) {
                this.E = z10;
                return this;
            }

            public a r0(boolean z10) {
                this.K = z10;
                return this;
            }

            public a s0(boolean z10) {
                this.A = z10;
                return this;
            }

            @Override // h3.z.a
            /* renamed from: t0 */
            public a F(int i9) {
                super.F(i9);
                return this;
            }

            @Override // h3.z.a
            /* renamed from: u0 */
            public a G(x xVar) {
                super.G(xVar);
                return this;
            }

            @Override // h3.z.a
            /* renamed from: v0 */
            public a H(Context context) {
                super.H(context);
                return this;
            }

            @Deprecated
            public a w0(int i9, q0 q0Var, @Nullable e eVar) {
                Map<q0, e> map = this.N.get(i9);
                if (map == null) {
                    map = new HashMap<>();
                    this.N.put(i9, map);
                }
                if (map.containsKey(q0Var) && l0.c(map.get(q0Var), eVar)) {
                    return this;
                }
                map.put(q0Var, eVar);
                return this;
            }

            @Override // h3.z.a
            /* renamed from: y0 */
            public a J(int i9, boolean z10) {
                super.J(i9, z10);
                return this;
            }

            public a z0(boolean z10) {
                this.L = z10;
                return this;
            }

            @Deprecated
            public a() {
                this.N = new SparseArray<>();
                this.O = new SparseBooleanArray();
                e0();
            }

            public a(Context context) {
                super(context);
                this.N = new SparseArray<>();
                this.O = new SparseBooleanArray();
                e0();
            }

            private a(d dVar) {
                super(dVar);
                this.A = dVar.D;
                this.B = dVar.E;
                this.C = dVar.F;
                this.D = dVar.G;
                this.E = dVar.H;
                this.F = dVar.I;
                this.G = dVar.J;
                this.H = dVar.K;
                this.I = dVar.L;
                this.J = dVar.M;
                this.K = dVar.N;
                this.L = dVar.O;
                this.M = dVar.P;
                this.N = d0(dVar.Q);
                this.O = dVar.R.clone();
            }

            private a(Bundle bundle) {
                super(bundle);
                e0();
                d dVar = d.f40430a1;
                s0(bundle.getBoolean(z.c(1000), dVar.D));
                n0(bundle.getBoolean(z.c(1001), dVar.E));
                o0(bundle.getBoolean(z.c(1002), dVar.F));
                m0(bundle.getBoolean(z.c(1014), dVar.G));
                q0(bundle.getBoolean(z.c(1003), dVar.H));
                j0(bundle.getBoolean(z.c(1004), dVar.I));
                k0(bundle.getBoolean(z.c(1005), dVar.J));
                h0(bundle.getBoolean(z.c(1006), dVar.K));
                i0(bundle.getBoolean(z.c(1015), dVar.L));
                p0(bundle.getBoolean(z.c(1016), dVar.M));
                r0(bundle.getBoolean(z.c(1007), dVar.N));
                z0(bundle.getBoolean(z.c(1008), dVar.O));
                l0(bundle.getBoolean(z.c(1009), dVar.P));
                this.N = new SparseArray<>();
                x0(bundle);
                this.O = f0(bundle.getIntArray(z.c(1013)));
            }
        }

        private d(a aVar) {
            super(aVar);
            this.D = aVar.A;
            this.E = aVar.B;
            this.F = aVar.C;
            this.G = aVar.D;
            this.H = aVar.E;
            this.I = aVar.F;
            this.J = aVar.G;
            this.K = aVar.H;
            this.L = aVar.I;
            this.M = aVar.J;
            this.N = aVar.K;
            this.O = aVar.L;
            this.P = aVar.M;
            this.Q = aVar.N;
            this.R = aVar.O;
        }
    }

    /* loaded from: classes2.dex */
    public static final class e implements com.google.android.exoplayer2.h {

        /* renamed from: e  reason: collision with root package name */
        public static final h.a<e> f40432e = new h.a() { // from class: h3.o
            @Override // com.google.android.exoplayer2.h.a
            public final com.google.android.exoplayer2.h a(Bundle bundle) {
                m.e c10;
                c10 = m.e.c(bundle);
                return c10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final int f40433a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f40434b;

        /* renamed from: c  reason: collision with root package name */
        public final int f40435c;

        /* renamed from: d  reason: collision with root package name */
        public final int f40436d;

        public e(int i9, int[] iArr, int i10) {
            this.f40433a = i9;
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f40434b = copyOf;
            this.f40435c = iArr.length;
            this.f40436d = i10;
            Arrays.sort(copyOf);
        }

        private static String b(int i9) {
            return Integer.toString(i9, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e c(Bundle bundle) {
            boolean z10 = false;
            int i9 = bundle.getInt(b(0), -1);
            int[] intArray = bundle.getIntArray(b(1));
            int i10 = bundle.getInt(b(2), -1);
            if (i9 >= 0 && i10 >= 0) {
                z10 = true;
            }
            com.google.android.exoplayer2.util.a.a(z10);
            com.google.android.exoplayer2.util.a.e(intArray);
            return new e(i9, intArray, i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f40433a == eVar.f40433a && Arrays.equals(this.f40434b, eVar.f40434b) && this.f40436d == eVar.f40436d;
        }

        public int hashCode() {
            return (((this.f40433a * 31) + Arrays.hashCode(this.f40434b)) * 31) + this.f40436d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(32)
    /* loaded from: classes2.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        private final Spatializer f40437a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f40438b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Handler f40439c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Spatializer.OnSpatializerStateChangedListener f40440d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements Spatializer.OnSpatializerStateChangedListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ m f40441a;

            a(f fVar, m mVar) {
                this.f40441a = mVar;
            }
        }

        private f(Spatializer spatializer) {
            this.f40437a = spatializer;
            this.f40438b = spatializer.getImmersiveAudioLevel() != 0;
        }

        @Nullable
        public static f g(Context context) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            if (audioManager == null) {
                return null;
            }
            return new f(audioManager.getSpatializer());
        }

        public boolean a(com.google.android.exoplayer2.audio.e eVar, k1 k1Var) {
            AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(l0.D(("audio/eac3-joc".equals(k1Var.f6111l) && k1Var.f6124y == 16) ? 12 : k1Var.f6124y));
            int i9 = k1Var.f6125z;
            if (i9 != -1) {
                channelMask.setSampleRate(i9);
            }
            return this.f40437a.canBeSpatialized(eVar.b().f5496a, channelMask.build());
        }

        public void b(m mVar, Looper looper) {
            if (this.f40440d == null && this.f40439c == null) {
                this.f40440d = new a(this, mVar);
                Handler handler = new Handler(looper);
                this.f40439c = handler;
                Spatializer spatializer = this.f40437a;
                Objects.requireNonNull(handler);
                spatializer.addOnSpatializerStateChangedListener(new androidx.emoji2.text.a(handler), this.f40440d);
            }
        }

        public boolean c() {
            return this.f40437a.isAvailable();
        }

        public boolean d() {
            return this.f40437a.isEnabled();
        }

        public boolean e() {
            return this.f40438b;
        }

        public void f() {
            Spatializer.OnSpatializerStateChangedListener onSpatializerStateChangedListener = this.f40440d;
            if (onSpatializerStateChangedListener == null || this.f40439c == null) {
                return;
            }
            this.f40437a.removeOnSpatializerStateChangedListener(onSpatializerStateChangedListener);
            ((Handler) l0.j(this.f40439c)).removeCallbacksAndMessages(null);
            this.f40439c = null;
            this.f40440d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g extends h<g> implements Comparable<g> {

        /* renamed from: e  reason: collision with root package name */
        private final int f40442e;

        /* renamed from: f  reason: collision with root package name */
        private final boolean f40443f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f40444g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f40445h;

        /* renamed from: i  reason: collision with root package name */
        private final int f40446i;

        /* renamed from: j  reason: collision with root package name */
        private final int f40447j;

        /* renamed from: k  reason: collision with root package name */
        private final int f40448k;

        /* renamed from: l  reason: collision with root package name */
        private final int f40449l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f40450m;

        public g(int i9, o0 o0Var, int i10, d dVar, int i11, @Nullable String str) {
            super(i9, o0Var, i10);
            ImmutableList<String> immutableList;
            int i12;
            int i13 = 0;
            this.f40443f = m.K(i11, false);
            int i14 = this.f40454d.f6103d & (~dVar.f40511u);
            this.f40444g = (i14 & 1) != 0;
            this.f40445h = (i14 & 2) != 0;
            int i15 = Integer.MAX_VALUE;
            if (dVar.f40509s.isEmpty()) {
                immutableList = ImmutableList.of("");
            } else {
                immutableList = dVar.f40509s;
            }
            int i16 = 0;
            while (true) {
                if (i16 >= immutableList.size()) {
                    i12 = 0;
                    break;
                }
                i12 = m.C(this.f40454d, immutableList.get(i16), dVar.f40512v);
                if (i12 > 0) {
                    i15 = i16;
                    break;
                }
                i16++;
            }
            this.f40446i = i15;
            this.f40447j = i12;
            int G = m.G(this.f40454d.f6104e, dVar.f40510t);
            this.f40448k = G;
            this.f40450m = (this.f40454d.f6104e & BaseConfig.DRESS_UP_TITLE) != 0;
            int C = m.C(this.f40454d, str, m.S(str) == null);
            this.f40449l = C;
            boolean z10 = i12 > 0 || (dVar.f40509s.isEmpty() && G > 0) || this.f40444g || (this.f40445h && C > 0);
            if (m.K(i11, dVar.N) && z10) {
                i13 = 1;
            }
            this.f40442e = i13;
        }

        public static int c(List<g> list, List<g> list2) {
            return list.get(0).compareTo(list2.get(0));
        }

        public static ImmutableList<g> e(int i9, o0 o0Var, d dVar, int[] iArr, @Nullable String str) {
            ImmutableList.b builder = ImmutableList.builder();
            for (int i10 = 0; i10 < o0Var.f58912a; i10++) {
                builder.a(new g(i9, o0Var, i10, dVar, iArr[i10], str));
            }
            return builder.j();
        }

        @Override // h3.m.h
        public int a() {
            return this.f40442e;
        }

        @Override // java.lang.Comparable
        /* renamed from: d */
        public int compareTo(g gVar) {
            e3 d10 = e3.k().h(this.f40443f, gVar.f40443f).g(Integer.valueOf(this.f40446i), Integer.valueOf(gVar.f40446i), y6.e().h()).d(this.f40447j, gVar.f40447j).d(this.f40448k, gVar.f40448k).h(this.f40444g, gVar.f40444g).g(Boolean.valueOf(this.f40445h), Boolean.valueOf(gVar.f40445h), this.f40447j == 0 ? y6.e() : y6.e().h()).d(this.f40449l, gVar.f40449l);
            if (this.f40448k == 0) {
                d10 = d10.i(this.f40450m, gVar.f40450m);
            }
            return d10.j();
        }

        @Override // h3.m.h
        /* renamed from: f */
        public boolean b(g gVar) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class h<T extends h<T>> {

        /* renamed from: a  reason: collision with root package name */
        public final int f40451a;

        /* renamed from: b  reason: collision with root package name */
        public final o0 f40452b;

        /* renamed from: c  reason: collision with root package name */
        public final int f40453c;

        /* renamed from: d  reason: collision with root package name */
        public final k1 f40454d;

        /* loaded from: classes2.dex */
        public interface a<T extends h<T>> {
            List<T> a(int i9, o0 o0Var, int[] iArr);
        }

        public h(int i9, o0 o0Var, int i10) {
            this.f40451a = i9;
            this.f40452b = o0Var;
            this.f40453c = i10;
            this.f40454d = o0Var.b(i10);
        }

        public abstract int a();

        public abstract boolean b(T t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class i extends h<i> {

        /* renamed from: e  reason: collision with root package name */
        private final boolean f40455e;

        /* renamed from: f  reason: collision with root package name */
        private final d f40456f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f40457g;

        /* renamed from: h  reason: collision with root package name */
        private final boolean f40458h;

        /* renamed from: i  reason: collision with root package name */
        private final int f40459i;

        /* renamed from: j  reason: collision with root package name */
        private final int f40460j;

        /* renamed from: k  reason: collision with root package name */
        private final int f40461k;

        /* renamed from: l  reason: collision with root package name */
        private final int f40462l;

        /* renamed from: m  reason: collision with root package name */
        private final boolean f40463m;

        /* renamed from: n  reason: collision with root package name */
        private final boolean f40464n;

        /* renamed from: o  reason: collision with root package name */
        private final int f40465o;

        /* renamed from: p  reason: collision with root package name */
        private final boolean f40466p;

        /* renamed from: q  reason: collision with root package name */
        private final boolean f40467q;

        /* renamed from: r  reason: collision with root package name */
        private final int f40468r;

        /* JADX WARN: Removed duplicated region for block: B:54:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00b5  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x00d6  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x00cc A[EDGE_INSN: B:78:0x00cc->B:68:0x00cc ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public i(int r5, v2.o0 r6, int r7, h3.m.d r8, int r9, int r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 248
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: h3.m.i.<init>(int, v2.o0, int, h3.m$d, int, int, boolean):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int e(i iVar, i iVar2) {
            e3 h10 = e3.k().h(iVar.f40458h, iVar2.f40458h).d(iVar.f40462l, iVar2.f40462l).h(iVar.f40463m, iVar2.f40463m).h(iVar.f40455e, iVar2.f40455e).h(iVar.f40457g, iVar2.f40457g).g(Integer.valueOf(iVar.f40461k), Integer.valueOf(iVar2.f40461k), y6.e().h()).h(iVar.f40466p, iVar2.f40466p).h(iVar.f40467q, iVar2.f40467q);
            if (iVar.f40466p && iVar.f40467q) {
                h10 = h10.d(iVar.f40468r, iVar2.f40468r);
            }
            return h10.j();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int f(i iVar, i iVar2) {
            y6 h10;
            if (iVar.f40455e && iVar.f40458h) {
                h10 = m.f40401k;
            } else {
                h10 = m.f40401k.h();
            }
            return e3.k().g(Integer.valueOf(iVar.f40459i), Integer.valueOf(iVar2.f40459i), iVar.f40456f.f40513w ? m.f40401k.h() : m.f40402l).g(Integer.valueOf(iVar.f40460j), Integer.valueOf(iVar2.f40460j), h10).g(Integer.valueOf(iVar.f40459i), Integer.valueOf(iVar2.f40459i), h10).j();
        }

        public static int g(List<i> list, List<i> list2) {
            return e3.k().g((i) Collections.max(list, new Comparator() { // from class: h3.p
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int e10;
                    e10 = m.i.e((m.i) obj, (m.i) obj2);
                    return e10;
                }
            }), (i) Collections.max(list2, new Comparator() { // from class: h3.p
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int e10;
                    e10 = m.i.e((m.i) obj, (m.i) obj2);
                    return e10;
                }
            }), new Comparator() { // from class: h3.p
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int e10;
                    e10 = m.i.e((m.i) obj, (m.i) obj2);
                    return e10;
                }
            }).d(list.size(), list2.size()).g((i) Collections.max(list, new Comparator() { // from class: h3.q
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int f10;
                    f10 = m.i.f((m.i) obj, (m.i) obj2);
                    return f10;
                }
            }), (i) Collections.max(list2, new Comparator() { // from class: h3.q
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int f10;
                    f10 = m.i.f((m.i) obj, (m.i) obj2);
                    return f10;
                }
            }), new Comparator() { // from class: h3.q
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int f10;
                    f10 = m.i.f((m.i) obj, (m.i) obj2);
                    return f10;
                }
            }).j();
        }

        public static ImmutableList<i> h(int i9, o0 o0Var, d dVar, int[] iArr, int i10) {
            int D = m.D(o0Var, dVar.f40499i, dVar.f40500j, dVar.f40501k);
            ImmutableList.b builder = ImmutableList.builder();
            for (int i11 = 0; i11 < o0Var.f58912a; i11++) {
                int f10 = o0Var.b(i11).f();
                builder.a(new i(i9, o0Var, i11, dVar, iArr[i11], i10, D == Integer.MAX_VALUE || (f10 != -1 && f10 <= D)));
            }
            return builder.j();
        }

        private int i(int i9, int i10) {
            if ((this.f40454d.f6104e & 16384) == 0 && m.K(i9, this.f40456f.N)) {
                if (this.f40455e || this.f40456f.D) {
                    if (m.K(i9, false) && this.f40457g && this.f40455e && this.f40454d.f6107h != -1) {
                        d dVar = this.f40456f;
                        if (!dVar.f40514x && !dVar.f40513w && (i9 & i10) != 0) {
                            return 2;
                        }
                    }
                    return 1;
                }
                return 0;
            }
            return 0;
        }

        @Override // h3.m.h
        public int a() {
            return this.f40465o;
        }

        @Override // h3.m.h
        /* renamed from: j */
        public boolean b(i iVar) {
            return (this.f40464n || l0.c(this.f40454d.f6111l, iVar.f40454d.f6111l)) && (this.f40456f.G || (this.f40466p == iVar.f40466p && this.f40467q == iVar.f40467q));
        }
    }

    public m(Context context) {
        this(context, new a.b());
    }

    private static void A(u.a aVar, z zVar, s.a[] aVarArr) {
        int d10 = aVar.d();
        HashMap hashMap = new HashMap();
        for (int i9 = 0; i9 < d10; i9++) {
            B(aVar.f(i9), zVar, hashMap);
        }
        B(aVar.h(), zVar, hashMap);
        for (int i10 = 0; i10 < d10; i10++) {
            x xVar = (x) hashMap.get(Integer.valueOf(aVar.e(i10)));
            if (xVar != null) {
                aVarArr[i10] = (xVar.f40489b.isEmpty() || aVar.f(i10).c(xVar.f40488a) == -1) ? null : new s.a(xVar.f40488a, com.google.common.primitives.f.j(xVar.f40489b));
            }
        }
    }

    private static void B(q0 q0Var, z zVar, Map<Integer, x> map) {
        x xVar;
        for (int i9 = 0; i9 < q0Var.f58920a; i9++) {
            x xVar2 = zVar.f40515y.get(q0Var.b(i9));
            if (xVar2 != null && ((xVar = map.get(Integer.valueOf(xVar2.b()))) == null || (xVar.f40489b.isEmpty() && !xVar2.f40489b.isEmpty()))) {
                map.put(Integer.valueOf(xVar2.b()), xVar2);
            }
        }
    }

    protected static int C(k1 k1Var, @Nullable String str, boolean z10) {
        if (TextUtils.isEmpty(str) || !str.equals(k1Var.f6102c)) {
            String S = S(str);
            String S2 = S(k1Var.f6102c);
            if (S2 == null || S == null) {
                return (z10 && S2 == null) ? 1 : 0;
            } else if (S2.startsWith(S) || S.startsWith(S2)) {
                return 3;
            } else {
                return l0.H0(S2, "-")[0].equals(l0.H0(S, "-")[0]) ? 2 : 0;
            }
        }
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int D(o0 o0Var, int i9, int i10, boolean z10) {
        int i11;
        int i12 = Integer.MAX_VALUE;
        if (i9 != Integer.MAX_VALUE && i10 != Integer.MAX_VALUE) {
            for (int i13 = 0; i13 < o0Var.f58912a; i13++) {
                k1 b10 = o0Var.b(i13);
                int i14 = b10.f6116q;
                if (i14 > 0 && (i11 = b10.f6117r) > 0) {
                    Point E = E(z10, i9, i10, i14, i11);
                    int i15 = b10.f6116q;
                    int i16 = b10.f6117r;
                    int i17 = i15 * i16;
                    if (i15 >= ((int) (E.x * 0.98f)) && i16 >= ((int) (E.y * 0.98f)) && i17 < i12) {
                        i12 = i17;
                    }
                }
            }
        }
        return i12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x000d, code lost:
        if ((r6 > r7) != (r4 > r5)) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Point E(boolean r3, int r4, int r5, int r6, int r7) {
        /*
            if (r3 == 0) goto L10
            r3 = 1
            r0 = 0
            if (r6 <= r7) goto L8
            r1 = 1
            goto L9
        L8:
            r1 = 0
        L9:
            if (r4 <= r5) goto Lc
            goto Ld
        Lc:
            r3 = 0
        Ld:
            if (r1 == r3) goto L10
            goto L13
        L10:
            r2 = r5
            r5 = r4
            r4 = r2
        L13:
            int r3 = r6 * r4
            int r0 = r7 * r5
            if (r3 < r0) goto L23
            android.graphics.Point r3 = new android.graphics.Point
            int r4 = com.google.android.exoplayer2.util.l0.l(r0, r6)
            r3.<init>(r5, r4)
            return r3
        L23:
            android.graphics.Point r5 = new android.graphics.Point
            int r3 = com.google.android.exoplayer2.util.l0.l(r3, r7)
            r5.<init>(r3, r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: h3.m.E(boolean, int, int, int, int):android.graphics.Point");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int G(int i9, int i10) {
        if (i9 == 0 || i9 != i10) {
            return Integer.bitCount(i9 & i10);
        }
        return Integer.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int H(@Nullable String str) {
        if (str == null) {
            return 0;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1662735862:
                if (str.equals(TPDecoderType.TP_CODEC_MIMETYPE_AV1)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1331836730:
                if (str.equals(TPDecoderType.TP_CODEC_MIMETYPE_AVC)) {
                    c10 = 2;
                    break;
                }
                break;
            case 1599127257:
                if (str.equals(TPDecoderType.TP_CODEC_MIMETYPE_VP9)) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 4;
            case 1:
                return 3;
            case 2:
                return 1;
            case 3:
                return 2;
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean I(k1 k1Var) {
        boolean z10;
        f fVar;
        f fVar2;
        synchronized (this.f40403d) {
            z10 = !this.f40407h.M || this.f40406g || k1Var.f6124y <= 2 || (J(k1Var) && (l0.f6985a < 32 || (fVar2 = this.f40408i) == null || !fVar2.e())) || (l0.f6985a >= 32 && (fVar = this.f40408i) != null && fVar.e() && this.f40408i.c() && this.f40408i.d() && this.f40408i.a(this.f40409j, k1Var));
        }
        return z10;
    }

    private static boolean J(k1 k1Var) {
        String str = k1Var.f6111l;
        if (str == null) {
            return false;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c10 = 0;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c10 = 1;
                    break;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }

    protected static boolean K(int i9, boolean z10) {
        int f10 = v2.f(i9);
        return f10 == 4 || (z10 && f10 == 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List L(d dVar, boolean z10, int i9, o0 o0Var, int[] iArr) {
        return b.e(i9, o0Var, dVar, iArr, z10, new com.google.common.base.q() { // from class: h3.d
            @Override // com.google.common.base.q
            public final boolean apply(Object obj) {
                boolean I;
                I = m.this.I((k1) obj);
                return I;
            }

            @Override // com.google.common.base.q, java.util.function.Predicate
            public /* synthetic */ boolean test(Object obj) {
                return com.google.common.base.p.a(this, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List M(d dVar, String str, int i9, o0 o0Var, int[] iArr) {
        return g.e(i9, o0Var, dVar, iArr, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List N(d dVar, int[] iArr, int i9, o0 o0Var, int[] iArr2) {
        return i.h(i9, o0Var, dVar, iArr2, iArr[i9]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int O(Integer num, Integer num2) {
        if (num.intValue() == -1) {
            return num2.intValue() == -1 ? 0 : -1;
        } else if (num2.intValue() == -1) {
            return 1;
        } else {
            return num.intValue() - num2.intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int P(Integer num, Integer num2) {
        return 0;
    }

    private static void Q(u.a aVar, int[][][] iArr, x2[] x2VarArr, s[] sVarArr) {
        boolean z10;
        boolean z11 = false;
        int i9 = -1;
        int i10 = -1;
        for (int i11 = 0; i11 < aVar.d(); i11++) {
            int e10 = aVar.e(i11);
            s sVar = sVarArr[i11];
            if ((e10 == 1 || e10 == 2) && sVar != null && T(iArr[i11], aVar.f(i11), sVar)) {
                if (e10 == 1) {
                    if (i10 != -1) {
                        z10 = false;
                        break;
                    }
                    i10 = i11;
                } else if (i9 != -1) {
                    z10 = false;
                    break;
                } else {
                    i9 = i11;
                }
            }
        }
        z10 = true;
        if (i10 != -1 && i9 != -1) {
            z11 = true;
        }
        if (z10 && z11) {
            x2 x2Var = new x2(true);
            x2VarArr[i10] = x2Var;
            x2VarArr[i9] = x2Var;
        }
    }

    private void R() {
        boolean z10;
        f fVar;
        synchronized (this.f40403d) {
            z10 = this.f40407h.M && !this.f40406g && l0.f6985a >= 32 && (fVar = this.f40408i) != null && fVar.e();
        }
        if (z10) {
            d();
        }
    }

    @Nullable
    protected static String S(@Nullable String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    private static boolean T(int[][] iArr, q0 q0Var, s sVar) {
        if (sVar == null) {
            return false;
        }
        int c10 = q0Var.c(sVar.h());
        for (int i9 = 0; i9 < sVar.length(); i9++) {
            if (v2.h(iArr[c10][sVar.c(i9)]) != 32) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    private <T extends h<T>> Pair<s.a, Integer> Y(int i9, u.a aVar, int[][][] iArr, h.a<T> aVar2, Comparator<List<T>> comparator) {
        int i10;
        RandomAccess randomAccess;
        u.a aVar3 = aVar;
        ArrayList arrayList = new ArrayList();
        int d10 = aVar.d();
        int i11 = 0;
        while (i11 < d10) {
            if (i9 == aVar3.e(i11)) {
                q0 f10 = aVar3.f(i11);
                for (int i12 = 0; i12 < f10.f58920a; i12++) {
                    o0 b10 = f10.b(i12);
                    List<T> a10 = aVar2.a(i11, b10, iArr[i11][i12]);
                    boolean[] zArr = new boolean[b10.f58912a];
                    int i13 = 0;
                    while (i13 < b10.f58912a) {
                        T t10 = a10.get(i13);
                        int a11 = t10.a();
                        if (zArr[i13] || a11 == 0) {
                            i10 = d10;
                        } else {
                            if (a11 == 1) {
                                randomAccess = ImmutableList.of(t10);
                                i10 = d10;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(t10);
                                int i14 = i13 + 1;
                                while (i14 < b10.f58912a) {
                                    T t11 = a10.get(i14);
                                    int i15 = d10;
                                    if (t11.a() == 2 && t10.b(t11)) {
                                        arrayList2.add(t11);
                                        zArr[i14] = true;
                                    }
                                    i14++;
                                    d10 = i15;
                                }
                                i10 = d10;
                                randomAccess = arrayList2;
                            }
                            arrayList.add(randomAccess);
                        }
                        i13++;
                        d10 = i10;
                    }
                }
            }
            i11++;
            aVar3 = aVar;
            d10 = d10;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i16 = 0; i16 < list.size(); i16++) {
            iArr2[i16] = ((h) list.get(i16)).f40453c;
        }
        h hVar = (h) list.get(0);
        return Pair.create(new s.a(hVar.f40452b, iArr2), Integer.valueOf(hVar.f40451a));
    }

    private void a0(d dVar) {
        boolean z10;
        com.google.android.exoplayer2.util.a.e(dVar);
        synchronized (this.f40403d) {
            z10 = !this.f40407h.equals(dVar);
            this.f40407h = dVar;
        }
        if (z10) {
            if (dVar.M && this.f40404e == null) {
                com.google.android.exoplayer2.util.r.i("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            d();
        }
    }

    private static void z(u.a aVar, d dVar, s.a[] aVarArr) {
        int d10 = aVar.d();
        for (int i9 = 0; i9 < d10; i9++) {
            q0 f10 = aVar.f(i9);
            if (dVar.n(i9, f10)) {
                e m10 = dVar.m(i9, f10);
                aVarArr[i9] = (m10 == null || m10.f40434b.length == 0) ? null : new s.a(f10.b(m10.f40433a), m10.f40434b, m10.f40436d);
            }
        }
    }

    @Override // h3.b0
    /* renamed from: F */
    public d b() {
        d dVar;
        synchronized (this.f40403d) {
            dVar = this.f40407h;
        }
        return dVar;
    }

    protected s.a[] U(u.a aVar, int[][][] iArr, int[] iArr2, d dVar) throws ExoPlaybackException {
        String str;
        int d10 = aVar.d();
        s.a[] aVarArr = new s.a[d10];
        Pair<s.a, Integer> Z = Z(aVar, iArr, iArr2, dVar);
        if (Z != null) {
            aVarArr[((Integer) Z.second).intValue()] = (s.a) Z.first;
        }
        Pair<s.a, Integer> V = V(aVar, iArr, iArr2, dVar);
        if (V != null) {
            aVarArr[((Integer) V.second).intValue()] = (s.a) V.first;
        }
        if (V == null) {
            str = null;
        } else {
            Object obj = V.first;
            str = ((s.a) obj).f40473a.b(((s.a) obj).f40474b[0]).f6102c;
        }
        Pair<s.a, Integer> X = X(aVar, iArr, dVar, str);
        if (X != null) {
            aVarArr[((Integer) X.second).intValue()] = (s.a) X.first;
        }
        for (int i9 = 0; i9 < d10; i9++) {
            int e10 = aVar.e(i9);
            if (e10 != 2 && e10 != 1 && e10 != 3) {
                aVarArr[i9] = W(e10, aVar.f(i9), iArr[i9], dVar);
            }
        }
        return aVarArr;
    }

    @Nullable
    protected Pair<s.a, Integer> V(u.a aVar, int[][][] iArr, int[] iArr2, final d dVar) throws ExoPlaybackException {
        final boolean z10 = false;
        int i9 = 0;
        while (true) {
            if (i9 < aVar.d()) {
                if (2 == aVar.e(i9) && aVar.f(i9).f58920a > 0) {
                    z10 = true;
                    break;
                }
                i9++;
            } else {
                break;
            }
        }
        return Y(1, aVar, iArr, new h.a() { // from class: h3.g
            @Override // h3.m.h.a
            public final List a(int i10, o0 o0Var, int[] iArr3) {
                List L;
                L = m.this.L(dVar, z10, i10, o0Var, iArr3);
                return L;
            }
        }, new Comparator() { // from class: h3.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.b.c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    protected s.a W(int i9, q0 q0Var, int[][] iArr, d dVar) throws ExoPlaybackException {
        o0 o0Var = null;
        c cVar = null;
        int i10 = 0;
        for (int i11 = 0; i11 < q0Var.f58920a; i11++) {
            o0 b10 = q0Var.b(i11);
            int[] iArr2 = iArr[i11];
            for (int i12 = 0; i12 < b10.f58912a; i12++) {
                if (K(iArr2[i12], dVar.N)) {
                    c cVar2 = new c(b10.b(i12), iArr2[i12]);
                    if (cVar == null || cVar2.compareTo(cVar) > 0) {
                        o0Var = b10;
                        i10 = i12;
                        cVar = cVar2;
                    }
                }
            }
        }
        if (o0Var == null) {
            return null;
        }
        return new s.a(o0Var, i10);
    }

    @Nullable
    protected Pair<s.a, Integer> X(u.a aVar, int[][][] iArr, final d dVar, @Nullable final String str) throws ExoPlaybackException {
        return Y(3, aVar, iArr, new h.a() { // from class: h3.e
            @Override // h3.m.h.a
            public final List a(int i9, o0 o0Var, int[] iArr2) {
                List M;
                M = m.M(m.d.this, str, i9, o0Var, iArr2);
                return M;
            }
        }, new Comparator() { // from class: h3.k
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.g.c((List) obj, (List) obj2);
            }
        });
    }

    @Nullable
    protected Pair<s.a, Integer> Z(u.a aVar, int[][][] iArr, final int[] iArr2, final d dVar) throws ExoPlaybackException {
        return Y(2, aVar, iArr, new h.a() { // from class: h3.f
            @Override // h3.m.h.a
            public final List a(int i9, o0 o0Var, int[] iArr3) {
                List N;
                N = m.N(m.d.this, iArr2, i9, o0Var, iArr3);
                return N;
            }
        }, new Comparator() { // from class: h3.l
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return m.i.g((List) obj, (List) obj2);
            }
        });
    }

    @Override // h3.b0
    public boolean e() {
        return true;
    }

    @Override // h3.b0
    public void g() {
        f fVar;
        synchronized (this.f40403d) {
            if (l0.f6985a >= 32 && (fVar = this.f40408i) != null) {
                fVar.f();
            }
        }
        super.g();
    }

    @Override // h3.b0
    public void i(com.google.android.exoplayer2.audio.e eVar) {
        boolean z10;
        synchronized (this.f40403d) {
            z10 = !this.f40409j.equals(eVar);
            this.f40409j = eVar;
        }
        if (z10) {
            R();
        }
    }

    @Override // h3.b0
    public void j(z zVar) {
        if (zVar instanceof d) {
            a0((d) zVar);
        }
        a0(new d.a().g0(zVar).A());
    }

    @Override // h3.u
    protected final Pair<x2[], s[]> n(u.a aVar, int[][][] iArr, int[] iArr2, q.b bVar, i3 i3Var) throws ExoPlaybackException {
        d dVar;
        f fVar;
        synchronized (this.f40403d) {
            dVar = this.f40407h;
            if (dVar.M && l0.f6985a >= 32 && (fVar = this.f40408i) != null) {
                fVar.b(this, (Looper) com.google.android.exoplayer2.util.a.h(Looper.myLooper()));
            }
        }
        int d10 = aVar.d();
        s.a[] U = U(aVar, iArr, iArr2, dVar);
        A(aVar, dVar, U);
        z(aVar, dVar, U);
        for (int i9 = 0; i9 < d10; i9++) {
            int e10 = aVar.e(i9);
            if (dVar.l(i9) || dVar.f40516z.contains(Integer.valueOf(e10))) {
                U[i9] = null;
            }
        }
        s[] a10 = this.f40405f.a(U, a(), bVar, i3Var);
        x2[] x2VarArr = new x2[d10];
        for (int i10 = 0; i10 < d10; i10++) {
            boolean z10 = true;
            if ((dVar.l(i10) || dVar.f40516z.contains(Integer.valueOf(aVar.e(i10)))) || (aVar.e(i10) != -2 && a10[i10] == null)) {
                z10 = false;
            }
            x2VarArr[i10] = z10 ? x2.f7298b : null;
        }
        if (dVar.O) {
            Q(aVar, iArr, x2VarArr, a10);
        }
        return Pair.create(x2VarArr, a10);
    }

    public m(Context context, s.b bVar) {
        this(context, d.k(context), bVar);
    }

    public m(Context context, z zVar, s.b bVar) {
        this(zVar, bVar, context);
    }

    private m(z zVar, s.b bVar, @Nullable Context context) {
        this.f40403d = new Object();
        this.f40404e = context != null ? context.getApplicationContext() : null;
        this.f40405f = bVar;
        if (zVar instanceof d) {
            this.f40407h = (d) zVar;
        } else {
            this.f40407h = (context == null ? d.f40430a1 : d.k(context)).a().g0(zVar).A();
        }
        this.f40409j = com.google.android.exoplayer2.audio.e.f5488g;
        boolean z10 = context != null && l0.r0(context);
        this.f40406g = z10;
        if (!z10 && context != null && l0.f6985a >= 32) {
            this.f40408i = f.g(context);
        }
        if (this.f40407h.M && context == null) {
            com.google.android.exoplayer2.util.r.i("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }
}
