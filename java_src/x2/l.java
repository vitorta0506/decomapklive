package x2;

import androidx.annotation.Nullable;
import java.util.List;
/* loaded from: classes.dex */
public abstract class l extends b2.f implements h {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private h f59596d;

    /* renamed from: e  reason: collision with root package name */
    private long f59597e;

    @Override // x2.h
    public int a(long j10) {
        return ((h) com.google.android.exoplayer2.util.a.e(this.f59596d)).a(j10 - this.f59597e);
    }

    @Override // x2.h
    public List<b> b(long j10) {
        return ((h) com.google.android.exoplayer2.util.a.e(this.f59596d)).b(j10 - this.f59597e);
    }

    @Override // x2.h
    public long c(int i9) {
        return ((h) com.google.android.exoplayer2.util.a.e(this.f59596d)).c(i9) + this.f59597e;
    }

    @Override // x2.h
    public int d() {
        return ((h) com.google.android.exoplayer2.util.a.e(this.f59596d)).d();
    }

    @Override // b2.a
    public void f() {
        super.f();
        this.f59596d = null;
    }

    public void q(long j10, h hVar, long j11) {
        this.f1133b = j10;
        this.f59596d = hVar;
        if (j11 != Long.MAX_VALUE) {
            j10 = j11;
        }
        this.f59597e = j10;
    }
}
