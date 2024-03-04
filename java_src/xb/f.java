package xb;

import android.os.Looper;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import wb.g;
/* loaded from: classes4.dex */
public final class f {

    /* loaded from: classes4.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f59669a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Callable f59670b;

        a(g gVar, Callable callable) {
            this.f59669a = gVar;
            this.f59670b = callable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f59669a.c(this.f59670b.call());
            } catch (Exception e10) {
                this.f59669a.b(e10);
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class b<TResult> implements wb.d, wb.e<TResult> {

        /* renamed from: a  reason: collision with root package name */
        public final CountDownLatch f59672a = new CountDownLatch(1);

        @Override // wb.d
        public final void a(Exception exc) {
            this.f59672a.countDown();
        }

        @Override // wb.e
        public final void onSuccess(TResult tresult) {
            this.f59672a.countDown();
        }
    }

    public static <TResult> TResult a(wb.f<TResult> fVar) throws ExecutionException {
        if (fVar.h()) {
            return fVar.e();
        }
        throw new ExecutionException(fVar.d());
    }

    public static void c(String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException(str);
        }
    }

    public final <TResult> wb.f<TResult> b(Executor executor, Callable<TResult> callable) {
        g gVar = new g();
        try {
            executor.execute(new a(gVar, callable));
        } catch (Exception e10) {
            gVar.b(e10);
        }
        return gVar.a();
    }
}
