package m2;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import c2.b0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.l0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import m2.i0;
/* loaded from: classes.dex */
public final class h0 implements c2.l {

    /* renamed from: t  reason: collision with root package name */
    public static final c2.r f54501t = new c2.r() { // from class: m2.g0
        @Override // c2.r
        public /* synthetic */ c2.l[] a(Uri uri, Map map) {
            return c2.q.a(this, uri, map);
        }

        @Override // c2.r
        public final c2.l[] b() {
            c2.l[] w6;
            w6 = h0.w();
            return w6;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f54502a;

    /* renamed from: b  reason: collision with root package name */
    private final int f54503b;

    /* renamed from: c  reason: collision with root package name */
    private final List<com.google.android.exoplayer2.util.i0> f54504c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54505d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseIntArray f54506e;

    /* renamed from: f  reason: collision with root package name */
    private final i0.c f54507f;

    /* renamed from: g  reason: collision with root package name */
    private final SparseArray<i0> f54508g;

    /* renamed from: h  reason: collision with root package name */
    private final SparseBooleanArray f54509h;

    /* renamed from: i  reason: collision with root package name */
    private final SparseBooleanArray f54510i;

    /* renamed from: j  reason: collision with root package name */
    private final f0 f54511j;

    /* renamed from: k  reason: collision with root package name */
    private e0 f54512k;

    /* renamed from: l  reason: collision with root package name */
    private c2.n f54513l;

    /* renamed from: m  reason: collision with root package name */
    private int f54514m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f54515n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f54516o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f54517p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private i0 f54518q;

    /* renamed from: r  reason: collision with root package name */
    private int f54519r;

    /* renamed from: s  reason: collision with root package name */
    private int f54520s;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.a0 f54521a = new com.google.android.exoplayer2.util.a0(new byte[4]);

        public a() {
        }

        @Override // m2.b0
        public void a(com.google.android.exoplayer2.util.i0 i0Var, c2.n nVar, i0.d dVar) {
        }

        @Override // m2.b0
        public void b(com.google.android.exoplayer2.util.b0 b0Var) {
            if (b0Var.D() == 0 && (b0Var.D() & 128) != 0) {
                b0Var.Q(6);
                int a10 = b0Var.a() / 4;
                for (int i9 = 0; i9 < a10; i9++) {
                    b0Var.i(this.f54521a, 4);
                    int h10 = this.f54521a.h(16);
                    this.f54521a.r(3);
                    if (h10 == 0) {
                        this.f54521a.r(13);
                    } else {
                        int h11 = this.f54521a.h(13);
                        if (h0.this.f54508g.get(h11) == null) {
                            h0.this.f54508g.put(h11, new c0(new b(h11)));
                            h0.k(h0.this);
                        }
                    }
                }
                if (h0.this.f54502a != 2) {
                    h0.this.f54508g.remove(0);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    private class b implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.a0 f54523a = new com.google.android.exoplayer2.util.a0(new byte[5]);

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<i0> f54524b = new SparseArray<>();

        /* renamed from: c  reason: collision with root package name */
        private final SparseIntArray f54525c = new SparseIntArray();

        /* renamed from: d  reason: collision with root package name */
        private final int f54526d;

        public b(int i9) {
            this.f54526d = i9;
        }

        private i0.b c(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
            int e10 = b0Var.e();
            int i10 = i9 + e10;
            String str = null;
            ArrayList arrayList = null;
            int i11 = -1;
            while (b0Var.e() < i10) {
                int D = b0Var.D();
                int e11 = b0Var.e() + b0Var.D();
                if (e11 > i10) {
                    break;
                }
                if (D == 5) {
                    long F = b0Var.F();
                    if (F != 1094921523) {
                        if (F != 1161904947) {
                            if (F != 1094921524) {
                                if (F == 1212503619) {
                                    i11 = 36;
                                }
                            }
                            i11 = 172;
                        }
                        i11 = 135;
                    }
                    i11 = 129;
                } else {
                    if (D != 106) {
                        if (D != 122) {
                            if (D == 127) {
                                if (b0Var.D() != 21) {
                                }
                                i11 = 172;
                            } else if (D == 123) {
                                i11 = 138;
                            } else if (D == 10) {
                                str = b0Var.A(3).trim();
                            } else if (D == 89) {
                                arrayList = new ArrayList();
                                while (b0Var.e() < e11) {
                                    String trim = b0Var.A(3).trim();
                                    int D2 = b0Var.D();
                                    byte[] bArr = new byte[4];
                                    b0Var.j(bArr, 0, 4);
                                    arrayList.add(new i0.a(trim, D2, bArr));
                                }
                                i11 = 89;
                            } else if (D == 111) {
                                i11 = 257;
                            }
                        }
                        i11 = 135;
                    }
                    i11 = 129;
                }
                b0Var.Q(e11 - b0Var.e());
            }
            b0Var.P(i10);
            return new i0.b(i11, str, arrayList, Arrays.copyOfRange(b0Var.d(), e10, i10));
        }

        @Override // m2.b0
        public void a(com.google.android.exoplayer2.util.i0 i0Var, c2.n nVar, i0.d dVar) {
        }

        @Override // m2.b0
        public void b(com.google.android.exoplayer2.util.b0 b0Var) {
            com.google.android.exoplayer2.util.i0 i0Var;
            i0 b10;
            if (b0Var.D() != 2) {
                return;
            }
            if (h0.this.f54502a != 1 && h0.this.f54502a != 2 && h0.this.f54514m != 1) {
                i0Var = new com.google.android.exoplayer2.util.i0(((com.google.android.exoplayer2.util.i0) h0.this.f54504c.get(0)).c());
                h0.this.f54504c.add(i0Var);
            } else {
                i0Var = (com.google.android.exoplayer2.util.i0) h0.this.f54504c.get(0);
            }
            if ((b0Var.D() & 128) == 0) {
                return;
            }
            b0Var.Q(1);
            int J = b0Var.J();
            int i9 = 3;
            b0Var.Q(3);
            b0Var.i(this.f54523a, 2);
            this.f54523a.r(3);
            int i10 = 13;
            h0.this.f54520s = this.f54523a.h(13);
            b0Var.i(this.f54523a, 2);
            int i11 = 4;
            this.f54523a.r(4);
            b0Var.Q(this.f54523a.h(12));
            if (h0.this.f54502a == 2 && h0.this.f54518q == null) {
                i0.b bVar = new i0.b(21, null, null, l0.f6990f);
                h0 h0Var = h0.this;
                h0Var.f54518q = h0Var.f54507f.b(21, bVar);
                if (h0.this.f54518q != null) {
                    h0.this.f54518q.a(i0Var, h0.this.f54513l, new i0.d(J, 21, 8192));
                }
            }
            this.f54524b.clear();
            this.f54525c.clear();
            int a10 = b0Var.a();
            while (a10 > 0) {
                b0Var.i(this.f54523a, 5);
                int h10 = this.f54523a.h(8);
                this.f54523a.r(i9);
                int h11 = this.f54523a.h(i10);
                this.f54523a.r(i11);
                int h12 = this.f54523a.h(12);
                i0.b c10 = c(b0Var, h12);
                if (h10 == 6 || h10 == 5) {
                    h10 = c10.f54553a;
                }
                a10 -= h12 + 5;
                int i12 = h0.this.f54502a == 2 ? h10 : h11;
                if (!h0.this.f54509h.get(i12)) {
                    if (h0.this.f54502a == 2 && h10 == 21) {
                        b10 = h0.this.f54518q;
                    } else {
                        b10 = h0.this.f54507f.b(h10, c10);
                    }
                    if (h0.this.f54502a != 2 || h11 < this.f54525c.get(i12, 8192)) {
                        this.f54525c.put(i12, h11);
                        this.f54524b.put(i12, b10);
                    }
                }
                i9 = 3;
                i11 = 4;
                i10 = 13;
            }
            int size = this.f54525c.size();
            for (int i13 = 0; i13 < size; i13++) {
                int keyAt = this.f54525c.keyAt(i13);
                int valueAt = this.f54525c.valueAt(i13);
                h0.this.f54509h.put(keyAt, true);
                h0.this.f54510i.put(valueAt, true);
                i0 valueAt2 = this.f54524b.valueAt(i13);
                if (valueAt2 != null) {
                    if (valueAt2 != h0.this.f54518q) {
                        valueAt2.a(i0Var, h0.this.f54513l, new i0.d(J, keyAt, 8192));
                    }
                    h0.this.f54508g.put(valueAt, valueAt2);
                }
            }
            if (h0.this.f54502a == 2) {
                if (h0.this.f54515n) {
                    return;
                }
                h0.this.f54513l.o();
                h0.this.f54514m = 0;
                h0.this.f54515n = true;
                return;
            }
            h0.this.f54508g.remove(this.f54526d);
            h0 h0Var2 = h0.this;
            h0Var2.f54514m = h0Var2.f54502a == 1 ? 0 : h0.this.f54514m - 1;
            if (h0.this.f54514m == 0) {
                h0.this.f54513l.o();
                h0.this.f54515n = true;
            }
        }
    }

    public h0() {
        this(0);
    }

    static /* synthetic */ int k(h0 h0Var) {
        int i9 = h0Var.f54514m;
        h0Var.f54514m = i9 + 1;
        return i9;
    }

    private boolean u(c2.m mVar) throws IOException {
        byte[] d10 = this.f54505d.d();
        if (9400 - this.f54505d.e() < 188) {
            int a10 = this.f54505d.a();
            if (a10 > 0) {
                System.arraycopy(d10, this.f54505d.e(), d10, 0, a10);
            }
            this.f54505d.N(d10, a10);
        }
        while (this.f54505d.a() < 188) {
            int f10 = this.f54505d.f();
            int read = mVar.read(d10, f10, 9400 - f10);
            if (read == -1) {
                return false;
            }
            this.f54505d.O(f10 + read);
        }
        return true;
    }

    private int v() throws ParserException {
        int e10 = this.f54505d.e();
        int f10 = this.f54505d.f();
        int a10 = j0.a(this.f54505d.d(), e10, f10);
        this.f54505d.P(a10);
        int i9 = a10 + 188;
        if (i9 > f10) {
            int i10 = this.f54519r + (a10 - e10);
            this.f54519r = i10;
            if (this.f54502a == 2 && i10 > 376) {
                throw ParserException.createForMalformedContainer("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.f54519r = 0;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c2.l[] w() {
        return new c2.l[]{new h0()};
    }

    private void x(long j10) {
        if (this.f54516o) {
            return;
        }
        this.f54516o = true;
        if (this.f54511j.b() != -9223372036854775807L) {
            e0 e0Var = new e0(this.f54511j.c(), this.f54511j.b(), j10, this.f54520s, this.f54503b);
            this.f54512k = e0Var;
            this.f54513l.l(e0Var.b());
            return;
        }
        this.f54513l.l(new b0.b(this.f54511j.b()));
    }

    private void y() {
        this.f54509h.clear();
        this.f54508g.clear();
        SparseArray<i0> a10 = this.f54507f.a();
        int size = a10.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.f54508g.put(a10.keyAt(i9), a10.valueAt(i9));
        }
        this.f54508g.put(0, new c0(new a()));
        this.f54518q = null;
    }

    private boolean z(int i9) {
        return this.f54502a == 2 || this.f54515n || !this.f54510i.get(i9, false);
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        e0 e0Var;
        com.google.android.exoplayer2.util.a.f(this.f54502a != 2);
        int size = this.f54504c.size();
        for (int i9 = 0; i9 < size; i9++) {
            com.google.android.exoplayer2.util.i0 i0Var = this.f54504c.get(i9);
            boolean z10 = i0Var.e() == -9223372036854775807L;
            if (!z10) {
                long c10 = i0Var.c();
                z10 = (c10 == -9223372036854775807L || c10 == 0 || c10 == j11) ? false : true;
            }
            if (z10) {
                i0Var.g(j11);
            }
        }
        if (j11 != 0 && (e0Var = this.f54512k) != null) {
            e0Var.h(j11);
        }
        this.f54505d.L(0);
        this.f54506e.clear();
        for (int i10 = 0; i10 < this.f54508g.size(); i10++) {
            this.f54508g.valueAt(i10).c();
        }
        this.f54519r = 0;
    }

    @Override // c2.l
    public int b(c2.m mVar, c2.a0 a0Var) throws IOException {
        long a10 = mVar.a();
        if (this.f54515n) {
            if (((a10 == -1 || this.f54502a == 2) ? false : true) && !this.f54511j.d()) {
                return this.f54511j.e(mVar, a0Var, this.f54520s);
            }
            x(a10);
            if (this.f54517p) {
                this.f54517p = false;
                a(0L, 0L);
                if (mVar.getPosition() != 0) {
                    a0Var.f1463a = 0L;
                    return 1;
                }
            }
            e0 e0Var = this.f54512k;
            if (e0Var != null && e0Var.d()) {
                return this.f54512k.c(mVar, a0Var);
            }
        }
        if (u(mVar)) {
            int v10 = v();
            int f10 = this.f54505d.f();
            if (v10 > f10) {
                return 0;
            }
            int n9 = this.f54505d.n();
            if ((8388608 & n9) != 0) {
                this.f54505d.P(v10);
                return 0;
            }
            int i9 = ((4194304 & n9) != 0 ? 1 : 0) | 0;
            int i10 = (2096896 & n9) >> 8;
            boolean z10 = (n9 & 32) != 0;
            i0 i0Var = (n9 & 16) != 0 ? this.f54508g.get(i10) : null;
            if (i0Var == null) {
                this.f54505d.P(v10);
                return 0;
            }
            if (this.f54502a != 2) {
                int i11 = n9 & 15;
                int i12 = this.f54506e.get(i10, i11 - 1);
                this.f54506e.put(i10, i11);
                if (i12 == i11) {
                    this.f54505d.P(v10);
                    return 0;
                } else if (i11 != ((i12 + 1) & 15)) {
                    i0Var.c();
                }
            }
            if (z10) {
                int D = this.f54505d.D();
                i9 |= (this.f54505d.D() & 64) != 0 ? 2 : 0;
                this.f54505d.Q(D - 1);
            }
            boolean z11 = this.f54515n;
            if (z(i10)) {
                this.f54505d.O(v10);
                i0Var.b(this.f54505d, i9);
                this.f54505d.O(f10);
            }
            if (this.f54502a != 2 && !z11 && this.f54515n && a10 != -1) {
                this.f54517p = true;
            }
            this.f54505d.P(v10);
            return 0;
        }
        return -1;
    }

    @Override // c2.l
    public void f(c2.n nVar) {
        this.f54513l = nVar;
    }

    @Override // c2.l
    public boolean h(c2.m mVar) throws IOException {
        boolean z10;
        byte[] d10 = this.f54505d.d();
        mVar.m(d10, 0, 940);
        for (int i9 = 0; i9 < 188; i9++) {
            int i10 = 0;
            while (true) {
                if (i10 >= 5) {
                    z10 = true;
                    break;
                } else if (d10[(i10 * 188) + i9] != 71) {
                    z10 = false;
                    break;
                } else {
                    i10++;
                }
            }
            if (z10) {
                mVar.k(i9);
                return true;
            }
        }
        return false;
    }

    @Override // c2.l
    public void release() {
    }

    public h0(int i9) {
        this(1, i9, 112800);
    }

    public h0(int i9, int i10, int i11) {
        this(i9, new com.google.android.exoplayer2.util.i0(0L), new j(i10), i11);
    }

    public h0(int i9, com.google.android.exoplayer2.util.i0 i0Var, i0.c cVar, int i10) {
        this.f54507f = (i0.c) com.google.android.exoplayer2.util.a.e(cVar);
        this.f54503b = i10;
        this.f54502a = i9;
        if (i9 != 1 && i9 != 2) {
            ArrayList arrayList = new ArrayList();
            this.f54504c = arrayList;
            arrayList.add(i0Var);
        } else {
            this.f54504c = Collections.singletonList(i0Var);
        }
        this.f54505d = new com.google.android.exoplayer2.util.b0(new byte[9400], 0);
        this.f54509h = new SparseBooleanArray();
        this.f54510i = new SparseBooleanArray();
        this.f54508g = new SparseArray<>();
        this.f54506e = new SparseIntArray();
        this.f54511j = new f0(i10);
        this.f54513l = c2.n.S;
        this.f54520s = -1;
        y();
    }
}
