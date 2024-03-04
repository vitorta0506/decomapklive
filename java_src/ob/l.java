package ob;

import android.app.Activity;
import android.app.AppOpsManager;
import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes4.dex */
public class l implements pb.d {

    /* renamed from: h  reason: collision with root package name */
    private static final Handler f55590h = new Handler(Looper.getMainLooper());

    /* renamed from: a  reason: collision with root package name */
    private Application f55591a;

    /* renamed from: b  reason: collision with root package name */
    private ob.a f55592b;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<pb.b> f55593c;

    /* renamed from: d  reason: collision with root package name */
    private pb.f<?> f55594d;

    /* renamed from: e  reason: collision with root package name */
    private volatile CharSequence f55595e;

    /* renamed from: f  reason: collision with root package name */
    private final Runnable f55596f = new a();

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f55597g = new b();

    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pb.b bVar = l.this.f55593c != null ? (pb.b) l.this.f55593c.get() : null;
            if (bVar != null) {
                bVar.cancel();
            }
            l lVar = l.this;
            pb.b i9 = lVar.i(lVar.f55591a);
            l.this.f55593c = new WeakReference(i9);
            l lVar2 = l.this;
            i9.setDuration(lVar2.j(lVar2.f55595e));
            i9.setText(l.this.f55595e);
            i9.show();
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pb.b bVar = l.this.f55593c != null ? (pb.b) l.this.f55593c.get() : null;
            if (bVar == null) {
                return;
            }
            bVar.cancel();
        }
    }

    @Override // pb.d
    public void a(Application application) {
        this.f55591a = application;
        this.f55592b = ob.a.b(application);
    }

    @Override // pb.d
    public void b(pb.f<?> fVar) {
        this.f55594d = fVar;
    }

    @Override // pb.d
    public void c(CharSequence charSequence, long j10) {
        this.f55595e = charSequence;
        Handler handler = f55590h;
        handler.removeCallbacks(this.f55596f);
        handler.postDelayed(this.f55596f, j10 + 200);
    }

    protected boolean h(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((NotificationManager) context.getSystemService(NotificationManager.class)).areNotificationsEnabled();
        }
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        try {
            Class<?> cls = appOpsManager.getClass();
            Class<?> cls2 = Integer.TYPE;
            return ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) appOpsManager.getClass().getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(context.getApplicationInfo().uid), context.getPackageName())).intValue() == 0;
        } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException e10) {
            e10.printStackTrace();
            return true;
        }
    }

    public pb.b i(Application application) {
        pb.b hVar;
        Activity a10 = this.f55592b.a();
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 23 && Settings.canDrawOverlays(application)) {
            hVar = new o(application);
        } else if (a10 != null) {
            hVar = new ob.b(a10);
        } else if (i9 == 25) {
            hVar = new g(application);
        } else if (i9 < 29 && !h(application)) {
            hVar = new e(application);
        } else {
            hVar = new h(application);
        }
        if ((hVar instanceof c) || i9 < 30 || application.getApplicationInfo().targetSdkVersion < 30) {
            hVar.setView(this.f55594d.b(application));
            hVar.setGravity(this.f55594d.d(), this.f55594d.e(), this.f55594d.f());
            hVar.setMargin(this.f55594d.a(), this.f55594d.c());
        }
        return hVar;
    }

    protected int j(CharSequence charSequence) {
        return charSequence.length() > 20 ? 1 : 0;
    }
}
