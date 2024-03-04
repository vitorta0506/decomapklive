package i4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class d extends a implements f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // i4.f
    public final String E() throws RemoteException {
        Parcel D0 = D0(1, f());
        String readString = D0.readString();
        D0.recycle();
        return readString;
    }

    @Override // i4.f
    public final boolean o(boolean z10) throws RemoteException {
        Parcel f10 = f();
        c.a(f10, true);
        Parcel D0 = D0(2, f10);
        boolean b10 = c.b(D0);
        D0.recycle();
        return b10;
    }
}
