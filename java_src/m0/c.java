package m0;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import v0.j;
/* loaded from: classes.dex */
public abstract class c<T extends Drawable> implements u<T>, q {

    /* renamed from: a  reason: collision with root package name */
    protected final T f54407a;

    public c(T t10) {
        this.f54407a = (T) j.d(t10);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    /* renamed from: b */
    public final T get() {
        Drawable.ConstantState constantState = this.f54407a.getConstantState();
        if (constantState == null) {
            return this.f54407a;
        }
        return (T) constantState.newDrawable();
    }

    public void initialize() {
        T t10 = this.f54407a;
        if (t10 instanceof BitmapDrawable) {
            ((BitmapDrawable) t10).getBitmap().prepareToDraw();
        } else if (t10 instanceof GifDrawable) {
            ((GifDrawable) t10).e().prepareToDraw();
        }
    }
}
