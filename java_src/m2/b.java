package m2;

import android.net.Uri;
import c2.b0;
import java.io.IOException;
import java.util.Map;
import m2.i0;
/* loaded from: classes.dex */
public final class b implements c2.l {

    /* renamed from: d  reason: collision with root package name */
    public static final c2.r f54431d = new c2.r() { // from class: m2.a
        @Override // c2.r
        public /* synthetic */ c2.l[] a(Uri uri, Map map) {
            return c2.q.a(this, uri, map);
        }

        @Override // c2.r
        public final c2.l[] b() {
            c2.l[] d10;
            d10 = b.d();
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final c f54432a = new c();

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54433b = new com.google.android.exoplayer2.util.b0(2786);

    /* renamed from: c  reason: collision with root package name */
    private boolean f54434c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c2.l[] d() {
        return new c2.l[]{new b()};
    }

    @Override // c2.l
    public void a(long j10, long j11) {
        this.f54434c = false;
        this.f54432a.c();
    }

    @Override // c2.l
    public int b(c2.m mVar, c2.a0 a0Var) throws IOException {
        int read = mVar.read(this.f54433b.d(), 0, 2786);
        if (read == -1) {
            return -1;
        }
        this.f54433b.P(0);
        this.f54433b.O(read);
        if (!this.f54434c) {
            this.f54432a.f(0L, 4);
            this.f54434c = true;
        }
        this.f54432a.b(this.f54433b);
        return 0;
    }

    @Override // c2.l
    public void f(c2.n nVar) {
        this.f54432a.d(nVar, new i0.d(0, 1));
        nVar.o();
        nVar.l(new b0.b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0040, code lost:
        if ((r4 - r3) < 8192) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0042, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
        r8.f();
        r4 = r4 + 1;
     */
    @Override // c2.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean h(c2.m r8) throws java.io.IOException {
        /*
            r7 = this;
            com.google.android.exoplayer2.util.b0 r0 = new com.google.android.exoplayer2.util.b0
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.d()
            r8.m(r4, r2, r1)
            r0.P(r2)
            int r4 = r0.G()
            r5 = 4801587(0x494433, float:6.728456E-39)
            if (r4 == r5) goto L5f
            r8.f()
            r8.i(r3)
            r4 = r3
        L23:
            r1 = 0
        L24:
            byte[] r5 = r0.d()
            r6 = 6
            r8.m(r5, r2, r6)
            r0.P(r2)
            int r5 = r0.J()
            r6 = 2935(0xb77, float:4.113E-42)
            if (r5 == r6) goto L47
            r8.f()
            int r4 = r4 + 1
            int r1 = r4 - r3
            r5 = 8192(0x2000, float:1.148E-41)
            if (r1 < r5) goto L43
            return r2
        L43:
            r8.i(r4)
            goto L23
        L47:
            r5 = 1
            int r1 = r1 + r5
            r6 = 4
            if (r1 < r6) goto L4d
            return r5
        L4d:
            byte[] r5 = r0.d()
            int r5 = com.google.android.exoplayer2.audio.b.f(r5)
            r6 = -1
            if (r5 != r6) goto L59
            return r2
        L59:
            int r5 = r5 + (-6)
            r8.i(r5)
            goto L24
        L5f:
            r4 = 3
            r0.Q(r4)
            int r4 = r0.C()
            int r5 = r4 + 10
            int r3 = r3 + r5
            r8.i(r4)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: m2.b.h(c2.m):boolean");
    }

    @Override // c2.l
    public void release() {
    }
}
