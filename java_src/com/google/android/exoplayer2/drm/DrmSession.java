package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.s;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public interface DrmSession {

    /* loaded from: classes.dex */
    public static class DrmSessionException extends IOException {
        public final int errorCode;

        public DrmSessionException(Throwable th2, int i9) {
            super(th2);
            this.errorCode = i9;
        }
    }

    void a(@Nullable s.a aVar);

    void b(@Nullable s.a aVar);

    UUID c();

    boolean d();

    @Nullable
    DrmSessionException e();

    @Nullable
    b2.b f();

    @Nullable
    Map<String, String> g();

    int getState();

    boolean h(String str);
}
