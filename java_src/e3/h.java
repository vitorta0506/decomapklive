package e3;

import com.google.android.exoplayer2.util.l0;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
final class h implements x2.h {

    /* renamed from: a  reason: collision with root package name */
    private final d f38430a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f38431b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, g> f38432c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, e> f38433d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, String> f38434e;

    public h(d dVar, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        this.f38430a = dVar;
        this.f38433d = map2;
        this.f38434e = map3;
        this.f38432c = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.f38431b = dVar.j();
    }

    @Override // x2.h
    public int a(long j10) {
        int e10 = l0.e(this.f38431b, j10, false, false);
        if (e10 < this.f38431b.length) {
            return e10;
        }
        return -1;
    }

    @Override // x2.h
    public List<x2.b> b(long j10) {
        return this.f38430a.h(j10, this.f38432c, this.f38433d, this.f38434e);
    }

    @Override // x2.h
    public long c(int i9) {
        return this.f38431b[i9];
    }

    @Override // x2.h
    public int d() {
        return this.f38431b.length;
    }
}
