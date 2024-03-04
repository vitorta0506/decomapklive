package m0;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.u;
/* loaded from: classes.dex */
final class e extends c<Drawable> {
    private e(Drawable drawable) {
        super(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static u<Drawable> c(@Nullable Drawable drawable) {
        if (drawable != null) {
            return new e(drawable);
        }
        return null;
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<Drawable> a() {
        return this.f54407a.getClass();
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return Math.max(1, this.f54407a.getIntrinsicWidth() * this.f54407a.getIntrinsicHeight() * 4);
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
    }
}
