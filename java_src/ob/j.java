package ob;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.Toast;
import ob.j;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class j {

    /* renamed from: h  reason: collision with root package name */
    private static final Handler f55580h = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    private final c f55581a;

    /* renamed from: b  reason: collision with root package name */
    private n f55582b;

    /* renamed from: c  reason: collision with root package name */
    private final String f55583c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f55584d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f55585e;

    /* renamed from: f  reason: collision with root package name */
    private final Runnable f55586f;

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f55587g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Runnable {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            j.this.g();
        }

        @Override // java.lang.Runnable
        public void run() {
            WindowManager a10 = j.this.f55582b.a();
            if (a10 == null) {
                return;
            }
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.flags = 152;
            layoutParams.packageName = j.this.f55583c;
            layoutParams.gravity = j.this.f55581a.d();
            layoutParams.x = j.this.f55581a.j();
            layoutParams.y = j.this.f55581a.k();
            layoutParams.verticalMargin = j.this.f55581a.h();
            layoutParams.horizontalMargin = j.this.f55581a.e();
            layoutParams.windowAnimations = j.this.f55581a.b();
            if (j.this.f55585e) {
                if (Build.VERSION.SDK_INT >= 26) {
                    layoutParams.type = 2038;
                } else {
                    layoutParams.type = 2003;
                }
            }
            try {
                a10.addView(j.this.f55581a.i(), layoutParams);
                j.f55580h.postDelayed(new Runnable() { // from class: ob.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        j.a.this.c();
                    }
                }, j.this.f55581a.c() == 1 ? j.this.f55581a.f() : j.this.f55581a.g());
                j.this.f55582b.b(j.this);
                j.this.j(true);
                j jVar = j.this;
                jVar.l(jVar.f55581a.i());
            } catch (WindowManager.BadTokenException | IllegalStateException e10) {
                e10.printStackTrace();
            }
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WindowManager a10;
            try {
                try {
                    a10 = j.this.f55582b.a();
                } catch (IllegalArgumentException e10) {
                    e10.printStackTrace();
                }
                if (a10 == null) {
                    return;
                }
                a10.removeViewImmediate(j.this.f55581a.i());
            } finally {
                j.this.f55582b.c();
                j.this.j(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Activity activity, c cVar) {
        this((Context) activity, cVar);
        this.f55585e = false;
        this.f55582b = new n(activity);
    }

    private boolean h() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(View view) {
        Context context = view.getContext();
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(64);
            obtain.setClassName(Toast.class.getName());
            obtain.setPackageName(context.getPackageName());
            view.dispatchPopulateAccessibilityEvent(obtain);
            accessibilityManager.sendAccessibilityEvent(obtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        if (i()) {
            Handler handler = f55580h;
            handler.removeCallbacks(this.f55586f);
            if (h()) {
                this.f55587g.run();
                return;
            }
            handler.removeCallbacks(this.f55587g);
            handler.post(this.f55587g);
        }
    }

    boolean i() {
        return this.f55584d;
    }

    void j(boolean z10) {
        this.f55584d = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        if (i()) {
            return;
        }
        if (h()) {
            this.f55586f.run();
            return;
        }
        Handler handler = f55580h;
        handler.removeCallbacks(this.f55586f);
        handler.post(this.f55586f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Application application, c cVar) {
        this((Context) application, cVar);
        this.f55585e = true;
        this.f55582b = new n(application);
    }

    private j(Context context, c cVar) {
        this.f55586f = new a();
        this.f55587g = new b();
        this.f55581a = cVar;
        this.f55583c = context.getPackageName();
    }
}
