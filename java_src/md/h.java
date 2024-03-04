package md;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.rd.draw.data.Orientation;
/* loaded from: classes4.dex */
public class h extends a {
    public h(@NonNull Paint paint, @NonNull kd.a aVar) {
        super(paint, aVar);
    }

    public void a(@NonNull Canvas canvas, @NonNull fd.a aVar, int i9, int i10) {
        if (aVar instanceof gd.e) {
            int a10 = ((gd.e) aVar).a();
            int t10 = this.f55005b.t();
            int p10 = this.f55005b.p();
            int m10 = this.f55005b.m();
            this.f55004a.setColor(t10);
            float f10 = i9;
            float f11 = i10;
            float f12 = m10;
            canvas.drawCircle(f10, f11, f12, this.f55004a);
            this.f55004a.setColor(p10);
            if (this.f55005b.g() == Orientation.HORIZONTAL) {
                canvas.drawCircle(a10, f11, f12, this.f55004a);
            } else {
                canvas.drawCircle(f10, a10, f12, this.f55004a);
            }
        }
    }
}
