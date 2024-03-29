package md;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.rd.draw.data.Orientation;
/* loaded from: classes4.dex */
public class k extends a {

    /* renamed from: c  reason: collision with root package name */
    public RectF f55008c;

    public k(@NonNull Paint paint, @NonNull kd.a aVar) {
        super(paint, aVar);
        this.f55008c = new RectF();
    }

    public void a(@NonNull Canvas canvas, @NonNull fd.a aVar, int i9, int i10) {
        if (aVar instanceof gd.h) {
            gd.h hVar = (gd.h) aVar;
            int b10 = hVar.b();
            int a10 = hVar.a();
            int m10 = this.f55005b.m();
            int t10 = this.f55005b.t();
            int p10 = this.f55005b.p();
            if (this.f55005b.g() == Orientation.HORIZONTAL) {
                RectF rectF = this.f55008c;
                rectF.left = b10;
                rectF.right = a10;
                rectF.top = i10 - m10;
                rectF.bottom = i10 + m10;
            } else {
                RectF rectF2 = this.f55008c;
                rectF2.left = i9 - m10;
                rectF2.right = i9 + m10;
                rectF2.top = b10;
                rectF2.bottom = a10;
            }
            this.f55004a.setColor(t10);
            float f10 = i9;
            float f11 = i10;
            float f12 = m10;
            canvas.drawCircle(f10, f11, f12, this.f55004a);
            this.f55004a.setColor(p10);
            canvas.drawRoundRect(this.f55008c, f12, f12, this.f55004a);
        }
    }
}
