package j4;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.d;
import o3.a;
/* loaded from: classes2.dex */
public final class f extends com.google.android.gms.common.internal.f {
    private final a.C0583a I;

    public f(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, a.C0583a c0583a, d.a aVar, d.b bVar) {
        super(context, looper, 68, eVar, aVar, bVar);
        a.C0583a.C0584a c0584a = new a.C0583a.C0584a(c0583a == null ? a.C0583a.f55501d : c0583a);
        c0584a.a(c.a());
        this.I = new a.C0583a(c0584a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    public final String B() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final String C() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int k() {
        return 12800000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    public final /* synthetic */ IInterface p(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return queryLocalInterface instanceof h ? (h) queryLocalInterface : new h(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Bundle x() {
        return this.I.a();
    }
}
