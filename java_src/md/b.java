package md;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.rd.animation.type.AnimationType;
/* loaded from: classes4.dex */
public class b extends a {

    /* renamed from: c  reason: collision with root package name */
    private Paint f55006c;

    public b(@NonNull Paint paint, @NonNull kd.a aVar) {
        super(paint, aVar);
        Paint paint2 = new Paint();
        this.f55006c = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.f55006c.setAntiAlias(true);
        this.f55006c.setStrokeWidth(aVar.s());
    }

    public void a(@NonNull Canvas canvas, int i9, boolean z10, int i10, int i11) {
        Paint paint;
        float m10 = this.f55005b.m();
        int s10 = this.f55005b.s();
        float o10 = this.f55005b.o();
        int p10 = this.f55005b.p();
        int t10 = this.f55005b.t();
        int q10 = this.f55005b.q();
        AnimationType b10 = this.f55005b.b();
        if ((b10 == AnimationType.SCALE && !z10) || (b10 == AnimationType.SCALE_DOWN && z10)) {
            m10 *= o10;
        }
        if (i9 != q10) {
            p10 = t10;
        }
        if (b10 == AnimationType.FILL && i9 != q10) {
            paint = this.f55006c;
            paint.setStrokeWidth(s10);
        } else {
            paint = this.f55004a;
        }
        paint.setColor(p10);
        canvas.drawCircle(i10, i11, m10, paint);
    }
}
