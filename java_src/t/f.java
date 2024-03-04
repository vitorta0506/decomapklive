package t;

import android.graphics.Rect;
import java.util.List;
/* loaded from: classes.dex */
class f implements q {
    @Override // t.q
    public void a(u.a aVar, List<u.o> list) {
        int b10 = m.b(aVar) / (aVar.F() + 1);
        int i9 = 0;
        for (u.o oVar : list) {
            Rect a10 = oVar.a();
            i9 += b10;
            a10.top += i9;
            a10.bottom += i9;
        }
    }
}
