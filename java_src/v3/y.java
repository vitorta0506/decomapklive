package v3;

import com.google.android.gms.signin.internal.zak;
/* loaded from: classes2.dex */
final class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zak f58995a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a0 f58996b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(a0 a0Var, zak zakVar) {
        this.f58996b = a0Var;
        this.f58995a = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a0.F0(this.f58996b, this.f58995a);
    }
}
