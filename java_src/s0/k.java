package s0;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public interface k<R> extends p0.f {
    @Nullable
    com.bumptech.glide.request.e getRequest();

    void getSize(@NonNull j jVar);

    void onLoadCleared(@Nullable Drawable drawable);

    void onLoadFailed(@Nullable Drawable drawable);

    void onLoadStarted(@Nullable Drawable drawable);

    void onResourceReady(@NonNull R r10, @Nullable t0.f<? super R> fVar);

    void removeCallback(@NonNull j jVar);

    void setRequest(@Nullable com.bumptech.glide.request.e eVar);
}
