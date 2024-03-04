package t6;

import a6.d;
import a6.e;
import a6.h;
import a6.j;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class b implements j {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object c(String str, d dVar, e eVar) {
        try {
            c.b(str);
            return dVar.f().a(eVar);
        } finally {
            c.a();
        }
    }

    @Override // a6.j
    public List<d<?>> a(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (final d<?> dVar : componentRegistrar.getComponents()) {
            final String g10 = dVar.g();
            if (g10 != null) {
                dVar = dVar.r(new h() { // from class: t6.a
                    @Override // a6.h
                    public final Object a(e eVar) {
                        Object c10;
                        c10 = b.c(g10, dVar, eVar);
                        return c10;
                    }
                });
            }
            arrayList.add(dVar);
        }
        return arrayList;
    }
}
