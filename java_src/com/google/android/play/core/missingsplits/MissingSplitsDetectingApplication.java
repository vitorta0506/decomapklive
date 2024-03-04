package com.google.android.play.core.missingsplits;

import android.app.Application;
import y4.b;
@Deprecated
/* loaded from: classes2.dex */
public class MissingSplitsDetectingApplication extends Application {

    /* renamed from: a  reason: collision with root package name */
    private boolean f10632a = false;

    @Deprecated
    public void a() {
    }

    @Override // android.app.Application
    public final void onCreate() {
        if (!this.f10632a) {
            this.f10632a = true;
            if (b.a(this).a()) {
                return;
            }
            super.onCreate();
            a();
            return;
        }
        throw new IllegalStateException("The onCreate method must be invoked at most once.");
    }
}
