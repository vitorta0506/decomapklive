package t3;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class j extends k {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j(com.google.android.gms.common.api.d dVar) {
        super(dVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ com.google.android.gms.common.api.i c(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.b
    protected final /* bridge */ /* synthetic */ void l(a.b bVar) throws RemoteException {
        f fVar = (f) bVar;
        ((r) fVar.A()).E0(new i(this), fVar.j0());
    }
}
