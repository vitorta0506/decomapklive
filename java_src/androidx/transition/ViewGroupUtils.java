package androidx.transition;

import android.os.Build;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
class ViewGroupUtils {
    private static Method sGetChildDrawingOrderMethod = null;
    private static boolean sGetChildDrawingOrderMethodFetched = false;
    private static boolean sTryHiddenSuppressLayout = true;

    private ViewGroupUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getChildDrawingOrder(@NonNull ViewGroup viewGroup, int i9) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i9);
        }
        if (!sGetChildDrawingOrderMethodFetched) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", cls, cls);
                sGetChildDrawingOrderMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            sGetChildDrawingOrderMethodFetched = true;
        }
        Method method = sGetChildDrawingOrderMethod;
        if (method != null) {
            try {
                return ((Integer) method.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i9))).intValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewGroupOverlayImpl getOverlay(@NonNull ViewGroup viewGroup) {
        return new ViewGroupOverlayApi18(viewGroup);
    }

    @RequiresApi(18)
    private static void hiddenSuppressLayout(@NonNull ViewGroup viewGroup, boolean z10) {
        if (sTryHiddenSuppressLayout) {
            try {
                viewGroup.suppressLayout(z10);
            } catch (NoSuchMethodError unused) {
                sTryHiddenSuppressLayout = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void suppressLayout(@NonNull ViewGroup viewGroup, boolean z10) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z10);
        } else {
            hiddenSuppressLayout(viewGroup, z10);
        }
    }
}
