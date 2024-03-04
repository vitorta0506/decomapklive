package h3;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.i3;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.i6;
import com.google.common.collect.k6;
import h3.s;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import v2.o0;
import v2.q;
/* loaded from: classes2.dex */
public class a extends c {

    /* renamed from: h  reason: collision with root package name */
    private final j3.d f40349h;

    /* renamed from: i  reason: collision with root package name */
    private final long f40350i;

    /* renamed from: j  reason: collision with root package name */
    private final long f40351j;

    /* renamed from: k  reason: collision with root package name */
    private final long f40352k;

    /* renamed from: l  reason: collision with root package name */
    private final int f40353l;

    /* renamed from: m  reason: collision with root package name */
    private final int f40354m;

    /* renamed from: n  reason: collision with root package name */
    private final float f40355n;

    /* renamed from: o  reason: collision with root package name */
    private final float f40356o;

    /* renamed from: p  reason: collision with root package name */
    private final ImmutableList<C0437a> f40357p;

    /* renamed from: q  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d f40358q;

    /* renamed from: r  reason: collision with root package name */
    private float f40359r;

    /* renamed from: s  reason: collision with root package name */
    private int f40360s;

    /* renamed from: t  reason: collision with root package name */
    private int f40361t;

    /* renamed from: u  reason: collision with root package name */
    private long f40362u;

    /* renamed from: h3.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0437a {

        /* renamed from: a  reason: collision with root package name */
        public final long f40363a;

        /* renamed from: b  reason: collision with root package name */
        public final long f40364b;

