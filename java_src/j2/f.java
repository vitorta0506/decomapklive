package j2;

import android.net.Uri;
import androidx.annotation.Nullable;
import c2.a0;
import c2.e0;
import c2.k;
import c2.l;
import c2.m;
import c2.n;
import c2.q;
import c2.r;
import c2.x;
import c2.y;
import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import j2.g;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;
import s2.b;
/* loaded from: classes.dex */
public final class f implements l {

    /* renamed from: u  reason: collision with root package name */
    public static final r f52971u = new r() { // from class: j2.d
        @Override // c2.r
        public /* synthetic */ l[] a(Uri uri, Map map) {
            return q.a(this, uri, map);
        }

        @Override // c2.r
        public final l[] b() {
            l[] o10;
            o10 = f.o();
            return o10;
        }
    };

    /* renamed from: v  reason: collision with root package name */
    private static final b.a f52972v = new b.a() { // from class: j2.e
        @Override // s2.b.a
        public final boolean a(int i9, int i10, int i11, int i12, int i13) {
            boolean p10;
            p10 = f.p(i9, i10, i11, i12, i13);
            return p10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f52973a;

    /* renamed from: b  reason: collision with root package name */
    private final long f52974b;

    /* renamed from: c  reason: collision with root package name */
    private final b0 f52975c;

    /* renamed from: d  reason: collision with root package name */
    private final b0.a f52976d;

    /* renamed from: e  reason: collision with root package name */
    private final x f52977e;

    /* renamed from: f  reason: collision with root package name */
    private final y f52978f;

    /* renamed from: g  reason: collision with root package name */
    private final e0 f52979g;

    /* renamed from: h  reason: collision with root package name */
    private n f52980h;

    /* renamed from: i  reason: collision with root package name */
    private e0 f52981i;

    /* renamed from: j  reason: collision with root package name */
    private e0 f52982j;

    /* renamed from: k  reason: collision with root package name */
    private int f52983k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Metadata f52984l;

    /* renamed from: m  reason: collision with root package name */
    private long f52985m;

    /* renamed from: n  reason: collision with root package name */
    private long f52986n;

    /* renamed from: o  reason: collision with root package name */
    private long f52987o;

    /* renamed from: p  reason: collision with root package name */
    private int f52988p;

    /* renamed from: q  reason: collision with root package name */
    private g f52989q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f52990r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f52991s;

    /* renamed from: t  reason: collision with root package name */
    private long f52992t;

    public f() {
        this(0);
    }

    private void e() {
        com.google.android.exoplayer2.util.a.h(this.f52981i);
        l0.j(this.f52980h);
    }

    private g g(m mVar) throws IOException {
        long l10;
        long j10;
        long i9;
        long d10;
        g r10 = r(mVar);
        c q10 = q(this.f52984l, mVar.getPosition());
        if (this.f52990r) {
            return new g.a();
        }
        if ((this.f52973a & 4) != 0) {
            if (q10 != null) {
                i9 = q10.i();
                d10 = q10.d();
            } else if (r10 != null) {
                i9 = r10.i();
                d10 = r10.d();
            } else {
                l10 = l(this.f52984l);
                j10 = -1;
                r10 = new b(l10, mVar.getPosition(), j10);
            }
            j10 = d10;
            l10 = i9;
            r10 = new b(l10, mVar.getPosition(), j10);
        } else if (q10 != null) {
            r10 = q10;
        } else if (r10 == null) {
            r10 = null;
        }
        if (r10 == null || !(r10.e() || (this.f52973a & 1) == 0)) {
            return k(mVar, (this.f52973a & 2) != 0);
        }
        return r10;
    }

    private long i(long j10) {
        return this.f52985m + ((j10 * 1000000) / this.f52976d.f5477d);
    }

    private g k(m mVar, boolean z10) throws IOException {
        mVar.m(this.f52975c.d(), 0, 4);
        this.f52975c.P(0);
        this.f52976d.a(this.f52975c.n());
        return new a(mVar.a(), mVar.getPosition(), this.f52976d, z10);
    }

    private static long l(@Nullable Metadata metadata) {
        if (metadata != null) {
            int d10 = metadata.d();
            for (int i9 = 0; i9 < d10; i9++) {
                Metadata.Entry c10 = metadata.c(i9);
                if (c10 instanceof TextInformationFrame) {
                    TextInformationFrame textInformationFrame = (TextInformationFrame) c10;
                    if (textInformationFrame.f6328id.equals("TLEN")) {
                        return l0.w0(Long.parseLong(textInformationFrame.value));
                    }
                }
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    private static int m(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        if (b0Var.f() >= i9 + 4) {
            b0Var.P(i9);
            int n9 = b0Var.n();
            if (n9 == 1483304551 || n9 == 1231971951) {
                return n9;
            }
        }
        if (b0Var.f() >= 40) {
            b0Var.P(36);
            return b0Var.n() == 1447187017 ? 1447187017 : 0;
        }
        return 0;
    }

    private static boolean n(int i9, long j10) {
        return ((long) (i9 & (-128000))) == (j10 & (-128000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l[] o() {
        return new l[]{new f()};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean p(int i9, int i10, int i11, int i12, int i13) {
        return (i10 == 67 && i11 == 79 && i12 == 77 && (i13 == 77 || i9 == 2)) || (i10 == 77 && i11 == 76 && i12 == 76 && (i13 == 84 || i9 == 2));
    }

    @Nullable
    private static c q(@Nullable Metadata metadata, long j10) {
        if (metadata != null) {
            int d10 = metadata.d();
            for (int i9 = 0; i9 < d10; i9++) {
                Metadata.Entry c10 = metadata.c(i9);
                if (c10 instanceof MlltFrame) {
                    return c.a(j10, (MlltFrame) c10, l(metadata));
                }
            }
            return null;
        }
        return null;
    }

    @Nullable
    private g r(m mVar) throws IOException {
        int i9;
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(this.f52976d.f5476c);
        mVar.m(b0Var.d(), 0, this.f52976d.f5476c);
        b0.a aVar = this.f52976d;
        if ((aVar.f5474a & 1) != 0) {
            if (aVar.f5478e != 1) {
                i9 = 36;
            }
            i9 = 21;
        } else {
            if (aVar.f5478e == 1) {
                i9 = 13;
            }
            i9 = 21;
        }
        int m10 = m(b0Var, i9);
        if (m10 != 1483304551 && m10 != 1231971951) {
            if (m10 == 1447187017) {
                h a10 = h.a(mVar.a(), mVar.getPosition(), this.f52976d, b0Var);
                mVar.k(this.f52976d.f5476c);
                return a10;
            }
            mVar.f();
            return null;
        }
        i a11 = i.a(mVar.a(), mVar.getPosition(), this.f52976d, b0Var);
        if (a11 != null && !this.f52977e.a()) {
            mVar.f();
            mVar.i(i9 + 141);
            mVar.m(this.f52975c.d(), 0, 3);
            this.f52975c.P(0);
            this.f52977e.d(this.f52975c.G());
        }
        mVar.k(this.f52976d.f5476c);
        return (a11 == null || a11.e() || m10 != 1231971951) ? a11 : k(mVar, false);
    }

    private boolean s(m mVar) throws IOException {
        g gVar = this.f52989q;
        if (gVar != null) {
            long d10 = gVar.d();
            if (d10 != -1 && mVar.h() > d10 - 4) {
                return true;
            }
        }
        try {
            return !mVar.d(this.f52975c.d(), 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    private int t(m mVar) throws IOException {
        if (this.f52983k == 0) {
            try {
                v(mVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.f52989q == null) {
            g g10 = g(mVar);
            this.f52989q = g10;
            this.f52980h.l(g10);
            this.f52982j.d(new k1.b().e0(this.f52976d.f5475b).W(4096).H(this.f52976d.f5478e).f0(this.f52976d.f5477d).N(this.f52977e.f1571a).O(this.f52977e.f1572b).X((this.f52973a & 8) != 0 ? null : this.f52984l).E());
            this.f52987o = mVar.getPosition();
        } else if (this.f52987o != 0) {
            long position = mVar.getPosition();
            long j10 = this.f52987o;
            if (position < j10) {
                mVar.k((int) (j10 - position));
            }
        }
        return u(mVar);
    }

    private int u(m mVar) throws IOException {
        b0.a aVar;
        if (this.f52988p == 0) {
            mVar.f();
            if (s(mVar)) {
                return -1;
            }
            this.f52975c.P(0);
            int n9 = this.f52975c.n();
            if (n(n9, this.f52983k) && com.google.android.exoplayer2.audio.b0.j(n9) != -1) {
                this.f52976d.a(n9);
                if (this.f52985m == -9223372036854775807L) {
                    this.f52985m = this.f52989q.g(mVar.getPosition());
                    if (this.f52974b != -9223372036854775807L) {
                        this.f52985m += this.f52974b - this.f52989q.g(0L);
                    }
                }
                this.f52988p = this.f52976d.f5476c;
                g gVar = this.f52989q;
                if (gVar instanceof b) {
                    b bVar = (b) gVar;
                    bVar.b(i(this.f52986n + aVar.f5480g), mVar.getPosition() + this.f52976d.f5476c);
                    if (this.f52991s && bVar.a(this.f52992t)) {
                        this.f52991s = false;
                        this.f52982j = this.f52981i;
                    }
                }
            } else {
                mVar.k(1);
                this.f52983k = 0;
                return 0;
            }
        }
        int b10 = this.f52982j.b(mVar, this.f52988p, true);
        if (b10 == -1) {
            return -1;
        }
        int i9 = this.f52988p - b10;
        this.f52988p = i9;
        if (i9 > 0) {
            return 0;
        }
        this.f52982j.c(i(this.f52986n), 1, this.f52976d.f5476c, 0, null);
        this.f52986n += this.f52976d.f5480g;
        this.f52988p = 0;
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x009e, code lost:
        if (r13 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a0, code lost:
        r12.k(r2 + r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a5, code lost:
        r12.f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00a8, code lost:
        r11.f52983k = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00aa, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean v(c2.m r12, boolean r13) throws java.io.IOException {
        /*
            r11 = this;
            if (r13 == 0) goto L6
            r0 = 32768(0x8000, float:4.5918E-41)
            goto L8
        L6:
            r0 = 131072(0x20000, float:1.83671E-40)
        L8:
            r12.f()
            long r1 = r12.getPosition()
            r3 = 0
            r5 = 0
            r6 = 1
            r7 = 0
            int r8 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r8 != 0) goto L42
            int r1 = r11.f52973a
            r1 = r1 & 8
            if (r1 != 0) goto L20
            r1 = 1
            goto L21
        L20:
            r1 = 0
        L21:
            if (r1 == 0) goto L25
            r1 = r5
            goto L27
        L25:
            s2.b$a r1 = j2.f.f52972v
        L27:
            c2.y r2 = r11.f52978f
            com.google.android.exoplayer2.metadata.Metadata r1 = r2.a(r12, r1)
            r11.f52984l = r1
            if (r1 == 0) goto L36
            c2.x r2 = r11.f52977e
            r2.c(r1)
        L36:
            long r1 = r12.h()
            int r2 = (int) r1
            if (r13 != 0) goto L40
            r12.k(r2)
        L40:
            r1 = 0
            goto L44
        L42:
            r1 = 0
            r2 = 0
        L44:
            r3 = 0
            r4 = 0
        L46:
            boolean r8 = r11.s(r12)
            if (r8 == 0) goto L55
            if (r3 <= 0) goto L4f
            goto L9e
        L4f:
            java.io.EOFException r12 = new java.io.EOFException
            r12.<init>()
            throw r12
        L55:
            com.google.android.exoplayer2.util.b0 r8 = r11.f52975c
            r8.P(r7)
            com.google.android.exoplayer2.util.b0 r8 = r11.f52975c
            int r8 = r8.n()
            if (r1 == 0) goto L69
            long r9 = (long) r1
            boolean r9 = n(r8, r9)
            if (r9 == 0) goto L70
        L69:
            int r9 = com.google.android.exoplayer2.audio.b0.j(r8)
            r10 = -1
            if (r9 != r10) goto L90
        L70:
            int r1 = r4 + 1
            if (r4 != r0) goto L7e
            if (r13 == 0) goto L77
            return r7
        L77:
            java.lang.String r12 = "Searched too many bytes."
            com.google.android.exoplayer2.ParserException r12 = com.google.android.exoplayer2.ParserException.createForMalformedContainer(r12, r5)
            throw r12
        L7e:
            if (r13 == 0) goto L89
            r12.f()
            int r3 = r2 + r1
            r12.i(r3)
            goto L8c
        L89:
            r12.k(r6)
        L8c:
            r4 = r1
            r1 = 0
            r3 = 0
            goto L46
        L90:
            int r3 = r3 + 1
            if (r3 != r6) goto L9b
            com.google.android.exoplayer2.audio.b0$a r1 = r11.f52976d
            r1.a(r8)
            r1 = r8
            goto Lab
        L9b:
            r8 = 4
            if (r3 != r8) goto Lab
        L9e:
            if (r13 == 0) goto La5
            int r2 = r2 + r4
            r12.k(r2)
            goto La8
        La5:
            r12.f()
        La8:
            r11.f52983k = r1
            return r6
        Lab:
            int r9 = r9 + (-4)
            r12.i(r9)
            goto L46
        */
        throw new UnsupportedOperationException("Method not decompiled: j2.f.v(c2.m, boolean):boolean");
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        this.f52983k = 0;
        this.f52985m = -9223372036854775807L;
        this.f52986n = 0L;
        this.f52988p = 0;
        this.f52992t = j11;
        g gVar = this.f52989q;
        if (!(gVar instanceof b) || ((b) gVar).a(j11)) {
            return;
        }
        this.f52991s = true;
        this.f52982j = this.f52979g;
    }

    @Override // c2.l
    public int b(m mVar, a0 a0Var) throws IOException {
        e();
        int t10 = t(mVar);
        if (t10 == -1 && (this.f52989q instanceof b)) {
            long i9 = i(this.f52986n);
            if (this.f52989q.i() != i9) {
                ((b) this.f52989q).f(i9);
                this.f52980h.l(this.f52989q);
            }
        }
        return t10;
    }

    @Override // c2.l
    public void f(n nVar) {
        this.f52980h = nVar;
        e0 q10 = nVar.q(0, 1);
        this.f52981i = q10;
        this.f52982j = q10;
        this.f52980h.o();
    }

    @Override // c2.l
    public boolean h(m mVar) throws IOException {
        return v(mVar, true);
    }

    public void j() {
        this.f52990r = true;
    }

    @Override // c2.l
    public void release() {
    }

    public f(int i9) {
        this(i9, -9223372036854775807L);
    }

    public f(int i9, long j10) {
        this.f52973a = (i9 & 2) != 0 ? i9 | 1 : i9;
        this.f52974b = j10;
        this.f52975c = new com.google.android.exoplayer2.util.b0(10);
        this.f52976d = new b0.a();
        this.f52977e = new x();
        this.f52985m = -9223372036854775807L;
        this.f52978f = new y();
        k kVar = new k();
        this.f52979g = kVar;
        this.f52982j = kVar;
    }
}
