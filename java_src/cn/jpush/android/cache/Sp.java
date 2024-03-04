package cn.jpush.android.cache;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import cn.jpush.android.local.JPushConstants;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class Sp {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, SharedPreferences> f2986a = new ConcurrentHashMap();

    private static SharedPreferences a(Context context, String str) {
        Context appContext;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, SharedPreferences> map = f2986a;
        SharedPreferences sharedPreferences = map.get(str);
        if (sharedPreferences != null || (appContext = JPushConstants.getAppContext(context)) == null) {
            return sharedPreferences;
        }
        SharedPreferences sharedPreferences2 = appContext.getSharedPreferences(str, 0);
        map.put(str, sharedPreferences2);
        b(appContext, str);
        return sharedPreferences2;
    }

    private static <T> T a(SharedPreferences sharedPreferences, String str, T t10) {
        if (sharedPreferences != null && sharedPreferences.contains(str)) {
            try {
                if (t10 instanceof Boolean) {
                    return (T) Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) t10).booleanValue()));
                }
                if (t10 instanceof String) {
                    return (T) sharedPreferences.getString(str, (String) t10);
                }
                if (t10 instanceof Integer) {
                    return (T) Integer.valueOf(sharedPreferences.getInt(str, ((Integer) t10).intValue()));
                }
                if (t10 instanceof Long) {
                    return (T) Long.valueOf(sharedPreferences.getLong(str, ((Long) t10).longValue()));
                }
                if (t10 instanceof Float) {
                    return (T) Float.valueOf(sharedPreferences.getFloat(str, ((Float) t10).floatValue()));
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static <T> void a(SharedPreferences.Editor editor, String str, T t10) {
        if (editor != null) {
            if (t10 == null) {
                editor.remove(str);
            } else if (t10 instanceof Boolean) {
                editor.putBoolean(str, ((Boolean) t10).booleanValue());
            } else if (t10 instanceof String) {
                editor.putString(str, (String) t10);
            } else if (t10 instanceof Integer) {
                editor.putInt(str, ((Integer) t10).intValue());
            } else if (t10 instanceof Long) {
                editor.putLong(str, ((Long) t10).longValue());
            } else if (t10 instanceof Float) {
                editor.putFloat(str, ((Float) t10).floatValue());
            }
        }
    }

    private static void b(Context context, String str) {
    }

    public static void clear(Context context, String str) {
        SharedPreferences a10 = a(context, str);
        if (a10 != null) {
            a10.edit().clear().apply();
        }
    }

    public static <T> T get(Context context, Key<T> key) {
        T t10 = (T) getWithNull(context, key);
        return t10 != null ? t10 : key.f2984c;
    }

    public static <T> T getWithNull(Context context, Key<T> key) {
        T t10 = (T) a(a(context, key.f2982a), key.f2983b, key.f2984c);
        if (t10 == null && key.f2985d) {
            t10 = (T) a(reload(context, key.f2982a), key.f2983b, key.f2984c);
        }
        if (t10 != null) {
            key.set(t10);
            return t10;
        }
        return null;
    }

    public static void read(Context context, Key<?>... keyArr) {
        if (keyArr == null || keyArr.length <= 0) {
            return;
        }
        for (Key<?> key : keyArr) {
            get(context, key);
        }
    }

    public static SharedPreferences reload(Context context, String str) {
        Context appContext = JPushConstants.getAppContext(context);
        if (appContext != null) {
            appContext.getSharedPreferences(str, 4);
            return appContext.getSharedPreferences(str, 0);
        }
        return null;
    }

    public static void set(Context context, Key<?>... keyArr) {
        if (keyArr == null || keyArr.length <= 0) {
            return;
        }
        SharedPreferences a10 = a(context, keyArr[0].f2982a);
        if (a10 != null) {
            SharedPreferences.Editor edit = a10.edit();
            for (Key<?> key : keyArr) {
                a(edit, key.f2983b, key.f2984c);
            }
            edit.commit();
        }
    }
}
