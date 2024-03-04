package hb;

import org.greenrobot.eventbus.EventBus;
import y7.e;
/* loaded from: classes4.dex */
public final /* synthetic */ class a<T> {
    public static void a(b bVar, Object obj) {
        if (obj instanceof String) {
            e eVar = new e((String) obj);
            eVar.g(false);
            EventBus.getDefault().post(eVar);
        }
    }
}
