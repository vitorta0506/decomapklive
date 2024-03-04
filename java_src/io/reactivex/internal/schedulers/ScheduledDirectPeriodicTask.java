package io.reactivex.internal.schedulers;
/* loaded from: classes7.dex */
public final class ScheduledDirectPeriodicTask extends a implements Runnable {
    private static final long serialVersionUID = 1811839108042568751L;

    public ScheduledDirectPeriodicTask(Runnable runnable) {
        super(runnable);
    }

    @Override // io.reactivex.internal.schedulers.a
    public /* bridge */ /* synthetic */ Runnable getWrappedRunnable() {
        return super.getWrappedRunnable();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.runner = Thread.currentThread();
        try {
            this.runnable.run();
            this.runner = null;
        } catch (Throwable th2) {
            this.runner = null;
            lazySet(a.FINISHED);
            ci.a.s(th2);
        }
    }
}
