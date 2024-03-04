package yd;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.view.animation.LinearInterpolator;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
/* loaded from: classes4.dex */
public class c extends b implements Animatable, ValueAnimator.AnimatorUpdateListener {

    /* renamed from: e  reason: collision with root package name */
    protected ValueAnimator f60177e;

    /* renamed from: b  reason: collision with root package name */
    protected int f60174b = 0;

    /* renamed from: c  reason: collision with root package name */
    protected int f60175c = 0;

    /* renamed from: d  reason: collision with root package name */
    protected int f60176d = 0;

    /* renamed from: f  reason: collision with root package name */
    protected Path f60178f = new Path();

    public c() {
        ValueAnimator ofInt = ValueAnimator.ofInt(30, LocalCache.TIME_HOUR);
        this.f60177e = ofInt;
        ofInt.setDuration(10000L);
        this.f60177e.setInterpolator(new LinearInterpolator());
        this.f60177e.setRepeatCount(-1);
        this.f60177e.setRepeatMode(1);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        int i9;
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        int max = Math.max(1, width / 20);
        if (this.f60174b != width || this.f60175c != height) {
            this.f60178f.reset();
            float f10 = width - max;
            float f11 = height / 2;
            float f12 = max;
            this.f60178f.addCircle(f10, f11, f12, Path.Direction.CW);
            float f13 = width - (max * 5);
            this.f60178f.addRect(f13, i9 - max, f10, i9 + max, Path.Direction.CW);
            this.f60178f.addCircle(f13, f11, f12, Path.Direction.CW);
            this.f60174b = width;
            this.f60175c = height;
        }
        canvas.save();
        float f14 = width / 2;
        float f15 = height / 2;
        canvas.rotate(this.f60176d, f14, f15);
        for (int i10 = 0; i10 < 12; i10++) {
            this.f60173a.setAlpha((i10 + 5) * 17);
            canvas.rotate(30.0f, f14, f15);
            canvas.drawPath(this.f60178f, this.f60173a);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f60177e.isRunning();
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f60176d = (((Integer) valueAnimator.getAnimatedValue()).intValue() / 30) * 30;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.f60177e.isRunning()) {
            return;
        }
        this.f60177e.addUpdateListener(this);
        this.f60177e.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (this.f60177e.isRunning()) {
            this.f60177e.removeAllListeners();
            this.f60177e.removeAllUpdateListeners();
            this.f60177e.cancel();
        }
    }
}
