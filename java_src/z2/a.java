package z2;

import com.google.android.exoplayer2.util.b0;
import java.util.List;
import x2.g;
import x2.h;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: o  reason: collision with root package name */
    private final b f60298o;

    public a(List<byte[]> list) {
        super("DvbDecoder");
        b0 b0Var = new b0(list.get(0));
        this.f60298o = new b(b0Var.J(), b0Var.J());
    }

    @Override // x2.g
    protected h z(byte[] bArr, int i9, boolean z10) {
        if (z10) {
            this.f60298o.r();
        }
        return new c(this.f60298o.b(bArr, i9));
    }
}
