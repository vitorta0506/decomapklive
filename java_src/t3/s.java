package t3;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
/* loaded from: classes2.dex */
public final class s extends n {

    /* renamed from: a  reason: collision with root package name */
    private final Context f58024a;

    public s(Context context) {
        this.f58024a = context;
    }

    private final void f() {
        if (e4.p.a(this.f58024a, Binder.getCallingUid())) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        throw new SecurityException("Calling UID " + callingUid + " is not Google Play services.");
    }

    @Override // t3.o
    public final void i() {
        f();
        m.a(this.f58024a).b();
    }

    @Override // t3.o
    public final void p() {
        f();
        b b10 = b.b(this.f58024a);
        GoogleSignInAccount c10 = b10.c();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.DEFAULT_SIGN_IN;
        if (c10 != null) {
            googleSignInOptions = b10.d();
        }
        com.google.android.gms.auth.api.signin.b b11 = com.google.android.gms.auth.api.signin.a.b(this.f58024a, googleSignInOptions);
        if (c10 != null) {
            b11.t();
        } else {
            b11.u();
        }
    }
}
