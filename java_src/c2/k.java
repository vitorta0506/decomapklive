package c2;

import androidx.annotation.Nullable;
import c2.e0;
import com.google.android.exoplayer2.k1;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes.dex */
public final class k implements e0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1548a = new byte[4096];

    @Override // c2.e0
    public /* synthetic */ void a(com.google.android.exoplayer2.util.b0 b0Var, int i9) {
        d0.b(this, b0Var, i9);
    }

    @Override // c2.e0
    public /* synthetic */ int b(j3.f fVar, int i9, boolean z10) {
        return d0.a(this, fVar, i9, z10);
    }

    @Override // c2.e0
    public void c(long j10, int i9, int i10, int i11, @Nullable e0.a aVar) {
    }

    @Override // c2.e0
    public void d(k1 k1Var) {
    }

    @Override // c2.e0
    public int e(j3.f fVar, int i9, boolean z10, int i10) throws IOException {
        int read = fVar.read(this.f1548a, 0, Math.min(this.f1548a.length, i9));
        if (read == -1) {
            if (z10) {
                return -1;
            }
            throw new EOFException();
        }
        return read;
    }

    @Override // c2.e0
    public void f(com.google.android.exoplayer2.util.b0 b0Var, int i9, int i10) {
        b0Var.Q(i9);
    }
}
