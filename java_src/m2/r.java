package m2;

import com.google.android.exoplayer2.k1;
import m2.i0;
/* loaded from: classes.dex */
public final class r implements m {

    /* renamed from: b  reason: collision with root package name */
    private c2.e0 f54708b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54709c;

    /* renamed from: e  reason: collision with root package name */
    private int f54711e;

    /* renamed from: f  reason: collision with root package name */
    private int f54712f;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54707a = new com.google.android.exoplayer2.util.b0(10);

    /* renamed from: d  reason: collision with root package name */
    private long f54710d = -9223372036854775807L;

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) {
        com.google.android.exoplayer2.util.a.h(this.f54708b);
        if (this.f54709c) {
            int a10 = b0Var.a();
            int i9 = this.f54712f;
            if (i9 < 10) {
                int min = Math.min(a10, 10 - i9);
                System.arraycopy(b0Var.d(), b0Var.e(), this.f54707a.d(), this.f54712f, min);
                if (this.f54712f + min == 10) {
                    this.f54707a.P(0);
                    if (73 == this.f54707a.D() && 68 == this.f54707a.D() && 51 == this.f54707a.D()) {
                        this.f54707a.Q(3);
                        this.f54711e = this.f54707a.C() + 10;
                    } else {
                        com.google.android.exoplayer2.util.r.i("Id3Reader", "Discarding invalid ID3 tag");
                        this.f54709c = false;
                        return;
                    }
                }
            }
            int min2 = Math.min(a10, this.f54711e - this.f54712f);
            this.f54708b.a(b0Var, min2);
            this.f54712f += min2;
        }
    }

    @Override // m2.m
    public void c() {
        this.f54709c = false;
        this.f54710d = -9223372036854775807L;
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        c2.e0 q10 = nVar.q(dVar.c(), 5);
        this.f54708b = q10;
        q10.d(new k1.b().S(dVar.b()).e0("application/id3").E());
    }

    @Override // m2.m
    public void e() {
        int i9;
        com.google.android.exoplayer2.util.a.h(this.f54708b);
        if (this.f54709c && (i9 = this.f54711e) != 0 && this.f54712f == i9) {
            long j10 = this.f54710d;
            if (j10 != -9223372036854775807L) {
                this.f54708b.c(j10, 1, i9, 0, null);
            }
            this.f54709c = false;
        }
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if ((i9 & 4) == 0) {
            return;
        }
        this.f54709c = true;
        if (j10 != -9223372036854775807L) {
            this.f54710d = j10;
        }
        this.f54711e = 0;
        this.f54712f = 0;
    }
}
