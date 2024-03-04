package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.widget.ImageView;
import com.squareup.picasso.Picasso;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class q extends BitmapDrawable {

    /* renamed from: h  reason: collision with root package name */
    private static final Paint f29984h = new Paint();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f29985a;

    /* renamed from: b  reason: collision with root package name */
    private final float f29986b;

    /* renamed from: c  reason: collision with root package name */
    private final Picasso.LoadedFrom f29987c;

    /* renamed from: d  reason: collision with root package name */
    Drawable f29988d;

    /* renamed from: e  reason: collision with root package name */
    long f29989e;

    /* renamed from: f  reason: collision with root package name */
    boolean f29990f;

    /* renamed from: g  reason: collision with root package name */
    int f29991g;

    q(Context context, Bitmap bitmap, Drawable drawable, Picasso.LoadedFrom loadedFrom, boolean z10, boolean z11) {
        super(context.getResources(), bitmap);
        this.f29991g = 255;
        this.f29985a = z11;
        this.f29986b = context.getResources().getDisplayMetrics().density;
        this.f29987c = loadedFrom;
        if ((loadedFrom == Picasso.LoadedFrom.MEMORY || z10) ? false : true) {
            this.f29988d = drawable;
            this.f29990f = true;
            this.f29989e = SystemClock.uptimeMillis();
        }
    }

    private void a(Canvas canvas) {
        Paint paint = f29984h;
        paint.setColor(-1);
        canvas.drawPath(b(new Point(0, 0), (int) (this.f29986b * 16.0f)), paint);
        paint.setColor(this.f29987c.debugColor);
        canvas.drawPath(b(new Point(0, 0), (int) (this.f29986b * 15.0f)), paint);
    }

    private static Path b(Point point, int i9) {
        Point point2 = new Point(point.x + i9, point.y);
        Point point3 = new Point(point.x, point.y + i9);
        Path path = new Path();
        path.moveTo(point.x, point.y);
        path.lineTo(point2.x, point2.y);
        path.lineTo(point3.x, point3.y);
        return path;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(ImageView imageView, Context context, Bitmap bitmap, Picasso.LoadedFrom loadedFrom, boolean z10, boolean z11) {
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof AnimationDrawable) {
            ((AnimationDrawable) drawable).stop();
        }
        imageView.setImageDrawable(new q(context, bitmap, drawable, loadedFrom, z10, z11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(ImageView imageView, Drawable drawable) {
        imageView.setImageDrawable(drawable);
        if (imageView.getDrawable() instanceof AnimationDrawable) {
            ((AnimationDrawable) imageView.getDrawable()).start();
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!this.f29990f) {
            super.draw(canvas);
        } else {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.f29989e)) / 200.0f;
            if (uptimeMillis >= 1.0f) {
                this.f29990f = false;
                this.f29988d = null;
                super.draw(canvas);
            } else {
                Drawable drawable = this.f29988d;
                if (drawable != null) {
                    drawable.draw(canvas);
                }
                super.setAlpha((int) (this.f29991g * uptimeMillis));
                super.draw(canvas);
                super.setAlpha(this.f29991g);
            }
        }
        if (this.f29985a) {
            a(canvas);
        }
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f29988d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int i9) {
        this.f29991g = i9;
        Drawable drawable = this.f29988d;
        if (drawable != null) {
            drawable.setAlpha(i9);
        }
        super.setAlpha(i9);
    }

    @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f29988d;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        }
        super.setColorFilter(colorFilter);
    }
}
