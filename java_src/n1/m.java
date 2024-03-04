package n1;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
class m implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f55271a;

    /* loaded from: classes.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f55272a;

        a(Runnable runnable) {
            this.f55272a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f55272a.run();
            } catch (Exception e10) {
                s1.a.d("Executor", "Background execution failure.", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Executor executor) {
        this.f55271a = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f55271a.execute(new a(runnable));
    }
}
