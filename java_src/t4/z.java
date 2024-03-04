package t4;

import com.google.android.gms.tasks.RuntimeExecutionException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f58074a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a0 f58075b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(a0 a0Var, g gVar) {
        this.f58075b = a0Var;
        this.f58074a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVar;
        try {
            fVar = this.f58075b.f58026b;
            g a10 = fVar.a(this.f58074a.k());
            if (a10 == null) {
                this.f58075b.a(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = i.f58043b;
            a10.g(executor, this.f58075b);
            a10.e(executor, this.f58075b);
            a10.a(executor, this.f58075b);
        } catch (RuntimeExecutionException e10) {
            if (e10.getCause() instanceof Exception) {
                this.f58075b.a((Exception) e10.getCause());
            } else {
                this.f58075b.a(e10);
            }
        } catch (CancellationException unused) {
            this.f58075b.b();
        } catch (Exception e11) {
            this.f58075b.a(e11);
        }
    }
}
