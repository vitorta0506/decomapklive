package yd;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class a extends b {

    /* renamed from: b  reason: collision with root package name */
    private int f60170b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f60171c = 0;

    /* renamed from: d  reason: collision with root package name */
    private Path f60172d = new Path();

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        if (this.f60170b != width || this.f60171c != height) {
            int i9 = (width * 30) / 225;
            this.f60172d.reset();
            double d10 = i9;
            float sin = (float) (Math.sin(0.7853981633974483d) * d10);
            int i10 = width / 2;
            float f10 = height;
            this.f60172d.moveTo(i10, f10);
            float f11 = height / 2;
            this.f60172d.lineTo(0.0f, f11);
            float f12 = f11 - sin;
            this.f60172d.lineTo(sin, f12);
            int i11 = i9 / 2;
            float f13 = i10 - i11;
            float sin2 = (f10 - ((float) (d10 / Math.sin(0.7853981633974483d)))) - i11;
            this.f60172d.lineTo(f13, sin2);
            this.f60172d.lineTo(f13, 0.0f);
            float f14 = i10 + i11;
            this.f60172d.lineTo(f14, 0.0f);
            this.f60172d.lineTo(f14, sin2);
            float f15 = width;
            this.f60172d.lineTo(f15 - sin, f12);
            this.f60172d.lineTo(f15, f11);
            this.f60172d.close();
            this.f60170b = width;
            this.f60171c = height;
        }
        canvas.drawPath(this.f60172d, this.f60173a);
    }
}
