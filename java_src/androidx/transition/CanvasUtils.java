package androidx.transition;

import android.graphics.Canvas;
import android.os.Build;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
class CanvasUtils {
    private static Method sInorderBarrierMethod;
    private static boolean sOrderMethodsFetched;
    private static Method sReorderBarrierMethod;

    private CanvasUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void enableZ(@NonNull Canvas canvas, boolean z10) {
        Method method;
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 29) {
            if (z10) {
                canvas.enableZ();
            } else {
                canvas.disableZ();
            }
        } else if (i9 != 28) {
            if (!sOrderMethodsFetched) {
                try {
                    Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                    sReorderBarrierMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                    Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                    sInorderBarrierMethod = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                sOrderMethodsFetched = true;
            }
            if (z10) {
                try {
                    Method method2 = sReorderBarrierMethod;
                    if (method2 != null) {
                        method2.invoke(canvas, new Object[0]);
                    }
                } catch (IllegalAccessException unused2) {
                    return;
                } catch (InvocationTargetException e10) {
                    throw new RuntimeException(e10.getCause());
                }
            }
            if (z10 || (method = sInorderBarrierMethod) == null) {
                return;
            }
            method.invoke(canvas, new Object[0]);
        } else {
            throw new IllegalStateException("This method doesn't work on Pie!");
        }
    }
}
