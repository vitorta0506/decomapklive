package e8;

import com.guochao.faceshow.views.g;
import e8.b;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static a f38479c;

    /* renamed from: a  reason: collision with root package name */
    private g f38480a = null;

    /* renamed from: b  reason: collision with root package name */
    private b.InterfaceC0386b f38481b;

    /* renamed from: e8.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0385a extends g {
        C0385a(long j10, long j11) {
            super(j10, j11);
        }

        @Override // com.guochao.faceshow.views.g
        public void onFinish() {
            if (a.this.f38481b != null) {
                a.this.f38481b.onFinish();
            }
            if (a.this.f38480a != null) {
                a.this.f38480a.cancel();
            }
        }

        @Override // com.guochao.faceshow.views.g
        public void onTick(long j10) {
            if (a.this.f38481b != null) {
                a.this.f38481b.a(j10);
            }
        }
    }

    private a() {
    }

    public static a c() {
        if (f38479c == null) {
            synchronized (a.class) {
                if (f38479c == null) {
                    f38479c = new a();
                }
            }
        }
        return f38479c;
    }

    public void d() {
        if (this.f38480a != null) {
            return;
        }
        this.f38480a = new C0385a(60000L, 1000L);
    }

    public boolean e() {
        g gVar = this.f38480a;
        return (gVar == null || gVar.isCancel()) ? false : true;
    }

    public void f() {
        g gVar = this.f38480a;
        if (gVar != null) {
            gVar.cancel();
        }
        this.f38480a = null;
        f38479c = null;
    }

    public void g() {
        g gVar = this.f38480a;
        if (gVar != null) {
            gVar.start();
        }
    }

    public void setOnTimerChangeListener(b.InterfaceC0386b interfaceC0386b) {
        this.f38481b = interfaceC0386b;
    }
}
