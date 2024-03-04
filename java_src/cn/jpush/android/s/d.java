package cn.jpush.android.s;
/* loaded from: classes.dex */
public class d {
    public static c a(cn.jpush.android.w.c cVar, cn.jpush.android.x.e eVar) {
        if (eVar != null) {
            int o10 = eVar.o();
            if (o10 == 1) {
                return ((cn.jpush.android.x.b) eVar).a() ? new b(cVar, eVar) : new a(cVar, eVar);
            } else if (o10 != 2) {
                if (o10 != 3) {
                    return null;
                }
                return new e(cVar, eVar);
            } else {
                return new f(cVar, eVar);
            }
        }
        return null;
    }
}
