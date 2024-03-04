package md;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class e extends a {

    /* renamed from: c  reason: collision with root package name */
    private Paint f55007c;

    public e(@NonNull Paint paint, @NonNull kd.a aVar) {
        super(paint, aVar);
        Paint paint2 = new Paint();
        this.f55007c = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.f55007c.setAntiAlias(true);
    }

    public void a(@NonNull Canvas canvas, @NonNull fd.a aVar, int i9, int i10, int i11) {
        if (aVar instanceof gd.c) {
            gd.c cVar = (gd.c) aVar;
            int t10 = this.f55005b.t();
            float m10 = this.f55005b.m();
            int s10 = this.f55005b.s();
            int q10 = this.f55005b.q();
            int r10 = this.f55005b.r();
            int f10 = this.f55005b.f();
            if (this.f55005b.z()) {
                if (i9 == r10) {
                    t10 = cVar.a();
                    m10 = cVar.e();
                    s10 = cVar.g();
                } else if (i9 == q10) {
                    t10 = cVar.b();
                    m10 = cVar.f();
                    s10 = cVar.h();
                }
            } else if (i9 == q10) {
                t10 = cVar.a();
                m10 = cVar.e();
                s10 = cVar.g();
            } else if (i9 == f10) {
                t10 = cVar.b();
                m10 = cVar.f();
                s10 = cVar.h();
            }
            this.f55007c.setColor(t10);
            this.f55007c.setStrokeWidth(this.f55005b.s());
            float f11 = i10;
            float f12 = i11;
            canvas.drawCircle(f11, f12, this.f55005b.m(), this.f55007c);
            this.f55007c.setStrokeWidth(s10);
            canvas.drawCircle(f11, f12, m10, this.f55007c);
        }
    }
}
