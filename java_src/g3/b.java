package g3;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
final class b implements x2.h {

    /* renamed from: a  reason: collision with root package name */
    private final List<x2.b> f39894a;

    public b(List<x2.b> list) {
        this.f39894a = Collections.unmodifiableList(list);
    }

    @Override // x2.h
    public int a(long j10) {
        return j10 < 0 ? 0 : -1;
    }

    @Override // x2.h
    public List<x2.b> b(long j10) {
        return j10 >= 0 ? this.f39894a : Collections.emptyList();
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
