package th;
/* loaded from: classes7.dex */
final class e extends d<Runnable> {
    private static final long serialVersionUID = -8219729196779211169L;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Runnable runnable) {
        super(runnable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // th.d
    /* renamed from: b */
    public void a(Runnable runnable) {
        runnable.run();
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
