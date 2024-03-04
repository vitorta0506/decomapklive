package md;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.rd.draw.data.Orientation;
/* loaded from: classes4.dex */
public class i extends a {
    public i(@NonNull Paint paint, @NonNull kd.a aVar) {
        super(paint, aVar);
    }

    public void a(@NonNull Canvas canvas, @NonNull fd.a aVar, int i9, int i10, int i11) {
        if (aVar instanceof gd.f) {
            gd.f fVar = (gd.f) aVar;
            int p10 = this.f55005b.p();
            int t10 = this.f55005b.t();
            int m10 = this.f55005b.m();
            int q10 = this.f55005b.q();
            int r10 = this.f55005b.r();
            int f10 = this.f55005b.f();
            int a10 = fVar.a();
            if (this.f55005b.z()) {
                if (i9 == r10) {
                    a10 = fVar.a();
                } else {
                    if (i9 == q10) {
                        a10 = fVar.b();
                    }
                    p10 = t10;
                }
            } else if (i9 == f10) {
                a10 = fVar.a();
            } else {
                if (i9 == q10) {
                    a10 = fVar.b();
                }
                p10 = t10;
            }
            this.f55004a.setColor(p10);
            if (this.f55005b.g() == Orientation.HORIZONTAL) {
                canvas.drawCircle(a10, i11, m10, this.f55004a);
            } else {
                canvas.drawCircle(i10, a10, m10, this.f55004a);
            }
        }
    }
}
