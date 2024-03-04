package f4;

import android.os.Process;
/* loaded from: classes2.dex */
final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f39616a;

    public b(Runnable runnable, int i9) {
        this.f39616a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(0);
        this.f39616a.run();
    }
}
