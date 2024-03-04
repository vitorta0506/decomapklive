package zh;

import io.reactivex.i;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.r;
import io.reactivex.v;
import java.util.concurrent.Callable;
import vh.o;
/* loaded from: classes7.dex */
final class g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> boolean a(Object obj, o<? super T, ? extends io.reactivex.c> oVar, io.reactivex.b bVar) {
        if (obj instanceof Callable) {
            try {
                Object obj2 = (Object) ((Callable) obj).call();
                io.reactivex.c cVar = obj2 != 0 ? (io.reactivex.c) xh.b.e(oVar.apply(obj2), "The mapper returned a null CompletableSource") : null;
                if (cVar == null) {
                    EmptyDisposable.complete(bVar);
                } else {
                    cVar.a(bVar);
                }
                return true;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptyDisposable.error(th2, bVar);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, R> boolean b(Object obj, o<? super T, ? extends i<? extends R>> oVar, r<? super R> rVar) {
        if (obj instanceof Callable) {
            try {
                Object obj2 = (Object) ((Callable) obj).call();
                i iVar = obj2 != 0 ? (i) xh.b.e(oVar.apply(obj2), "The mapper returned a null MaybeSource") : null;
                if (iVar == null) {
                    EmptyDisposable.complete(rVar);
                } else {
                    iVar.a(io.reactivex.internal.operators.maybe.b.c(rVar));
                }
                return true;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptyDisposable.error(th2, rVar);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, R> boolean c(Object obj, o<? super T, ? extends v<? extends R>> oVar, r<? super R> rVar) {
        if (obj instanceof Callable) {
            try {
                Object obj2 = (Object) ((Callable) obj).call();
                v vVar = obj2 != 0 ? (v) xh.b.e(oVar.apply(obj2), "The mapper returned a null SingleSource") : null;
                if (vVar == null) {
                    EmptyDisposable.complete(rVar);
                } else {
                    vVar.a(ai.b.c(rVar));
                }
                return true;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptyDisposable.error(th2, rVar);
                return true;
            }
        }
        return false;
    }
}
