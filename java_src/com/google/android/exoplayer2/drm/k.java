package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final /* synthetic */ class k {
    public static void a(@Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.a(null);
        }
        if (drmSession != null) {
            drmSession.b(null);
        }
    }
}
