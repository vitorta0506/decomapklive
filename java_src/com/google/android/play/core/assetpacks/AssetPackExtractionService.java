package com.google.android.play.core.assetpacks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
/* loaded from: classes2.dex */
public class AssetPackExtractionService extends Service {

    /* renamed from: a  reason: collision with root package name */
    w f10136a;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f10136a;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        t1.a(getApplicationContext()).a(this);
    }
}
