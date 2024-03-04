package m2;

import android.net.Uri;
import c2.b0;
import com.google.android.exoplayer2.ParserException;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;
import m2.i0;
/* loaded from: classes.dex */
public final class h implements c2.l {

    /* renamed from: m  reason: collision with root package name */
    public static final c2.r f54488m = new c2.r() { // from class: m2.g
        @Override // c2.r
        public /* synthetic */ c2.l[] a(Uri uri, Map map) {
            return c2.q.a(this, uri, map);
        }

        @Override // c2.r
        public final c2.l[] b() {
            c2.l[] i9;
            i9 = h.i();
            return i9;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f54489a;

    /* renamed from: b  reason: collision with root package name */
    private final i f54490b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54491c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54492d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.a0 f54493e;

    /* renamed from: f  reason: collision with root package name */
    private c2.n f54494f;

    /* renamed from: g  reason: collision with root package name */
    private long f54495g;

    /* renamed from: h  reason: collision with root package name */
    private long f54496h;

    /* renamed from: i  reason: collision with root package name */
    private int f54497i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54498j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f54499k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f54500l;

    public h() {
        this(0);
    }

    private void d(c2.m mVar) throws IOException {
        int h10;
        if (this.f54498j) {
            return;
        }
        this.f54497i = -1;
        mVar.f();
        long j10 = 0;
        if (mVar.getPosition() == 0) {
            k(mVar);
        }
        int i9 = 0;
        int i10 = 0;
        do {
            try {
                if (!mVar.d(this.f54492d.d(), 0, 2, true)) {
                    break;
                }
                this.f54492d.P(0);
                if (!i.m(this.f54492d.J())) {
                    break;
                } else if (!mVar.d(this.f54492d.d(), 0, 4, true)) {
                    break;
                } else {
                    this.f54493e.p(14);
                    h10 = this.f54493e.h(13);
                    if (h10 <= 6) {
                        this.f54498j = true;
                        throw ParserException.createForMalformedContainer("Malformed ADTS stream", null);
                    }
                    j10 += h10;
                    i10++;
                    if (i10 == 1000) {
                        break;
                    }
                }
            } catch (EOFException unused) {
            }
        } while (mVar.l(h10 - 6, true));
        i9 = i10;
        mVar.f();
        if (i9 > 0) {
            this.f54497i = (int) (j10 / i9);
        } else {
            this.f54497i = -1;
        }
        this.f54498j = true;
    }

    private static int e(int i9, long j10) {
        return (int) (((i9 * 8) * 1000000) / j10);
    }

    private c2.b0 g(long j10, boolean z10) {
        return new c2.e(j10, this.f54496h, e(this.f54497i, this.f54490b.k()), this.f54497i, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c2.l[] i() {
        return new c2.l[]{new h()};
    }

    private void j(long j10, boolean z10) {
        if (this.f54500l) {
            return;
        }
        boolean z11 = (this.f54489a & 1) != 0 && this.f54497i > 0;
        if (z11 && this.f54490b.k() == -9223372036854775807L && !z10) {
            return;
        }
        if (z11 && this.f54490b.k() != -9223372036854775807L) {
            this.f54494f.l(g(j10, (this.f54489a & 2) != 0));
        } else {
            this.f54494f.l(new b0.b(-9223372036854775807L));
        }
        this.f54500l = true;
    }

    private int k(c2.m mVar) throws IOException {
        int i9 = 0;
        while (true) {
            mVar.m(this.f54492d.d(), 0, 10);
            this.f54492d.P(0);
            if (this.f54492d.G() != 4801587) {
                break;
            }
            this.f54492d.Q(3);
            int C = this.f54492d.C();
            i9 += C + 10;
            mVar.i(C);
        }
        mVar.f();
        mVar.i(i9);
        if (this.f54496h == -1) {
            this.f54496h = i9;
        }
        return i9;
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        this.f54499k = false;
        this.f54490b.c();
        this.f54495g = j11;
    }

    @Override // c2.l
    public int b(c2.m mVar, c2.a0 a0Var) throws IOException {
        com.google.android.exoplayer2.util.a.h(this.f54494f);
        long a10 = mVar.a();
        int i9 = this.f54489a;
        if (((i9 & 2) == 0 && ((i9 & 1) == 0 || a10 == -1)) ? false : true) {
            d(mVar);
        }
        int read = mVar.read(this.f54491c.d(), 0, 2048);
        boolean z10 = read == -1;
        j(a10, z10);
        if (z10) {
            return -1;
        }
        this.f54491c.P(0);
        this.f54491c.O(read);
        if (!this.f54499k) {
            this.f54490b.f(this.f54495g, 4);
            this.f54499k = true;
        }
        this.f54490b.b(this.f54491c);
        return 0;
    }

    @Override // c2.l
    public void f(c2.n nVar) {
        this.f54494f = nVar;
        this.f54490b.d(nVar, new i0.d(0, 1));
        nVar.o();
    }

    @Override // c2.l
    public boolean h(c2.m mVar) throws IOException {
        int k10 = k(mVar);
        int i9 = k10;
        int i10 = 0;
        int i11 = 0;
        do {
            mVar.m(this.f54492d.d(), 0, 2);
            this.f54492d.P(0);
            if (i.m(this.f54492d.J())) {
                i10++;
                if (i10 >= 4 && i11 > 188) {
                    return true;
                }
                mVar.m(this.f54492d.d(), 0, 4);
                this.f54493e.p(14);
                int h10 = this.f54493e.h(13);
                if (h10 <= 6) {
                    i9++;
                    mVar.f();
                    mVar.i(i9);
                } else {
                    mVar.i(h10 - 6);
                    i11 += h10;
                }
            } else {
                i9++;
                mVar.f();
                mVar.i(i9);
            }
            i10 = 0;
            i11 = 0;
        } while (i9 - k10 < 8192);
        return false;
    }

    @Override // c2.l
    public void release() {
    }

    public h(int i9) {
        this.f54489a = (i9 & 2) != 0 ? i9 | 1 : i9;
        this.f54490b = new i(true);
        this.f54491c = new com.google.android.exoplayer2.util.b0(2048);
        this.f54497i = -1;
        this.f54496h = -1L;
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(10);
        this.f54492d = b0Var;
        this.f54493e = new com.google.android.exoplayer2.util.a0(b0Var.d());
    }
}
