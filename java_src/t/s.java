package t;

import android.graphics.Rect;
import java.util.List;
/* loaded from: classes.dex */
class s implements q {
    @Override // t.q
    public void a(u.a aVar, List<u.o> list) {
        int a10 = m.a(aVar) / 2;
        for (u.o oVar : list) {
            Rect a11 = oVar.a();
            a11.left += a10;
            a11.right += a10;
        }
    }
}
