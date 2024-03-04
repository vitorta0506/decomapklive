package t;

import android.graphics.Rect;
import java.util.List;
/* loaded from: classes.dex */
class e implements q {
    @Override // t.q
    public void a(u.a aVar, List<u.o> list) {
        int b10 = m.b(aVar) / 2;
        for (u.o oVar : list) {
            Rect a10 = oVar.a();
            a10.top += b10;
            a10.bottom += b10;
        }
    }
}
