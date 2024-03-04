package t3;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public interface q extends IInterface {
    void q0(Status status) throws RemoteException;

    void y0(Status status) throws RemoteException;

    void z(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException;
}
