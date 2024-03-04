package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class f0 implements d {
    @Override // com.google.android.exoplayer2.util.d
    public long b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.exoplayer2.util.d
    public long c() {
        return SystemClock.uptimeMillis();
    }

    @Override // com.google.android.exoplayer2.util.d
    public n d(Looper looper, @Nullable Handler.Callback callback) {
        return new g0(new Handler(looper, callback));
    }

    @Override // com.google.android.exoplayer2.util.d
    public void e() {
    }
}
