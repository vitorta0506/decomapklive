package c3;

import com.google.android.exoplayer2.util.l0;
import java.util.Collections;
import java.util.List;
import x2.h;
/* loaded from: classes.dex */
final class d implements h {

    /* renamed from: a  reason: collision with root package name */
    private final List<List<x2.b>> f1616a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Long> f1617b;

    public d(List<List<x2.b>> list, List<Long> list2) {
        this.f1616a = list;
        this.f1617b = list2;
    }

    @Override // x2.h
    public int a(long j10) {
        int d10 = l0.d(this.f1617b, Long.valueOf(j10), false, false);
        if (d10 < this.f1617b.size()) {
            return d10;
        }
        return -1;
    }

    @Override // x2.h
    public List<x2.b> b(long j10) {
        int g10 = l0.g(this.f1617b, Long.valueOf(j10), true, false);
        if (g10 == -1) {
            return Collections.emptyList();
        }
        return this.f1616a.get(g10);
    }

    @Override // x2.h
    public long c(int i9) {
        com.google.android.exoplayer2.util.a.a(i9 >= 0);
        com.google.android.exoplayer2.util.a.a(i9 < this.f1617b.size());
        return this.f1617b.get(i9).longValue();
    }

    @Override // x2.h
    public int d() {
        return this.f1617b.size();
    }
}
