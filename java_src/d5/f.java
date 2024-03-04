package d5;

import androidx.annotation.NonNull;
import com.google.android.play.core.internal.b1;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class f {
    public static <ResultT> ResultT a(@NonNull d<ResultT> dVar) throws ExecutionException, InterruptedException {
        b1.a(dVar, "Task must not be null");
        if (dVar.f()) {
            return (ResultT) d(dVar);
        }
        t tVar = new t(null);
        e(dVar, tVar);
        tVar.b();
        return (ResultT) d(dVar);
    }

    public static d b(Exception exc) {
        r rVar = new r();
        rVar.h(exc);
        return rVar;
    }

    public static d c(Object obj) {
        r rVar = new r();
        rVar.i(obj);
        return rVar;
    }

    private static Object d(d dVar) throws ExecutionException {
        if (dVar.g()) {
            return dVar.e();
        }
        throw new ExecutionException(dVar.d());
    }

    private static void e(d dVar, u uVar) {
        Executor executor = e.f37916b;
        dVar.c(executor, uVar);
        dVar.b(executor, uVar);
    }
}
