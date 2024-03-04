package wb;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import xb.f;
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static xb.f f59427a = new xb.f();

    public static <TResult> TResult a(f<TResult> fVar) throws ExecutionException, InterruptedException {
        xb.f.c("await must not be called on the UI thread");
        if (fVar.g()) {
            return (TResult) xb.f.a(fVar);
        }
        f.b bVar = new f.b();
        fVar.c(bVar).b(bVar);
        bVar.f59672a.await();
        return (TResult) xb.f.a(fVar);
    }

    public static <TResult> f<TResult> b(Callable<TResult> callable) {
        return f59427a.b(h.a(), callable);
    }
}
