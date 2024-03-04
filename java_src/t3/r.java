package t3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
/* loaded from: classes2.dex */
public final class r extends j4.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public r(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.signin.internal.ISignInService");
    }

    public final void E0(q qVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel f10 = f();
        j4.d.d(f10, qVar);
        j4.d.c(f10, googleSignInOptions);
        D0(103, f10);
    }

    public final void F0(q qVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
        Parcel f10 = f();
        j4.d.d(f10, qVar);
        j4.d.c(f10, googleSignInOptions);
        D0(102, f10);
    }
}
