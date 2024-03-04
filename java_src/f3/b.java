package f3;

import java.util.Collections;
import java.util.List;
import x2.h;
/* loaded from: classes.dex */
final class b implements h {

    /* renamed from: b  reason: collision with root package name */
    public static final b f39612b = new b();

    /* renamed from: a  reason: collision with root package name */
    private final List<x2.b> f39613a;

    public b(x2.b bVar) {
        this.f39613a = Collections.singletonList(bVar);
    }

    @Override // x2.h
    public int a(long j10) {
        return j10 < 0 ? 0 : -1;
    }

    @Override // x2.h
    public List<x2.b> b(long j10) {
        return j10 >= 0 ? this.f39613a : Collections.emptyList();
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

    private b() {
        this.f39613a = Collections.emptyList();
    }
}
