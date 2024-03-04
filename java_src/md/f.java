package md;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class f extends a {
    public f(@NonNull Paint paint, @NonNull kd.a aVar) {
        super(paint, aVar);
    }

    public void a(@NonNull Canvas canvas, @NonNull fd.a aVar, int i9, int i10, int i11) {
        if (aVar instanceof gd.d) {
            gd.d dVar = (gd.d) aVar;
            float m10 = this.f55005b.m();
            int p10 = this.f55005b.p();
            int q10 = this.f55005b.q();
            int r10 = this.f55005b.r();
            int f10 = this.f55005b.f();
            if (this.f55005b.z()) {
                if (i9 == r10) {
                    m10 = dVar.e();
                    p10 = dVar.a();
                } else if (i9 == q10) {
                    m10 = dVar.f();
                    p10 = dVar.b();
                }
            } else if (i9 == q10) {
                m10 = dVar.e();
                p10 = dVar.a();
            } else if (i9 == f10) {
                m10 = dVar.f();
                p10 = dVar.b();
            }
            this.f55004a.setColor(p10);
            canvas.drawCircle(i10, i11, m10, this.f55004a);
        }
    }
}
