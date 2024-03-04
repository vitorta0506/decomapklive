package t;

import android.graphics.Rect;
import java.util.List;
/* loaded from: classes.dex */
class v implements q {
    @Override // t.q
    public void a(u.a aVar, List<u.o> list) {
        int a10 = m.a(aVar) / aVar.F();
        int i9 = a10;
        for (u.o oVar : list) {
            Rect a11 = oVar.a();
            if (a11.left == aVar.c()) {
                int c10 = a11.left - aVar.c();
                a11.left = aVar.c();
                a11.right = (a11.right - c10) + i9;
            } else {
                a11.left += i9;
                i9 += a10;
                a11.right += i9;
            }
        }
    }
}
