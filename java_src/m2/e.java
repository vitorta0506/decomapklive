package m2;

import android.net.Uri;
import c2.b0;
import java.io.IOException;
import java.util.Map;
import m2.i0;
/* loaded from: classes.dex */
public final class e implements c2.l {

    /* renamed from: d  reason: collision with root package name */
    public static final c2.r f54456d = new c2.r() { // from class: m2.d
        @Override // c2.r
        public /* synthetic */ c2.l[] a(Uri uri, Map map) {
            return c2.q.a(this, uri, map);
        }

        @Override // c2.r
        public final c2.l[] b() {
            c2.l[] d10;
            d10 = e.d();
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final f f54457a = new f();

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54458b = new com.google.android.exoplayer2.util.b0(16384);

    /* renamed from: c  reason: collision with root package name */
    private boolean f54459c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c2.l[] d() {
        return new c2.l[]{new e()};
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        this.f54459c = false;
        this.f54457a.c();
    }

    @Override // c2.l
    public int b(c2.m mVar, c2.a0 a0Var) throws IOException {
        int read = mVar.read(this.f54458b.d(), 0, 16384);
        if (read == -1) {
            return -1;
        }
        this.f54458b.P(0);
        this.f54458b.O(read);
        if (!this.f54459c) {
            this.f54457a.f(0L, 4);
            this.f54459c = true;
        }
        this.f54457a.b(this.f54458b);
        return 0;
    }

    @Override // c2.l
    public void f(c2.n nVar) {
        this.f54457a.d(nVar, new i0.d(0, 1));
        nVar.o();
        nVar.l(new b0.b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
        r9.f();
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0046, code lost:
        if ((r4 - r3) < 8192) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
        return false;
     */
    @Override // c2.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean h(c2.m r9) throws java.io.IOException {
        /*
            r8 = this;
            com.google.android.exoplayer2.util.b0 r0 = new com.google.android.exoplayer2.util.b0
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.d()
            r9.m(r4, r2, r1)
            r0.P(r2)
            int r4 = r0.G()
            r5 = 4801587(0x494433, float:6.728456E-39)
            if (r4 == r5) goto L65
            r9.f()
            r9.i(r3)
            r4 = r3
        L23:
            r1 = 0
        L24:
            byte[] r5 = r0.d()
            r6 = 7
            r9.m(r5, r2, r6)
            r0.P(r2)
            int r5 = r0.J()
            r6 = 44096(0xac40, float:6.1792E-41)
            if (r5 == r6) goto L4d
            r6 = 44097(0xac41, float:6.1793E-41)
            if (r5 == r6) goto L4d
            r9.f()
            int r4 = r4 + 1
            int r1 = r4 - r3
            r5 = 8192(0x2000, float:1.148E-41)
            if (r1 < r5) goto L49
            return r2
        L49:
            r9.i(r4)
            goto L23
        L4d:
            r6 = 1
            int r1 = r1 + r6
            r7 = 4
            if (r1 < r7) goto L53
            return r6
        L53:
            byte[] r6 = r0.d()
            int r5 = com.google.android.exoplayer2.audio.c.e(r6, r5)
            r6 = -1
            if (r5 != r6) goto L5f
            return r2
        L5f:
            int r5 = r5 + (-7)
            r9.i(r5)
            goto L24
        L65:
            r4 = 3
            r0.Q(r4)
            int r4 = r0.C()
            int r5 = r4 + 10
            int r3 = r3 + r5
            r9.i(r4)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: m2.e.h(c2.m):boolean");
    }

    @Override // c2.l
    public void release() {
    }
}
