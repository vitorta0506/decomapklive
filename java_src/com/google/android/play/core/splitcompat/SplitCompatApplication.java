package com.google.android.play.core.splitcompat;

import a5.a;
import android.app.Application;
import android.content.Context;
/* loaded from: classes2.dex */
public class SplitCompatApplication extends Application {
    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        a.a(this);
    }
}
