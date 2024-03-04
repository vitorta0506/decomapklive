package xb;

import java.util.concurrent.Executor;
/* loaded from: classes4.dex */
public final class b<TResult> implements wb.b<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private wb.c<TResult> f59648a;

    /* renamed from: b  reason: collision with root package name */
    Executor f59649b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f59650c = new Object();

    /* loaded from: classes4.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ wb.f f59651a;

        a(wb.f fVar) {
            this.f59651a = fVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (b.this.f59650c) {
                if (b.this.f59648a != null) {
                    b.this.f59648a.onComplete(this.f59651a);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Executor executor, wb.c<TResult> cVar) {
        this.f59648a = cVar;
        this.f59649b = executor;
    }

    @Override // wb.b
    public final void cancel() {
        synchronized (this.f59650c) {
            this.f59648a = null;
        }
    }

    @Override // wb.b
    public final void onComplete(wb.f<TResult> fVar) {
        this.f59649b.execute(new a(fVar));
    }
}