        public C0437a(long j10, long j11) {
            this.f40363a = j10;
            this.f40364b = j11;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0437a) {
                C0437a c0437a = (C0437a) obj;
                return this.f40363a == c0437a.f40363a && this.f40364b == c0437a.f40364b;
            }
            return false;
        }

        public int hashCode() {
            return (((int) this.f40363a) * 31) + ((int) this.f40364b);
        }
    }

    /* loaded from: classes2.dex */
    public static class b implements s.b {

        /* renamed from: a  reason: collision with root package name */
        private final int f40365a;

        /* renamed from: b  reason: collision with root package name */
        private final int f40366b;

        /* renamed from: c  reason: collision with root package name */
        private final int f40367c;

        /* renamed from: d  reason: collision with root package name */
        private final int f40368d;

        /* renamed from: e  reason: collision with root package name */
        private final int f40369e;

        /* renamed from: f  reason: collision with root package name */
        private final float f40370f;

        /* renamed from: g  reason: collision with root package name */
        private final float f40371g;

        /* renamed from: h  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.d f40372h;

        public b() {
            this(10000, 25000, 25000, 0.7f);
        }

        @Override // h3.s.b
        public final s[] a(s.a[] aVarArr, j3.d dVar, q.b bVar, i3 i3Var) {
            s b10;
            ImmutableList q10 = a.q(aVarArr);
            s[] sVarArr = new s[aVarArr.length];
            for (int i9 = 0; i9 < aVarArr.length; i9++) {
                s.a aVar = aVarArr[i9];
                if (aVar != null) {
                    int[] iArr = aVar.f40474b;
                    if (iArr.length != 0) {
                        if (iArr.length == 1) {
                            b10 = new t(aVar.f40473a, iArr[0], aVar.f40475c);
                        } else {
                            b10 = b(aVar.f40473a, iArr, aVar.f40475c, dVar, (ImmutableList) q10.get(i9));
                        }
                        sVarArr[i9] = b10;
                    }
                }
            }
            return sVarArr;
        }

        protected a b(o0 o0Var, int[] iArr, int i9, j3.d dVar, ImmutableList<C0437a> immutableList) {
            return new a(o0Var, iArr, i9, dVar, this.f40365a, this.f40366b, this.f40367c, this.f40368d, this.f40369e, this.f40370f, this.f40371g, immutableList, this.f40372h);
        }

        public b(int i9, int i10, int i11, float f10) {
            this(i9, i10, i11, 1279, 719, f10, 0.75f, com.google.android.exoplayer2.util.d.f6951a);
        }

        public b(int i9, int i10, int i11, int i12, int i13, float f10, float f11, com.google.android.exoplayer2.util.d dVar) {
            this.f40365a = i9;
            this.f40366b = i10;
            this.f40367c = i11;
            this.f40368d = i12;
            this.f40369e = i13;
            this.f40370f = f10;
            this.f40371g = f11;
            this.f40372h = dVar;
        }
    }

    protected a(o0 o0Var, int[] iArr, int i9, j3.d dVar, long j10, long j11, long j12, int i10, int i11, float f10, float f11, List<C0437a> list, com.google.android.exoplayer2.util.d dVar2) {
        super(o0Var, iArr, i9);
        j3.d dVar3;
        long j13;
        if (j12 < j10) {
            com.google.android.exoplayer2.util.r.i("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            dVar3 = dVar;
            j13 = j10;
        } else {
            dVar3 = dVar;
            j13 = j12;
        }
        this.f40349h = dVar3;
        this.f40350i = j10 * 1000;
        this.f40351j = j11 * 1000;
        this.f40352k = j13 * 1000;
        this.f40353l = i10;
        this.f40354m = i11;
        this.f40355n = f10;
        this.f40356o = f11;
        this.f40357p = ImmutableList.copyOf((Collection) list);
        this.f40358q = dVar2;
        this.f40359r = 1.0f;
        this.f40361t = 0;
        this.f40362u = -9223372036854775807L;
    }

    private static void p(List<ImmutableList.b<C0437a>> list, long[] jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        for (int i9 = 0; i9 < list.size(); i9++) {
            ImmutableList.b<C0437a> bVar = list.get(i9);
            if (bVar != null) {
                bVar.a(new C0437a(j10, jArr[i9]));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList<ImmutableList<C0437a>> q(s.a[] aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < aVarArr.length; i9++) {
            if (aVarArr[i9] != null && aVarArr[i9].f40474b.length > 1) {
                ImmutableList.b builder = ImmutableList.builder();
                builder.a(new C0437a(0L, 0L));
                arrayList.add(builder);
            } else {
                arrayList.add(null);
            }
        }
        long[][] r10 = r(aVarArr);
        int[] iArr = new int[r10.length];
        long[] jArr = new long[r10.length];
        for (int i10 = 0; i10 < r10.length; i10++) {
            jArr[i10] = r10[i10].length == 0 ? 0L : r10[i10][0];
        }
        p(arrayList, jArr);
        ImmutableList<Integer> s10 = s(r10);
        for (int i11 = 0; i11 < s10.size(); i11++) {
            int intValue = s10.get(i11).intValue();
            int i12 = iArr[intValue] + 1;
            iArr[intValue] = i12;
            jArr[intValue] = r10[intValue][i12];
            p(arrayList, jArr);
        }
        for (int i13 = 0; i13 < aVarArr.length; i13++) {
            if (arrayList.get(i13) != null) {
                jArr[i13] = jArr[i13] * 2;
            }
        }
        p(arrayList, jArr);
        ImmutableList.b builder2 = ImmutableList.builder();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            ImmutableList.b bVar = (ImmutableList.b) arrayList.get(i14);
            builder2.a(bVar == null ? ImmutableList.of() : bVar.j());
        }
        return builder2.j();
    }

    private static long[][] r(s.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length];
        for (int i9 = 0; i9 < aVarArr.length; i9++) {
            s.a aVar = aVarArr[i9];
            if (aVar == null) {
                jArr[i9] = new long[0];
            } else {
                jArr[i9] = new long[aVar.f40474b.length];
                int i10 = 0;
                while (true) {
                    int[] iArr = aVar.f40474b;
                    if (i10 >= iArr.length) {
                        break;
                    }
                    jArr[i9][i10] = aVar.f40473a.b(iArr[i10]).f6107h;
                    i10++;
                }
                Arrays.sort(jArr[i9]);
            }
        }
        return jArr;
    }

    private static ImmutableList<Integer> s(long[][] jArr) {
        i6 e10 = k6.c().a().e();
        for (int i9 = 0; i9 < jArr.length; i9++) {
            if (jArr[i9].length > 1) {
                int length = jArr[i9].length;
                double[] dArr = new double[length];
                int i10 = 0;
                while (true) {
                    double d10 = 0.0d;
                    if (i10 >= jArr[i9].length) {
                        break;
                    }
                    if (jArr[i9][i10] != -1) {
                        d10 = Math.log(jArr[i9][i10]);
                    }
                    dArr[i10] = d10;
                    i10++;
                }
                int i11 = length - 1;
                double d11 = dArr[i11] - dArr[0];
                int i12 = 0;
                while (i12 < i11) {
                    double d12 = dArr[i12];
                    i12++;
                    e10.put(Double.valueOf(d11 == 0.0d ? 1.0d : (((d12 + dArr[i12]) * 0.5d) - dArr[0]) / d11), Integer.valueOf(i9));
                }
            }
        }
        return ImmutableList.copyOf(e10.values());
    }

    @Override // h3.s
    public int a() {
        return this.f40360s;
    }

    @Override // h3.c, h3.s
    public void d(float f10) {
        this.f40359r = f10;
    }

    @Override // h3.c, h3.s
    @CallSuper
    public void e() {
    }

    @Override // h3.c, h3.s
    @CallSuper
    public void j() {
        this.f40362u = -9223372036854775807L;
    }
}
