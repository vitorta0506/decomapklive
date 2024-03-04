package t4;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class e0 implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f58031a = new n4.a(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        this.f58031a.post(runnable);
    }
}
