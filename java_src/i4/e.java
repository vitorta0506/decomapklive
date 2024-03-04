package i4;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2.dex */
public abstract class e extends b implements f {
    public static f b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        if (queryLocalInterface instanceof f) {
            return (f) queryLocalInterface;
        }
        return new d(iBinder);
    }
}
