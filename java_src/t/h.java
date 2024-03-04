package t;

import android.graphics.Rect;
import java.util.List;
/* loaded from: classes.dex */
class h implements q {
    @Override // t.q
    public void a(u.a aVar, List<u.o> list) {
        int b10 = m.b(aVar) / aVar.F();
        int i9 = b10;
        for (u.o oVar : list) {
            Rect a10 = oVar.a();
            if (a10.top == aVar.l()) {
                int l10 = a10.top - aVar.l();
                a10.top = aVar.l();
                a10.bottom = (a10.bottom - l10) + i9;
            } else {
                a10.top += i9;
                i9 += b10;
                a10.bottom += i9;
            }
        }
    }
}
