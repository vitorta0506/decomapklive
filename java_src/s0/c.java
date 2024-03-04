package s0;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public abstract class c<T> implements k<T> {
    private final int height;
    @Nullable
    private com.bumptech.glide.request.e request;
    private final int width;

    public c() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // s0.k
    @Nullable
    public final com.bumptech.glide.request.e getRequest() {
        return this.request;
    }

    @Override // s0.k
    public final void getSize(@NonNull j jVar) {
        jVar.d(this.width, this.height);
    }

    @Override // p0.f
    public void onDestroy() {
    }

    @Override // s0.k
    public void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override // s0.k
    public void onLoadStarted(@Nullable Drawable drawable) {
    }

    @Override // p0.f
    public void onStart() {
    }

    @Override // p0.f
    public void onStop() {
    }

    @Override // s0.k
    public final void removeCallback(@NonNull j jVar) {
    }

    @Override // s0.k
    public final void setRequest(@Nullable com.bumptech.glide.request.e eVar) {
        this.request = eVar;
    }

    public c(int i9, int i10) {
        if (v0.k.u(i9, i10)) {
            this.width = i9;
            this.height = i10;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + i9 + " and height: " + i10);
    }
}
