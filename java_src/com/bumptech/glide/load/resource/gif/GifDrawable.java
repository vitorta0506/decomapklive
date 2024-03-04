package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.bumptech.glide.load.resource.gif.f;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import v0.j;
/* loaded from: classes.dex */
public class GifDrawable extends Drawable implements f.b, Animatable, Animatable2Compat {

    /* renamed from: a  reason: collision with root package name */
    private final a f4580a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f4581b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f4582c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4583d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4584e;

    /* renamed from: f  reason: collision with root package name */
    private int f4585f;

    /* renamed from: g  reason: collision with root package name */
    private int f4586g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f4587h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f4588i;

    /* renamed from: j  reason: collision with root package name */
    private Rect f4589j;

    /* renamed from: k  reason: collision with root package name */
    private List<Animatable2Compat.AnimationCallback> f4590k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends Drawable.ConstantState {
        @VisibleForTesting

        /* renamed from: a  reason: collision with root package name */
        final f f4591a;

        a(f fVar) {
            this.f4591a = fVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new GifDrawable(this);
        }
    }

    public GifDrawable(Context context, c0.a aVar, e0.h<Bitmap> hVar, int i9, int i10, Bitmap bitmap) {
        this(new a(new f(com.bumptech.glide.c.c(context), aVar, i9, i10, hVar, bitmap)));
    }

    private Drawable.Callback b() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    private Rect d() {
        if (this.f4589j == null) {
            this.f4589j = new Rect();
        }
        return this.f4589j;
    }

    private Paint h() {
        if (this.f4588i == null) {
            this.f4588i = new Paint(2);
        }
        return this.f4588i;
    }

    private void j() {
        List<Animatable2Compat.AnimationCallback> list = this.f4590k;
        if (list != null) {
            int size = list.size();
            for (int i9 = 0; i9 < size; i9++) {
                this.f4590k.get(i9).onAnimationEnd(this);
            }
        }
    }

    private void l() {
        this.f4585f = 0;
    }

    private void n() {
        j.a(!this.f4583d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f4580a.f4591a.f() == 1) {
            invalidateSelf();
        } else if (this.f4581b) {
        } else {
            this.f4581b = true;
            this.f4580a.f4591a.r(this);
            invalidateSelf();
        }
    }

    private void o() {
        this.f4581b = false;
        this.f4580a.f4591a.s(this);
    }

    @Override // com.bumptech.glide.load.resource.gif.f.b
    public void a() {
        if (b() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (g() == f() - 1) {
            this.f4585f++;
        }
        int i9 = this.f4586g;
        if (i9 == -1 || this.f4585f < i9) {
            return;
        }
        j();
        stop();
    }

    public ByteBuffer c() {
        return this.f4580a.f4591a.b();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.f4590k;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f4583d) {
            return;
        }
        if (this.f4587h) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), d());
            this.f4587h = false;
        }
        canvas.drawBitmap(this.f4580a.f4591a.c(), (Rect) null, d(), h());
    }

    public Bitmap e() {
        return this.f4580a.f4591a.e();
    }

    public int f() {
        return this.f4580a.f4591a.f();
    }

    public int g() {
        return this.f4580a.f4591a.d();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f4580a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f4580a.f4591a.h();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f4580a.f4591a.k();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public int i() {
        return this.f4580a.f4591a.j();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f4581b;
    }

    public void k() {
        this.f4583d = true;
        this.f4580a.f4591a.a();
    }

    public void m(e0.h<Bitmap> hVar, Bitmap bitmap) {
        this.f4580a.f4591a.o(hVar, bitmap);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f4587h = true;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.f4590k == null) {
            this.f4590k = new ArrayList();
        }
        this.f4590k.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i9) {
        h().setAlpha(i9);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        h().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        j.a(!this.f4583d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f4584e = z10;
        if (!z10) {
            o();
        } else if (this.f4582c) {
            n();
        }
        return super.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f4582c = true;
        l();
        if (this.f4584e) {
            n();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f4582c = false;
        o();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f4590k;
        if (list == null || animationCallback == null) {
            return false;
        }
        return list.remove(animationCallback);
    }

    GifDrawable(a aVar) {
        this.f4584e = true;
        this.f4586g = -1;
        this.f4580a = (a) j.d(aVar);
    }
}
