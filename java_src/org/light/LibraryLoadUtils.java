package org.light;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import org.light.internal.relinker.ReLinker;
/* loaded from: classes7.dex */
public class LibraryLoadUtils {
    public static final String TAG = "LibraryLoadUtils";
    private static Context appContext;

    public static Context getAppContext() {
        return appContext;
    }

    private static boolean load(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            System.loadLibrary(str);
            return true;
        } catch (Throwable th2) {
            String str2 = TAG;
            Log.e(str2, "loadLibrary " + str + " fail! Error: " + th2.getMessage());
            return false;
        }
    }

    public static boolean loadLibrary(String str) {
        try {
            appContext = ((Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null)).getApplicationContext();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return loadLibrary(appContext, str);
    }

    private static boolean relinker(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                ReLinker.loadLibrary(context, str);
                return true;
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        return false;
    }

    private static boolean load(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            System.load((context.getApplicationInfo().dataDir + "/lib") + File.separator + "lib" + str + ".so");
            return true;
        } catch (Throwable th2) {
            Log.i(TAG, "load  fail! Error: " + th2.getMessage());
            return false;
        }
    }

    private static boolean loadLibrary(Context context, String str) {
        if (load(str) || load(context, str)) {
            return true;
        }
        return relinker(context, str);
    }
}
