package r4;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.signin.internal.zaa;
import com.google.android.gms.signin.internal.zag;
import com.google.android.gms.signin.internal.zak;
/* loaded from: classes2.dex */
public abstract class b extends k4.b implements c {
    public b() {
        super("com.google.android.gms.signin.internal.ISignInCallbacks");
    }

    @Override // k4.b
    protected final boolean D0(int i9, Parcel parcel, Parcel parcel2, int i10) throws RemoteException {
        switch (i9) {
            case 3:
                ConnectionResult connectionResult = (ConnectionResult) k4.c.a(parcel, ConnectionResult.CREATOR);
                zaa zaaVar = (zaa) k4.c.a(parcel, zaa.CREATOR);
                k4.c.b(parcel);
                break;
            case 4:
                Status status = (Status) k4.c.a(parcel, Status.CREATOR);
                k4.c.b(parcel);
                break;
            case 5:
            default:
                return false;
            case 6:
                Status status2 = (Status) k4.c.a(parcel, Status.CREATOR);
                k4.c.b(parcel);
                break;
            case 7:
                Status status3 = (Status) k4.c.a(parcel, Status.CREATOR);
                GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) k4.c.a(parcel, GoogleSignInAccount.CREATOR);
                k4.c.b(parcel);
                break;
            case 8:
                k4.c.b(parcel);
                q((zak) k4.c.a(parcel, zak.CREATOR));
                break;
            case 9:
                zag zagVar = (zag) k4.c.a(parcel, zag.CREATOR);
                k4.c.b(parcel);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
