package ag;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
/* loaded from: classes5.dex */
public class c extends Drawable implements Animatable {

    /* renamed from: a  reason: collision with root package name */
    private final d f770a;

    /* renamed from: b  reason: collision with root package name */
    private final Drawable.Callback f771b;

    /* loaded from: classes5.dex */
    class a implements Drawable.Callback {
        a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            c.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
            c.this.scheduleSelf(runnable, j10);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            c.this.unscheduleSelf(runnable);
        }
    }

    public c(d dVar) {
        a aVar = new a();
        this.f771b = aVar;
        this.f770a = dVar;
        dVar.j(aVar);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (getBounds().isEmpty()) {
            return;
        }
        this.f770a.d(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) this.f770a.f779g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) this.f770a.f778f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f770a.f();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f770a.i(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i9) {
        this.f770a.h(i9);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f770a.k(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f770a.m();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f770a.n();
    }
}
