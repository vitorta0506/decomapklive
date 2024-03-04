package com.guochao.faceshow.utils;

import android.app.Application;
/* loaded from: classes4.dex */
public class ApplicationContextGetter {
    private static Application sApplication;
    private static volatile ApplicationContextGetter sInstance;

    public static synchronized ApplicationContextGetter instance() {
        ApplicationContextGetter applicationContextGetter;
        synchronized (ApplicationContextGetter.class) {
            if (sInstance == null) {
                sInstance = new ApplicationContextGetter();
            }
            applicationContextGetter = sInstance;
        }
        return applicationContextGetter;
    }

    public Application get() {
        return sApplication;
    }

    public void setApplicationContext(Application application) {
        sApplication = application;
    }
}
