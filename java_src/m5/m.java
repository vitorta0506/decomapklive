package m5;

import java.util.concurrent.CancellationException;
/* loaded from: classes2.dex */
class m<RequestT, ResponseT> extends com.google.api.gax.rpc.d0<ResponseT> {

    /* renamed from: c  reason: collision with root package name */
    private com.google.api.gax.rpc.b0<ResponseT> f54870c;

    /* renamed from: d  reason: collision with root package name */
    private volatile CancellationException f54871d;

    /* renamed from: e  reason: collision with root package name */
    private final o f54872e;

    /* loaded from: classes2.dex */
    class a implements com.google.api.gax.rpc.e0 {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.api.gax.rpc.e0 f54873a;

        a(com.google.api.gax.rpc.e0 e0Var) {
            this.f54873a = e0Var;
        }

        @Override // com.google.api.gax.rpc.e0
        public void cancel() {
            m.this.f54871d = new CancellationException("User cancelled stream");
            this.f54873a.cancel();
        }
    }

    public m(com.google.api.gax.rpc.b0<ResponseT> b0Var, o oVar) {
        this.f54870c = b0Var;
        this.f54872e = oVar;
    }

    @Override // com.google.api.gax.rpc.d0
    protected void b() {
        this.f54870c.onComplete();
    }

    @Override // com.google.api.gax.rpc.d0
    protected void c(Throwable th2) {
        Throwable a10;
        if (this.f54871d != null) {
            a10 = this.f54871d;
        } else {
            a10 = this.f54872e.a(th2);
        }
        this.f54870c.onError(a10);
    }

    @Override // com.google.api.gax.rpc.d0
    protected void d(ResponseT responset) {
        this.f54870c.onResponse(responset);
    }

    @Override // com.google.api.gax.rpc.d0
    protected void e(com.google.api.gax.rpc.e0 e0Var) {
        this.f54870c.a(new a(e0Var));
    }
}
