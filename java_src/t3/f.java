package t3;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.d;
/* loaded from: classes2.dex */
public final class f extends com.google.android.gms.common.internal.f {
    private final GoogleSignInOptions I;

    public f(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, @Nullable GoogleSignInOptions googleSignInOptions, d.a aVar, d.b bVar) {
        super(context, looper, 91, eVar, aVar, bVar);
        GoogleSignInOptions.a aVar2;
        if (googleSignInOptions != null) {
            aVar2 = new GoogleSignInOptions.a(googleSignInOptions);
        } else {
            aVar2 = new GoogleSignInOptions.a();
        }
        aVar2.i(j4.c.a());
        if (!eVar.d().isEmpty()) {
            for (Scope scope : eVar.d()) {
                aVar2.f(scope, new Scope[0]);
            }
        }
        this.I = aVar2.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    public final String B() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String C() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    public final GoogleSignInOptions j0() {
        return this.I;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int k() {
        return com.google.android.gms.common.d.f7626a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface p(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return queryLocalInterface instanceof r ? (r) queryLocalInterface : new r(iBinder);
    }
}
