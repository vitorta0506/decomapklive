package androidx.core.os;

import android.os.Build;
import android.os.Process;
import android.os.UserHandle;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class ProcessCompat {

    @RequiresApi(16)
    /* loaded from: classes.dex */
    static class Api16Impl {
        private static Method sMethodUserIdIsAppMethod;
        private static boolean sResolved;
        private static final Object sResolvedLock = new Object();

        private Api16Impl() {
        }

        static boolean isApplicationUid(int i9) {
            try {
                synchronized (sResolvedLock) {
                    if (!sResolved) {
                        sResolved = true;
                        sMethodUserIdIsAppMethod = Class.forName("android.os.UserId").getDeclaredMethod("isApp", Integer.TYPE);
                    }
                }
                Method method = sMethodUserIdIsAppMethod;
                if (method != null) {
                    Boolean bool = (Boolean) method.invoke(null, Integer.valueOf(i9));
                    if (bool != null) {
                        return bool.booleanValue();
                    }
                    throw new NullPointerException();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return true;
        }
    }

    @RequiresApi(17)
    /* loaded from: classes.dex */
    static class Api17Impl {
        private static Method sMethodUserHandleIsAppMethod;
        private static boolean sResolved;
        private static final Object sResolvedLock = new Object();

        private Api17Impl() {
        }

        static boolean isApplicationUid(int i9) {
            try {
                synchronized (sResolvedLock) {
                    if (!sResolved) {
                        sResolved = true;
                        sMethodUserHandleIsAppMethod = UserHandle.class.getDeclaredMethod("isApp", Integer.TYPE);
                    }
                }
                Method method = sMethodUserHandleIsAppMethod;
                if (method != null && ((Boolean) method.invoke(null, Integer.valueOf(i9))) == null) {
                    throw new NullPointerException();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return true;
        }
    }

    @RequiresApi(24)
    /* loaded from: classes.dex */
    static class Api24Impl {
        private Api24Impl() {
        }

        static boolean isApplicationUid(int i9) {
            return Process.isApplicationUid(i9);
        }
    }

    private ProcessCompat() {
    }

    public static boolean isApplicationUid(int i9) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.isApplicationUid(i9);
        }
        return Api17Impl.isApplicationUid(i9);
    }
}
