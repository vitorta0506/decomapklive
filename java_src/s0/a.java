package s0;

import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
@Deprecated
/* loaded from: classes.dex */
public abstract class a<Z> implements k<Z> {
    private com.bumptech.glide.request.e request;

    @Override // s0.k
    @Nullable
    public com.bumptech.glide.request.e getRequest() {
        return this.request;
    }

    @Override // p0.f
    public void onDestroy() {
    }

    @Override // s0.k
    public void onLoadCleared(@Nullable Drawable drawable) {
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
    public void setRequest(@Nullable com.bumptech.glide.request.e eVar) {
        this.request = eVar;
    }
}
