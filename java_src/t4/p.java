package t4;

import com.google.android.gms.tasks.RuntimeExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class p implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f58050a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ q f58051b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(q qVar, g gVar) {
        this.f58051b = qVar;
        this.f58050a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g0 g0Var;
        g0 g0Var2;
        g0 g0Var3;
        a aVar;
        try {
            aVar = this.f58051b.f58053b;
            g gVar = (g) aVar.a(this.f58050a);
            if (gVar == null) {
                this.f58051b.a(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = i.f58043b;
            gVar.g(executor, this.f58051b);
            gVar.e(executor, this.f58051b);
            gVar.a(executor, this.f58051b);
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                g0Var3 = this.f58051b.f58054c;
                g0Var3.q((Exception) e10.getCause());
                return;
            }
            g0Var2 = this.f58051b.f58054c;
            g0Var2.q(e10);
        } catch (Exception e11) {
            g0Var = this.f58051b.f58054c;
            g0Var.q(e11);
        }
    }
}
