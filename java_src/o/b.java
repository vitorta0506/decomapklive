package o;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.alibaba.android.arouter.exception.HandlerException;
import com.alibaba.android.arouter.exception.InitException;
import com.alibaba.android.arouter.exception.NoRouteFoundException;
import com.alibaba.android.arouter.facade.Postcard;
import com.alibaba.android.arouter.facade.callback.InterceptorCallback;
import com.alibaba.android.arouter.facade.callback.NavigationCallback;
import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.service.AutowiredService;
import com.alibaba.android.arouter.facade.service.DegradeService;
import com.alibaba.android.arouter.facade.service.InterceptorService;
import com.alibaba.android.arouter.facade.service.PathReplaceService;
import com.alibaba.android.arouter.facade.service.PretreatmentService;
import com.alibaba.android.arouter.facade.template.ILogger;
import java.util.concurrent.ThreadPoolExecutor;
import org.light.utils.FileUtils;
import q.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static ILogger f55434a = new q.b(ILogger.defaultTag);

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f55435b = false;

    /* renamed from: c  reason: collision with root package name */
    private static volatile boolean f55436c = false;

    /* renamed from: d  reason: collision with root package name */
    private static volatile boolean f55437d = false;

    /* renamed from: e  reason: collision with root package name */
    private static volatile b f55438e = null;

    /* renamed from: f  reason: collision with root package name */
    private static volatile boolean f55439f = false;

    /* renamed from: g  reason: collision with root package name */
    private static volatile ThreadPoolExecutor f55440g = p.b.a();

    /* renamed from: h  reason: collision with root package name */
    private static Handler f55441h;

    /* renamed from: i  reason: collision with root package name */
    private static Context f55442i;

    /* renamed from: j  reason: collision with root package name */
    private static InterceptorService f55443j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Postcard f55444a;

        a(Postcard postcard) {
            this.f55444a = postcard;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context = b.f55442i;
            Toast.makeText(context, "There's no route matched!\n Path = [" + this.f55444a.getPath() + "]\n Group = [" + this.f55444a.getGroup() + "]", 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0581b implements InterceptorCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f55446a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ NavigationCallback f55447b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Postcard f55448c;

        C0581b(int i9, NavigationCallback navigationCallback, Postcard postcard) {
            this.f55446a = i9;
            this.f55447b = navigationCallback;
            this.f55448c = postcard;
        }

        @Override // com.alibaba.android.arouter.facade.callback.InterceptorCallback
        public void onContinue(Postcard postcard) {
            b.this.a(postcard, this.f55446a, this.f55447b);
        }

        @Override // com.alibaba.android.arouter.facade.callback.InterceptorCallback
        public void onInterrupt(Throwable th2) {
            NavigationCallback navigationCallback = this.f55447b;
            if (navigationCallback != null) {
                navigationCallback.onInterrupt(this.f55448c);
            }
            ILogger iLogger = b.f55434a;
            iLogger.info(ILogger.defaultTag, "Navigation failed, termination by interceptor : " + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f55450a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f55451b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Intent f55452c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Postcard f55453d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ NavigationCallback f55454e;

        c(int i9, Context context, Intent intent, Postcard postcard, NavigationCallback navigationCallback) {
            this.f55450a = i9;
            this.f55451b = context;
            this.f55452c = intent;
            this.f55453d = postcard;
            this.f55454e = navigationCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.p(this.f55450a, this.f55451b, this.f55452c, this.f55453d, this.f55454e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f55456a;

        static {
            int[] iArr = new int[RouteType.values().length];
            f55456a = iArr;
            try {
                iArr[RouteType.ACTIVITY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f55456a[RouteType.PROVIDER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f55456a[RouteType.BOARDCAST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f55456a[RouteType.CONTENT_PROVIDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f55456a[RouteType.FRAGMENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f55456a[RouteType.METHOD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f55456a[RouteType.SERVICE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object a(Postcard postcard, int i9, NavigationCallback navigationCallback) {
        Context context = postcard.getContext();
        int i10 = d.f55456a[postcard.getType().ordinal()];
        if (i10 == 1) {
            Intent intent = new Intent(context, postcard.getDestination());
            intent.putExtras(postcard.getExtras());
            int flags = postcard.getFlags();
            if (flags != 0) {
                intent.setFlags(flags);
            }
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            String action = postcard.getAction();
            if (!e.b(action)) {
                intent.setAction(action);
            }
            o(new c(i9, context, intent, postcard, navigationCallback));
            return null;
        } else if (i10 != 2) {
            if (i10 == 3 || i10 == 4 || i10 == 5) {
                try {
                    Object newInstance = postcard.getDestination().getConstructor(new Class[0]).newInstance(new Object[0]);
                    if (newInstance instanceof Fragment) {
                        ((Fragment) newInstance).setArguments(postcard.getExtras());
                    } else if (newInstance instanceof androidx.fragment.app.Fragment) {
                        ((androidx.fragment.app.Fragment) newInstance).setArguments(postcard.getExtras());
                    }
                    return newInstance;
                } catch (Exception e10) {
                    ILogger iLogger = f55434a;
                    iLogger.error(ILogger.defaultTag, "Fetch fragment instance error, " + e.a(e10.getStackTrace()));
                }
            }
            return null;
        } else {
            return postcard.getProvider();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e() {
        f55443j = (InterceptorService) o.a.c().a("/arouter/service/interceptor").navigation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h() {
        return f55436c;
    }

    private String i(String str) {
        if (!e.b(str) && str.startsWith(FileUtils.RES_PREFIX_STORAGE)) {
            try {
                String substring = str.substring(1, str.indexOf(FileUtils.RES_PREFIX_STORAGE, 1));
                if (e.b(substring)) {
                    throw new HandlerException("ARouter::Extract the default group failed! There's nothing between 2 '/'!");
                }
                return substring;
            } catch (Exception e10) {
                ILogger iLogger = f55434a;
                iLogger.warning(ILogger.defaultTag, "Failed to extract default group! " + e10.getMessage());
                return null;
            }
        }
        throw new HandlerException("ARouter::Extract the default group failed, the path must be start with '/' and contain more than 2 '/'!");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static b j() {
        if (f55439f) {
            if (f55438e == null) {
                synchronized (b.class) {
                    if (f55438e == null) {
                        f55438e = new b();
                    }
                }
            }
            return f55438e;
        }
        throw new InitException("ARouterCore::Init::Invoke init(context) first!");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static synchronized boolean k(Application application) {
        synchronized (b.class) {
            f55442i = application;
            com.alibaba.android.arouter.core.a.d(application, f55440g);
            f55434a.info(ILogger.defaultTag, "ARouter init success!");
            f55439f = true;
            f55441h = new Handler(Looper.getMainLooper());
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void l(Object obj) {
        AutowiredService autowiredService = (AutowiredService) o.a.c().a("/arouter/service/autowired").navigation();
        if (autowiredService != null) {
            autowiredService.autowire(obj);
        }
    }

    private void o(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            f55441h.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(int i9, Context context, Intent intent, Postcard postcard, NavigationCallback navigationCallback) {
        if (i9 >= 0) {
            if (context instanceof Activity) {
                ActivityCompat.startActivityForResult((Activity) context, intent, i9, postcard.getOptionsBundle());
            } else {
                f55434a.warning(ILogger.defaultTag, "Must use [navigation(activity, ...)] to support [startActivityForResult]");
            }
        } else {
            ContextCompat.startActivity(context, intent, postcard.getOptionsBundle());
        }
        if (-1 != postcard.getEnterAnim() && -1 != postcard.getExitAnim() && (context instanceof Activity)) {
            ((Activity) context).overridePendingTransition(postcard.getEnterAnim(), postcard.getExitAnim());
        }
        if (navigationCallback != null) {
            navigationCallback.onArrival(postcard);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Postcard f(String str) {
        if (!e.b(str)) {
            PathReplaceService pathReplaceService = (PathReplaceService) o.a.c().g(PathReplaceService.class);
            if (pathReplaceService != null) {
                str = pathReplaceService.forString(str);
            }
            return g(str, i(str), Boolean.TRUE);
        }
        throw new HandlerException("ARouter::Parameter is invalid!");
    }

    protected Postcard g(String str, String str2, Boolean bool) {
        PathReplaceService pathReplaceService;
        if (!e.b(str) && !e.b(str2)) {
            if (!bool.booleanValue() && (pathReplaceService = (PathReplaceService) o.a.c().g(PathReplaceService.class)) != null) {
                str = pathReplaceService.forString(str);
            }
            return new Postcard(str, str2);
        }
        throw new HandlerException("ARouter::Parameter is invalid!");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object m(Context context, Postcard postcard, int i9, NavigationCallback navigationCallback) {
        PretreatmentService pretreatmentService = (PretreatmentService) o.a.c().g(PretreatmentService.class);
        if (pretreatmentService == null || pretreatmentService.onPretreatment(context, postcard)) {
            postcard.setContext(context == null ? f55442i : context);
            try {
                com.alibaba.android.arouter.core.a.c(postcard);
                if (navigationCallback != null) {
                    navigationCallback.onFound(postcard);
                }
                if (!postcard.isGreenChannel()) {
                    f55443j.doInterceptions(postcard, new C0581b(i9, navigationCallback, postcard));
                    return null;
                }
                return a(postcard, i9, navigationCallback);
            } catch (NoRouteFoundException e10) {
                f55434a.warning(ILogger.defaultTag, e10.getMessage());
                if (h()) {
                    o(new a(postcard));
                }
                if (navigationCallback != null) {
                    navigationCallback.onLost(postcard);
                } else {
                    DegradeService degradeService = (DegradeService) o.a.c().g(DegradeService.class);
                    if (degradeService != null) {
                        degradeService.onLost(context, postcard);
                    }
                }
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> T n(Class<? extends T> cls) {
        try {
            Postcard b10 = com.alibaba.android.arouter.core.a.b(cls.getName());
            if (b10 == null) {
                b10 = com.alibaba.android.arouter.core.a.b(cls.getSimpleName());
            }
            if (b10 == null) {
                return null;
            }
            b10.setContext(f55442i);
            com.alibaba.android.arouter.core.a.c(b10);
            return (T) b10.getProvider();
        } catch (NoRouteFoundException e10) {
            f55434a.warning(ILogger.defaultTag, e10.getMessage());
            return null;
        }
    }
}
