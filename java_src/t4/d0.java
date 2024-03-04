package t4;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class d0 implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        runnable.run();
    }
}
