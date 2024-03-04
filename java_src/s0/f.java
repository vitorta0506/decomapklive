package s0;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import t0.f;
/* loaded from: classes.dex */
public abstract class f<Z> extends l<ImageView, Z> implements f.a {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Animatable f57625h;

    public f(ImageView imageView) {
        super(imageView);
    }

    private void g(@Nullable Z z10) {
        if (z10 instanceof Animatable) {
            Animatable animatable = (Animatable) z10;
            this.f57625h = animatable;
            animatable.start();
            return;
        }
        this.f57625h = null;
    }

    private void i(@Nullable Z z10) {
        h(z10);
        g(z10);
    }

    @Override // t0.f.a
    public void a(Drawable drawable) {
        ((ImageView) this.f57630a).setImageDrawable(drawable);
    }

    @Override // t0.f.a
    @Nullable
    public Drawable b() {
        return ((ImageView) this.f57630a).getDrawable();
    }

    protected abstract void h(@Nullable Z z10);

    @Override // s0.l, s0.a, s0.k
    public void onLoadCleared(@Nullable Drawable drawable) {
        super.onLoadCleared(drawable);
        Animatable animatable = this.f57625h;
        if (animatable != null) {
            animatable.stop();
        }
        i(null);
        a(drawable);
    }

    @Override // s0.a, s0.k
    public void onLoadFailed(@Nullable Drawable drawable) {
        super.onLoadFailed(drawable);
        i(null);
        a(drawable);
    }

    @Override // s0.l, s0.a, s0.k
    public void onLoadStarted(@Nullable Drawable drawable) {
        super.onLoadStarted(drawable);
        i(null);
        a(drawable);
    }

    @Override // s0.k
    public void onResourceReady(@NonNull Z z10, @Nullable t0.f<? super Z> fVar) {
        if (fVar != null && fVar.a(z10, this)) {
            g(z10);
        } else {
            i(z10);
        }
    }

    @Override // s0.a, p0.f
    public void onStart() {
        Animatable animatable = this.f57625h;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // s0.a, p0.f
    public void onStop() {
        Animatable animatable = this.f57625h;
        if (animatable != null) {
            animatable.stop();
        }
    }
}
