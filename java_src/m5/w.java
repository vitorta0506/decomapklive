package m5;

import io.grpc.Status;
import io.grpc.g;
import io.grpc.s0;
import java.util.concurrent.CancellationException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class w<RequestT, ResponseT> implements com.google.api.gax.rpc.e0 {

    /* renamed from: h  reason: collision with root package name */
    private static final Runnable f54910h = new a();

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.g<RequestT, ResponseT> f54911a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.api.gax.rpc.b0<ResponseT> f54912b;

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f54913c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f54914d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54915e = true;

    /* renamed from: f  reason: collision with root package name */
    private int f54916f;

    /* renamed from: g  reason: collision with root package name */
    private volatile CancellationException f54917g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b extends g.a<ResponseT> {
        private b() {
        }

        @Override // io.grpc.g.a
        public void a(Status status, s0 s0Var) {
            if (status.p()) {
                w.this.f54912b.onComplete();
            } else if (w.this.f54917g != null) {
                w.this.f54912b.onError(w.this.f54917g);
            } else {
                w.this.f54912b.onError(status.e(s0Var));
            }
        }

        @Override // io.grpc.g.a
        public void c(ResponseT responset) {
            w.this.f54912b.onResponse(responset);
            if (w.this.f54915e) {
                w.this.f54911a.c(1);
            }
        }

        @Override // io.grpc.g.a
        public void d() {
            w.this.f54913c.run();
        }

        /* synthetic */ b(w wVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(io.grpc.g<RequestT, ResponseT> gVar, com.google.api.gax.rpc.b0<ResponseT> b0Var, Runnable runnable) {
        this.f54911a = gVar;
        this.f54912b = b0Var;
        this.f54913c = runnable;
    }

    private void g() {
        this.f54912b.a(this);
        this.f54914d = true;
        this.f54911a.e(new b(this, null), new s0());
        if (this.f54915e) {
            this.f54911a.c(1);
            return;
        }
        int i9 = this.f54916f;
        if (i9 > 0) {
            this.f54911a.c(i9);
        }
    }

    @Override // com.google.api.gax.rpc.e0
    public void cancel() {
        this.f54917g = new CancellationException("User cancelled stream");
        this.f54911a.a(null, this.f54917g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        g();
    }
}
