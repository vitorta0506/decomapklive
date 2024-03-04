package t;

import android.graphics.Rect;
import java.util.List;
/* loaded from: classes.dex */
class z implements q {
    @Override // t.q
    public void a(u.a aVar, List<u.o> list) {
        int a10 = m.a(aVar) / (aVar.F() + 1);
        int i9 = 0;
        for (u.o oVar : list) {
            Rect a11 = oVar.a();
            i9 += a10;
            a11.right -= i9;
            a11.left -= i9;
        }
    }
}
