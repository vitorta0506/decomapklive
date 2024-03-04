package rb;

import android.content.Context;
import android.util.Log;
/* loaded from: classes4.dex */
public abstract class d {
    public static d a(e eVar) {
        return vb.b.h(eVar);
    }

    public static d c() {
        return vb.b.f();
    }

    public static synchronized void e(Context context) {
        synchronized (d.class) {
            Log.i("AGConnectInstance", "AGConnectInstance#initialize");
            vb.b.j(context);
        }
    }

    public abstract Context b();

    public abstract e d();
}
