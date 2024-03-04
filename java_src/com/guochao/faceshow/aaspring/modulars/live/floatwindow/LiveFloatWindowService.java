package com.guochao.faceshow.aaspring.modulars.live.floatwindow;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import z8.c;
/* loaded from: classes3.dex */
public class LiveFloatWindowService extends Service {

    /* renamed from: a  reason: collision with root package name */
    c f19150a;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (this.f19150a == null) {
            c o10 = c.o();
            this.f19150a = o10;
            o10.O(this);
        }
        return this.f19150a;
    }
}
