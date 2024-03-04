package com.guochao.faceshow.context;

import android.app.Application;
import android.content.Context;
import androidx.core.util.PatternsCompat;
import androidx.lifecycle.ViewModelStoreOwner;
import java.util.regex.Pattern;
import o.a;
/* loaded from: classes2.dex */
public abstract class GCApplication extends Application implements ViewModelStoreOwner {
    public static final int CACHE_SIZE = 83886080;
    public static final Pattern WEB_URL = PatternsCompat.WEB_URL;
    public static String sCpuArch = "32";
    private static GCApplication sGCApplication;

    public static GCApplication app() {
        return sGCApplication;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        a.d(this);
    }

    @Override // android.app.Application
    public void onCreate() {
        sGCApplication = this;
        super.onCreate();
    }

    public void updateLocale() {
    }
}
