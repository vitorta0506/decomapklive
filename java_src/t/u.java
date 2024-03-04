package t;

import android.graphics.Rect;
import java.util.List;
/* loaded from: classes.dex */
class u implements q {
    @Override // t.q
    public void a(u.a aVar, List<u.o> list) {
        if (aVar.F() == 1) {
            return;
        }
        int a10 = m.a(aVar) / (aVar.F() - 1);
        int i9 = 0;
        for (u.o oVar : list) {
            Rect a11 = oVar.a();
            if (a11.left == aVar.c()) {
                int c10 = a11.left - aVar.c();
                a11.left = aVar.c();
                a11.right -= c10;
            } else {
                i9 += a10;
                a11.left += i9;
                a11.right += i9;
            }
        }
    }
}
