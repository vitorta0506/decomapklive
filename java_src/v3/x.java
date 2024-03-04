package v3;

import com.google.android.gms.common.ConnectionResult;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a0 f58994a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(a0 a0Var) {
        this.f58994a = a0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        z zVar;
        zVar = this.f58994a.f58959g;
        zVar.c(new ConnectionResult(4));
    }
}
