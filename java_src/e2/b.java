package e2;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import c2.a0;
import c2.b0;
import c2.e0;
import c2.j;
import c2.l;
import c2.m;
import c2.n;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.r;
import com.google.android.exoplayer2.util.v;
import com.google.common.collect.e9;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class b implements l {

    /* renamed from: c  reason: collision with root package name */
    private int f38320c;

    /* renamed from: e  reason: collision with root package name */
    private e2.c f38322e;

    /* renamed from: h  reason: collision with root package name */
    private long f38325h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private e f38326i;

    /* renamed from: m  reason: collision with root package name */
    private int f38330m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f38331n;

    /* renamed from: a  reason: collision with root package name */
    private final b0 f38318a = new b0(12);

    /* renamed from: b  reason: collision with root package name */
    private final c f38319b = new c();

    /* renamed from: d  reason: collision with root package name */
    private n f38321d = new j();

    /* renamed from: g  reason: collision with root package name */
    private e[] f38324g = new e[0];

    /* renamed from: k  reason: collision with root package name */
    private long f38328k = -1;

    /* renamed from: l  reason: collision with root package name */
    private long f38329l = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f38327j = -1;

    /* renamed from: f  reason: collision with root package name */
    private long f38323f = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0382b implements c2.b0 {

        /* renamed from: a  reason: collision with root package name */
        private final long f38332a;

        public C0382b(long j10) {
            this.f38332a = j10;
        }

        @Override // c2.b0
        public b0.a c(long j10) {
            b0.a i9 = b.this.f38324g[0].i(j10);
            for (int i10 = 1; i10 < b.this.f38324g.length; i10++) {
                b0.a i11 = b.this.f38324g[i10].i(j10);
                if (i11.f1464a.f1470b < i9.f1464a.f1470b) {
                    i9 = i11;
                }
            }
            return i9;
        }

        @Override // c2.b0
        public boolean e() {
            return true;
        }

        @Override // c2.b0
        public long i() {
            return this.f38332a;
        }
    }

    /* loaded from: classes.dex */
    private static class c {

        /* renamed from: a  reason: collision with root package name */
        public int f38334a;

        /* renamed from: b  reason: collision with root package name */
        public int f38335b;

        /* renamed from: c  reason: collision with root package name */
        public int f38336c;

        private c() {
        }

        public void a(com.google.android.exoplayer2.util.b0 b0Var) {
            this.f38334a = b0Var.q();
            this.f38335b = b0Var.q();
            this.f38336c = 0;
        }

        public void b(com.google.android.exoplayer2.util.b0 b0Var) throws ParserException {
            a(b0Var);
            if (this.f38334a == 1414744396) {
                this.f38336c = b0Var.q();
                return;
            }
            throw ParserException.createForMalformedContainer("LIST expected, found: " + this.f38334a, null);
        }
    }

    private static void d(m mVar) throws IOException {
        if ((mVar.getPosition() & 1) == 1) {
            mVar.k(1);
        }
    }

    @Nullable
    private e e(int i9) {
        e[] eVarArr;
        for (e eVar : this.f38324g) {
            if (eVar.j(i9)) {
                return eVar;
            }
        }
        return null;
    }

    private void g(com.google.android.exoplayer2.util.b0 b0Var) throws IOException {
        f c10 = f.c(1819436136, b0Var);
        if (c10.getType() == 1819436136) {
            e2.c cVar = (e2.c) c10.b(e2.c.class);
            if (cVar != null) {
                this.f38322e = cVar;
                this.f38323f = cVar.f38339c * cVar.f38337a;
                ArrayList arrayList = new ArrayList();
                e9<e2.a> it = c10.f38359a.iterator();
                int i9 = 0;
                while (it.hasNext()) {
                    e2.a next = it.next();
                    if (next.getType() == 1819440243) {
                        int i10 = i9 + 1;
                        e k10 = k((f) next, i9);
                        if (k10 != null) {
                            arrayList.add(k10);
                        }
                        i9 = i10;
                    }
                }
                this.f38324g = (e[]) arrayList.toArray(new e[0]);
                this.f38321d.o();
                return;
            }
            throw ParserException.createForMalformedContainer("AviHeader not found", null);
        }
        throw ParserException.createForMalformedContainer("Unexpected header list type " + c10.getType(), null);
    }

    private void i(com.google.android.exoplayer2.util.b0 b0Var) {
        long j10 = j(b0Var);
        while (b0Var.a() >= 16) {
            int q10 = b0Var.q();
            int q11 = b0Var.q();
            long q12 = b0Var.q() + j10;
            b0Var.q();
            e e10 = e(q10);
            if (e10 != null) {
                if ((q11 & 16) == 16) {
                    e10.b(q12);
                }
                e10.k();
            }
        }
        for (e eVar : this.f38324g) {
            eVar.c();
        }
        this.f38331n = true;
        this.f38321d.l(new C0382b(this.f38323f));
    }

    private long j(com.google.android.exoplayer2.util.b0 b0Var) {
        if (b0Var.a() < 16) {
            return 0L;
        }
        int e10 = b0Var.e();
        b0Var.Q(8);
        long j10 = this.f38328k;
        long j11 = ((long) b0Var.q()) <= j10 ? 8 + j10 : 0L;
        b0Var.P(e10);
        return j11;
    }

    @Nullable
    private e k(f fVar, int i9) {
        d dVar = (d) fVar.b(d.class);
        g gVar = (g) fVar.b(g.class);
        if (dVar == null) {
            r.i("AviExtractor", "Missing Stream Header");
            return null;
        } else if (gVar == null) {
            r.i("AviExtractor", "Missing Stream Format");
            return null;
        } else {
            long a10 = dVar.a();
            k1 k1Var = gVar.f38361a;
            k1.b b10 = k1Var.b();
            b10.R(i9);
            int i10 = dVar.f38346f;
            if (i10 != 0) {
                b10.W(i10);
            }
            h hVar = (h) fVar.b(h.class);
            if (hVar != null) {
                b10.U(hVar.f38362a);
            }
            int i11 = v.i(k1Var.f6111l);
            if (i11 == 1 || i11 == 2) {
                e0 q10 = this.f38321d.q(i9, i11);
                q10.d(b10.E());
                e eVar = new e(i9, i11, a10, dVar.f38345e, q10);
                this.f38323f = a10;
                return eVar;
            }
            return null;
        }
    }

    private int l(m mVar) throws IOException {
        if (mVar.getPosition() >= this.f38329l) {
            return -1;
        }
        e eVar = this.f38326i;
        if (eVar != null) {
            if (eVar.m(mVar)) {
                this.f38326i = null;
            }
        } else {
            d(mVar);
            mVar.m(this.f38318a.d(), 0, 12);
            this.f38318a.P(0);
            int q10 = this.f38318a.q();
            if (q10 == 1414744396) {
                this.f38318a.P(8);
                mVar.k(this.f38318a.q() != 1769369453 ? 8 : 12);
                mVar.f();
                return 0;
            }
            int q11 = this.f38318a.q();
            if (q10 == 1263424842) {
                this.f38325h = mVar.getPosition() + q11 + 8;
                return 0;
            }
            mVar.k(8);
            mVar.f();
            e e10 = e(q10);
            if (e10 == null) {
                this.f38325h = mVar.getPosition() + q11;
                return 0;
            }
            e10.n(q11);
            this.f38326i = e10;
        }
        return 0;
    }

    private boolean m(m mVar, a0 a0Var) throws IOException {
        boolean z10;
        if (this.f38325h != -1) {
            long position = mVar.getPosition();
            long j10 = this.f38325h;
            if (j10 >= position && j10 <= PlaybackStateCompat.ACTION_SET_REPEAT_MODE + position) {
                mVar.k((int) (j10 - position));
            } else {
                a0Var.f1463a = j10;
                z10 = true;
                this.f38325h = -1L;
                return z10;
            }
        }
        z10 = false;
        this.f38325h = -1L;
        return z10;
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        this.f38325h = -1L;
        this.f38326i = null;
        for (e eVar : this.f38324g) {
            eVar.o(j10);
        }
        if (j10 == 0) {
            if (this.f38324g.length == 0) {
                this.f38320c = 0;
                return;
            } else {
                this.f38320c = 3;
                return;
            }
        }
        this.f38320c = 6;
    }

    @Override // c2.l
    public int b(m mVar, a0 a0Var) throws IOException {
        if (m(mVar, a0Var)) {
            return 1;
        }
        switch (this.f38320c) {
            case 0:
                if (h(mVar)) {
                    mVar.k(12);
                    this.f38320c = 1;
                    return 0;
                }
                throw ParserException.createForMalformedContainer("AVI Header List not found", null);
            case 1:
                mVar.readFully(this.f38318a.d(), 0, 12);
                this.f38318a.P(0);
                this.f38319b.b(this.f38318a);
                c cVar = this.f38319b;
                if (cVar.f38336c == 1819436136) {
                    this.f38327j = cVar.f38335b;
                    this.f38320c = 2;
                    return 0;
                }
                throw ParserException.createForMalformedContainer("hdrl expected, found: " + this.f38319b.f38336c, null);
            case 2:
                int i9 = this.f38327j - 4;
                com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(i9);
                mVar.readFully(b0Var.d(), 0, i9);
                g(b0Var);
                this.f38320c = 3;
                return 0;
            case 3:
                if (this.f38328k != -1) {
                    long position = mVar.getPosition();
                    long j10 = this.f38328k;
                    if (position != j10) {
                        this.f38325h = j10;
                        return 0;
                    }
                }
                mVar.m(this.f38318a.d(), 0, 12);
                mVar.f();
                this.f38318a.P(0);
                this.f38319b.a(this.f38318a);
                int q10 = this.f38318a.q();
                int i10 = this.f38319b.f38334a;
                if (i10 == 1179011410) {
                    mVar.k(12);
                    return 0;
                } else if (i10 == 1414744396 && q10 == 1769369453) {
                    long position2 = mVar.getPosition();
                    this.f38328k = position2;
                    this.f38329l = position2 + this.f38319b.f38335b + 8;
                    if (!this.f38331n) {
                        if (((e2.c) com.google.android.exoplayer2.util.a.e(this.f38322e)).a()) {
                            this.f38320c = 4;
                            this.f38325h = this.f38329l;
                            return 0;
                        }
                        this.f38321d.l(new b0.b(this.f38323f));
                        this.f38331n = true;
                    }
                    this.f38325h = mVar.getPosition() + 12;
                    this.f38320c = 6;
                    return 0;
                } else {
                    this.f38325h = mVar.getPosition() + this.f38319b.f38335b + 8;
                    return 0;
                }
            case 4:
                mVar.readFully(this.f38318a.d(), 0, 8);
                this.f38318a.P(0);
                int q11 = this.f38318a.q();
                int q12 = this.f38318a.q();
                if (q11 == 829973609) {
                    this.f38320c = 5;
                    this.f38330m = q12;
                } else {
                    this.f38325h = mVar.getPosition() + q12;
                }
                return 0;
            case 5:
                com.google.android.exoplayer2.util.b0 b0Var2 = new com.google.android.exoplayer2.util.b0(this.f38330m);
                mVar.readFully(b0Var2.d(), 0, this.f38330m);
                i(b0Var2);
                this.f38320c = 6;
                this.f38325h = this.f38328k;
                return 0;
            case 6:
                return l(mVar);
            default:
                throw new AssertionError();
        }
    }

    @Override // c2.l
    public void f(n nVar) {
        this.f38320c = 0;
        this.f38321d = nVar;
        this.f38325h = -1L;
    }

    @Override // c2.l
    public boolean h(m mVar) throws IOException {
        mVar.m(this.f38318a.d(), 0, 12);
        this.f38318a.P(0);
        if (this.f38318a.q() != 1179011410) {
            return false;
        }
        this.f38318a.Q(4);
        return this.f38318a.q() == 541677121;
    }

    @Override // c2.l
    public void release() {
    }
}
