package t4;

import com.google.android.gms.tasks.RuntimeExecutionException;
/* loaded from: classes2.dex */
final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f58045a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ o f58046b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(o oVar, g gVar) {
        this.f58046b = oVar;
        this.f58045a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g0 g0Var;
        g0 g0Var2;
        g0 g0Var3;
        a aVar;
        g0 g0Var4;
        g0 g0Var5;
        if (this.f58045a.m()) {
            g0Var5 = this.f58046b.f58049c;
            g0Var5.s();
            return;
        }
        try {
            aVar = this.f58046b.f58048b;
            Object a10 = aVar.a(this.f58045a);
            g0Var4 = this.f58046b.f58049c;
            g0Var4.r(a10);
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                g0Var3 = this.f58046b.f58049c;
                g0Var3.q((Exception) e10.getCause());
                return;
            }
            g0Var2 = this.f58046b.f58049c;
            g0Var2.q(e10);
        } catch (Exception e11) {
            g0Var = this.f58046b.f58049c;
            g0Var.q(e11);
        }
    }
}
