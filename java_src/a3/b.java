package a3;

import java.util.List;
import x2.h;
/* loaded from: classes.dex */
final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    private final List<x2.b> f599a;

    public b(List<x2.b> list) {
        this.f599a = list;
    }

    @Override // x2.h
    public int a(long j10) {
        return -1;
    }

    @Override // x2.h
    public List<x2.b> b(long j10) {
        return this.f599a;
    }

    @Override // x2.h
    public long c(int i9) {
        return 0L;
    }

    @Override // x2.h
    public int d() {
        return 1;
    }
}
