package yd;

import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
/* loaded from: classes4.dex */
public abstract class b extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    protected Paint f60173a;

    /* JADX INFO: Access modifiers changed from: protected */
    public b() {
        Paint paint = new Paint();
        this.f60173a = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f60173a.setAntiAlias(true);
        this.f60173a.setColor(-5592406);
    }

    public void a(int i9) {
        this.f60173a.setColor(i9);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i9) {
        this.f60173a.setAlpha(i9);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f60173a.setColorFilter(colorFilter);
    }
}
