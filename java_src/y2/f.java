package y2;

import java.util.Collections;
import java.util.List;
import x2.h;
/* loaded from: classes.dex */
final class f implements h {

    /* renamed from: a  reason: collision with root package name */
    private final List<x2.b> f60105a;

    public f(List<x2.b> list) {
        this.f60105a = list;
    }

    @Override // x2.h
    public int a(long j10) {
        return j10 < 0 ? 0 : -1;
    }

    @Override // x2.h
    public List<x2.b> b(long j10) {
        return j10 >= 0 ? this.f60105a : Collections.emptyList();
    }

    @Override // x2.h
    public long c(int i9) {
        com.google.android.exoplayer2.util.a.a(i9 == 0);
        return 0L;
    }

    @Override // x2.h
    public int d() {
        return 1;
    }
}
