package butterknife;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class ButterKnife {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f1382a = false;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    static final Map<Class<?>, Constructor<? extends Unbinder>> f1383b = new LinkedHashMap();

    private ButterKnife() {
        throw new AssertionError("No instances.");
    }

    @NonNull
    @UiThread
    public static Unbinder a(@NonNull Activity activity) {
        return c(activity, activity.getWindow().getDecorView());
    }

    @NonNull
    @UiThread
    public static Unbinder b(@NonNull View view) {
        return c(view, view);
    }

    @NonNull
    @UiThread
    public static Unbinder c(@NonNull Object obj, @NonNull View view) {
        Class<?> cls = obj.getClass();
        if (f1382a) {
            Log.d("ButterKnife", "Looking up binding for " + cls.getName());
        }
        Constructor<? extends Unbinder> d10 = d(cls);
        if (d10 == null) {
            return Unbinder.f1384a;
        }
        try {
            return d10.newInstance(obj, view);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Unable to invoke " + d10, e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("Unable to invoke " + d10, e11);
        } catch (InvocationTargetException e12) {
            Throwable cause = e12.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unable to create binding instance.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    @Nullable
    @CheckResult
    @UiThread
    private static Constructor<? extends Unbinder> d(Class<?> cls) {
        Constructor<? extends Unbinder> d10;
        Map<Class<?>, Constructor<? extends Unbinder>> map = f1383b;
        Constructor<? extends Unbinder> constructor = map.get(cls);
        if (constructor == null && !map.containsKey(cls)) {
            String name = cls.getName();
            if (!name.startsWith("android.") && !name.startsWith("java.") && !name.startsWith("androidx.")) {
                try {
                    ClassLoader classLoader = cls.getClassLoader();
                    d10 = classLoader.loadClass(name + "_ViewBinding").getConstructor(cls, View.class);
                    if (f1382a) {
                        Log.d("ButterKnife", "HIT: Loaded binding class and constructor.");
                    }
                } catch (ClassNotFoundException unused) {
                    if (f1382a) {
                        Log.d("ButterKnife", "Not found. Trying superclass " + cls.getSuperclass().getName());
                    }
                    d10 = d(cls.getSuperclass());
                } catch (NoSuchMethodException e10) {
                    throw new RuntimeException("Unable to find binding constructor for " + name, e10);
                }
                f1383b.put(cls, d10);
                return d10;
            } else if (f1382a) {
                Log.d("ButterKnife", "MISS: Reached framework class. Abandoning search.");
                return null;
            } else {
                return null;
            }
        }
        if (f1382a) {
            Log.d("ButterKnife", "HIT: Cached in binding map.");
        }
        return constructor;
    }
}
