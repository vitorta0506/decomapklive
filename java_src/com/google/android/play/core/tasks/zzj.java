package com.google.android.play.core.tasks;
/* loaded from: classes2.dex */
public abstract class zzj extends RuntimeException {
    public zzj(String str) {
        super(str);
    }

    public abstract int getErrorCode();

    public zzj(Throwable th2) {
        super(th2);
    }
}
