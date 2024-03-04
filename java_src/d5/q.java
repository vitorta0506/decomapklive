package d5;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class q implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f37936a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f37936a.post(runnable);
    }
}
