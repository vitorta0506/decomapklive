package j2;

import c2.b0;
import c2.c0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.s;
/* loaded from: classes.dex */
final class b implements g {

    /* renamed from: a  reason: collision with root package name */
    private final long f52962a;

    /* renamed from: b  reason: collision with root package name */
    private final s f52963b;

    /* renamed from: c  reason: collision with root package name */
    private final s f52964c;

    /* renamed from: d  reason: collision with root package name */
    private long f52965d;

    public b(long j10, long j11, long j12) {
        this.f52965d = j10;
        this.f52962a = j12;
        s sVar = new s();
        this.f52963b = sVar;
        s sVar2 = new s();
        this.f52964c = sVar2;
        sVar.a(0L);
        sVar2.a(j11);
    }

    public boolean a(long j10) {
        s sVar = this.f52963b;
        return j10 - sVar.b(sVar.c() - 1) < 100000;
    }

    public void b(long j10, long j11) {
        if (a(j10)) {
            return;
        }
        this.f52963b.a(j10);
        this.f52964c.a(j11);
    }

    @Override // c2.b0
    public b0.a c(long j10) {
        int f10 = l0.f(this.f52963b, j10, true, true);
        c0 c0Var = new c0(this.f52963b.b(f10), this.f52964c.b(f10));
        if (c0Var.f1469a != j10 && f10 != this.f52963b.c() - 1) {
            int i9 = f10 + 1;
            return new b0.a(c0Var, new c0(this.f52963b.b(i9), this.f52964c.b(i9)));
        }
        return new b0.a(c0Var);
    }

    @Override // j2.g
    public long d() {
        return this.f52962a;
    }

    @Override // c2.b0
    public boolean e() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(long j10) {
        this.f52965d = j10;
    }

    @Override // j2.g
    public long g(long j10) {
        return this.f52963b.b(l0.f(this.f52964c, j10, true, true));
    }

    @Override // c2.b0
    public long i() {
        return this.f52965d;
    }
}
