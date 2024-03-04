package ig;

import io.grpc.Status;
import io.grpc.internal.k1;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final k1.a f41143a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f41144b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f41145c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f41146d;

    /* renamed from: e  reason: collision with root package name */
    private Status f41147e;

    /* renamed from: f  reason: collision with root package name */
    private Throwable f41148f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f41149g;

    public d(k1.a aVar) {
        this.f41143a = aVar;
    }

    public Status a() {
        return this.f41147e;
    }

    public Throwable b() {
        return this.f41148f;
    }

    public void c(Status status) {
        if (this.f41145c) {
            return;
        }
        this.f41145c = true;
        this.f41143a.a(status);
    }

    public void d(boolean z10) {
        if (z10 == this.f41146d) {
            return;
        }
        this.f41146d = z10;
        this.f41143a.c(z10);
    }

    public void e() {
        if (this.f41144b || this.f41145c) {
            return;
        }
        this.f41144b = true;
        this.f41143a.b();
    }

    public boolean f(Status status) {
        c(status);
        if (this.f41147e != null) {
            return false;
        }
        this.f41147e = status;
        this.f41148f = status.c();
        return true;
    }

    public void g(Status status) {
        if (this.f41149g) {
            return;
        }
        this.f41149g = true;
        f(status);
        this.f41143a.d();
    }
}
