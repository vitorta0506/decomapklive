package e8;

import com.guochao.faceshow.views.g;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static b f38483c;

    /* renamed from: a  reason: collision with root package name */
    private g f38484a = null;

    /* renamed from: b  reason: collision with root package name */
    private InterfaceC0386b f38485b;

    /* loaded from: classes3.dex */
    class a extends g {
        a(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
            if (b.this.f38485b != null) {
                b.this.f38485b.onFinish();
            }
            if (b.this.f38484a != null) {
                b.this.f38484a.cancel();
            }
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            if (b.this.f38485b != null) {
                b.this.f38485b.a(j10);
            }
        }
    }

    /* renamed from: e8.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0386b {
        void a(long j10);

        void onFinish();
    }

    private b() {
    }

    public static b c() {
        if (f38483c == null) {
            synchronized (b.class) {
                if (f38483c == null) {
                    f38483c = new b();
                }
            }
        }
        return f38483c;
    }

    public void d() {
        if (this.f38484a != null) {
            return;
        }
        this.f38484a = new a(60000L, 1000L);
    }

    public boolean e() {
        g gVar = this.f38484a;
        return (gVar == null || gVar.isCancel()) ? false : true;
    }

    public void f() {
        g gVar = this.f38484a;
        if (gVar != null) {
            gVar.cancel();
        }
        this.f38484a = null;
        f38483c = null;
    }

    public void g() {
        g gVar = this.f38484a;
        if (gVar != null) {
            gVar.start();
        }
    }

    public void setOnTimerChangeListener(InterfaceC0386b interfaceC0386b) {
        this.f38485b = interfaceC0386b;
    }
}
