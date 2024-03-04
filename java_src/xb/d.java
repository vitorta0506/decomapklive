package xb;

import java.util.concurrent.Executor;
/* loaded from: classes4.dex */
public final class d<TResult> implements wb.b<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private wb.e<TResult> f59658a;

    /* renamed from: b  reason: collision with root package name */
    private Executor f59659b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f59660c = new Object();

    /* loaded from: classes4.dex */
    final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ wb.f f59661a;

        a(wb.f fVar) {
            this.f59661a = fVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (d.this.f59660c) {
                if (d.this.f59658a != null) {
                    d.this.f59658a.onSuccess(this.f59661a.e());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Executor executor, wb.e<TResult> eVar) {
        this.f59658a = eVar;
        this.f59659b = executor;
    }

    @Override // wb.b
    public final void cancel() {
        synchronized (this.f59660c) {
            this.f59658a = null;
        }
    }

    @Override // wb.b
    public final void onComplete(wb.f<TResult> fVar) {
        if (!fVar.h() || fVar.f()) {
            return;
        }
        this.f59659b.execute(new a(fVar));
    }
}
