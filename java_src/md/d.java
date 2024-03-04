package md;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.rd.draw.data.Orientation;
/* loaded from: classes4.dex */
public class d extends a {
    public d(@NonNull Paint paint, @NonNull kd.a aVar) {
        super(paint, aVar);
    }

    public void a(@NonNull Canvas canvas, @NonNull fd.a aVar, int i9, int i10) {
        if (aVar instanceof gd.b) {
            gd.b bVar = (gd.b) aVar;
            int t10 = this.f55005b.t();
            int p10 = this.f55005b.p();
            this.f55004a.setColor(t10);
            canvas.drawCircle(i9, i10, this.f55005b.m(), this.f55004a);
            this.f55004a.setColor(p10);
            if (this.f55005b.g() == Orientation.HORIZONTAL) {
                canvas.drawCircle(bVar.c(), bVar.a(), bVar.b(), this.f55004a);
            } else {
                canvas.drawCircle(bVar.a(), bVar.c(), bVar.b(), this.f55004a);
            }
        }
    }
}
