package sh;

import android.os.Handler;
import android.os.Looper;
import io.reactivex.s;
import java.util.concurrent.Callable;
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final s f57911a = rh.a.d(new CallableC0646a());

    /* renamed from: sh.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static class CallableC0646a implements Callable<s> {
        CallableC0646a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public s call() throws Exception {
            return b.f57912a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final s f57912a = new sh.b(new Handler(Looper.getMainLooper()), false);
    }

    public static s a() {
        return rh.a.e(f57911a);
    }
}
