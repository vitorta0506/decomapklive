package t;

import android.graphics.Rect;
import java.util.List;
/* loaded from: classes.dex */
class g implements q {
    @Override // t.q
    public void a(u.a aVar, List<u.o> list) {
        if (aVar.F() == 1) {
            return;
        }
        int b10 = m.b(aVar) / (aVar.F() - 1);
        int i9 = 0;
        for (u.o oVar : list) {
            Rect a10 = oVar.a();
            if (a10.top == aVar.l()) {
                int l10 = a10.top - aVar.l();
                a10.top = aVar.l();
                a10.bottom -= l10;
            } else {
                i9 += b10;
                a10.top += i9;
                a10.bottom += i9;
            }
        }
    }
}
