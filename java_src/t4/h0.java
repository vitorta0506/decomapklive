package t4;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h0 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g0 f58040a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Callable f58041b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(g0 g0Var, Callable callable) {
        this.f58040a = g0Var;
        this.f58041b = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f58040a.r(this.f58041b.call());
        } catch (Exception e10) {
            this.f58040a.q(e10);
        } catch (Throwable th2) {
            this.f58040a.q(new RuntimeException(th2));
        }
    }
}
