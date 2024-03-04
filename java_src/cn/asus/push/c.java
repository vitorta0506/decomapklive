package cn.asus.push;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes.dex */
public abstract class c extends Binder implements d {
    public static d b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("cn.asus.push.IAIDLInvoke");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof d)) ? new g(iBinder) : (d) queryLocalInterface;
    }

    public static d f() {
        return g.f1775b;
    }
}
