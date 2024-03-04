package h2;

import c2.m;
import c2.w;
/* loaded from: classes.dex */
final class c extends w {

    /* renamed from: b  reason: collision with root package name */
    private final long f40341b;

    public c(m mVar, long j10) {
        super(mVar);
        com.google.android.exoplayer2.util.a.a(mVar.getPosition() >= j10);
        this.f40341b = j10;
    }

    @Override // c2.w, c2.m
    public long a() {
        return super.a() - this.f40341b;
    }

    @Override // c2.w, c2.m
    public long getPosition() {
        return super.getPosition() - this.f40341b;
    }

    @Override // c2.w, c2.m
    public long h() {
        return super.h() - this.f40341b;
    }
}
