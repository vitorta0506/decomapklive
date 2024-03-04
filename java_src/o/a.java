package o;

import android.app.Application;
import android.content.Context;
import com.alibaba.android.arouter.exception.InitException;
import com.alibaba.android.arouter.facade.Postcard;
import com.alibaba.android.arouter.facade.callback.NavigationCallback;
import com.alibaba.android.arouter.facade.template.ILogger;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f55431a = null;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f55432b = false;

    /* renamed from: c  reason: collision with root package name */
    public static ILogger f55433c;

    private a() {
    }

    public static boolean b() {
        return b.h();
    }

    public static a c() {
        if (f55432b) {
            if (f55431a == null) {
                synchronized (a.class) {
                    if (f55431a == null) {
                        f55431a = new a();
                    }
                }
            }
            return f55431a;
        }
        throw new InitException("ARouter::Init::Invoke init(context) first!");
    }

    public static void d(Application application) {
        if (f55432b) {
            return;
        }
        ILogger iLogger = b.f55434a;
        f55433c = iLogger;
        iLogger.info(ILogger.defaultTag, "ARouter init start.");
        f55432b = b.k(application);
        if (f55432b) {
            b.e();
        }
        b.f55434a.info(ILogger.defaultTag, "ARouter init over.");
    }

    public Postcard a(String str) {
        return b.j().f(str);
    }

    public void e(Object obj) {
        b.l(obj);
    }

    public Object f(Context context, Postcard postcard, int i9, NavigationCallback navigationCallback) {
        return b.j().m(context, postcard, i9, navigationCallback);
    }

    public <T> T g(Class<? extends T> cls) {
        return (T) b.j().n(cls);
    }
}
