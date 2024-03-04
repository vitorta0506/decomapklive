package md;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class c extends a {
    public c(@NonNull Paint paint, @NonNull kd.a aVar) {
        super(paint, aVar);
    }

    public void a(@NonNull Canvas canvas, @NonNull fd.a aVar, int i9, int i10, int i11) {
        if (aVar instanceof gd.a) {
            gd.a aVar2 = (gd.a) aVar;
            float m10 = this.f55005b.m();
            int p10 = this.f55005b.p();
            int q10 = this.f55005b.q();
            int r10 = this.f55005b.r();
            int f10 = this.f55005b.f();
            if (this.f55005b.z()) {
                if (i9 == r10) {
                    p10 = aVar2.a();
                } else if (i9 == q10) {
                    p10 = aVar2.b();
                }
            } else if (i9 == q10) {
                p10 = aVar2.a();
            } else if (i9 == f10) {
                p10 = aVar2.b();
            }
            this.f55004a.setColor(p10);
            canvas.drawCircle(i10, i11, m10, this.f55004a);
        }
    }
}
