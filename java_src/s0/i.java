package s0;

import androidx.annotation.NonNull;
@Deprecated
/* loaded from: classes.dex */
public abstract class i<Z> extends a<Z> {
    private final int height;
    private final int width;

    public i() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // s0.k
    public final void getSize(@NonNull j jVar) {
        if (v0.k.u(this.width, this.height)) {
            jVar.d(this.width, this.height);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.width + " and height: " + this.height + ", either provide dimensions in the constructor or call override()");
    }

    @Override // s0.k
    public void removeCallback(@NonNull j jVar) {
    }

    public i(int i9, int i10) {
        this.width = i9;
        this.height = i10;
    }
}
