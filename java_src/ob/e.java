package ob;

import android.app.Application;
import android.widget.Toast;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
/* loaded from: classes4.dex */
public class e extends h {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f55575b;

    public e(Application application) {
        super(application);
    }

    private static void b() {
        if (f55575b) {
            return;
        }
        f55575b = true;
        try {
            Method declaredMethod = Toast.class.getDeclaredMethod("getService", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            if (invoke == null) {
                return;
            }
            if (Proxy.isProxyClass(invoke.getClass()) && (Proxy.getInvocationHandler(invoke) instanceof d)) {
                return;
            }
            Object newProxyInstance = Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{Class.forName("android.app.INotificationManager")}, new d(invoke));
            Field declaredField = Toast.class.getDeclaredField("sService");
            declaredField.setAccessible(true);
            declaredField.set(null, newProxyInstance);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.widget.Toast, pb.b
    public void show() {
        b();
        super.show();
    }
}
