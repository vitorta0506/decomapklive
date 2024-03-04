package d3;

import com.google.android.exoplayer2.util.l0;
import java.util.Collections;
import java.util.List;
import x2.h;
/* loaded from: classes.dex */
final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    private final x2.b[] f37910a;

    /* renamed from: b  reason: collision with root package name */
    private final long[] f37911b;

    public b(x2.b[] bVarArr, long[] jArr) {
        this.f37910a = bVarArr;
        this.f37911b = jArr;
    }

    @Override // x2.h
    public int a(long j10) {
        int e10 = l0.e(this.f37911b, j10, false, false);
        if (e10 < this.f37911b.length) {
            return e10;
        }
        return -1;
    }

    @Override // x2.h
    public List<x2.b> b(long j10) {
        int i9 = l0.i(this.f37911b, j10, true, false);
        if (i9 != -1) {
            x2.b[] bVarArr = this.f37910a;
            if (bVarArr[i9] != x2.b.f59544r) {
                return Collections.singletonList(bVarArr[i9]);
            }
        }
        return Collections.emptyList();
    }

    @Override // x2.h
    public long c(int i9) {
        com.google.android.exoplayer2.util.a.a(i9 >= 0);
        com.google.android.exoplayer2.util.a.a(i9 < this.f37911b.length);
        return this.f37911b[i9];
    }

    @Override // x2.h
    public int d() {
        return this.f37911b.length;
    }
}
