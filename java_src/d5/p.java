package d5;

import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
final class p implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
