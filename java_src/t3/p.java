package t3;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public abstract class p extends j4.b implements q {
    public p() {
        super("com.google.android.gms.auth.api.signin.internal.ISignInCallbacks");
    }

    @Override // j4.b
    protected final boolean b(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        switch (i9) {
            case 101:
                j4.d.b(parcel);
                z((GoogleSignInAccount) j4.d.a(parcel, GoogleSignInAccount.CREATOR), (Status) j4.d.a(parcel, Status.CREATOR));
                break;
            case 102:
                j4.d.b(parcel);
                y0((Status) j4.d.a(parcel, Status.CREATOR));
                break;
            case 103:
                j4.d.b(parcel);
                q0((Status) j4.d.a(parcel, Status.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
