package xb;

import java.util.concurrent.Executor;
/* loaded from: classes4.dex */
public final class c<TResult> implements wb.b<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private wb.d f59653a;

    /* renamed from: b  reason: collision with root package name */
    private Executor f59654b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f59655c = new Object();

    /* loaded from: classes4.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ wb.f f59656a;

        a(wb.f fVar) {
            this.f59656a = fVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (c.this.f59655c) {
                if (c.this.f59653a != null) {
                    c.this.f59653a.a(this.f59656a.d());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Executor executor, wb.d dVar) {
        this.f59653a = dVar;
        this.f59654b = executor;
    }

    @Override // wb.b
    public final void cancel() {
        synchronized (this.f59655c) {
            this.f59653a = null;
        }
    }

    @Override // wb.b
    public final void onComplete(wb.f<TResult> fVar) {
        if (fVar.h() || fVar.f()) {
            return;
        }
        this.f59654b.execute(new a(fVar));
    }
}
