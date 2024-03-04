package t3;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public abstract class n extends j4.b implements o {
    public n() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // j4.b
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        if (i9 == 1) {
            p();
        } else if (i9 != 2) {
            return false;
        } else {
            i();
        }
        return true;
    }
}
