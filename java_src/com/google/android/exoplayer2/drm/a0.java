package com.google.android.exoplayer2.drm;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.s;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public final class a0 implements DrmSession {

    /* renamed from: a  reason: collision with root package name */
    private final DrmSession.DrmSessionException f5787a;

    public a0(DrmSession.DrmSessionException drmSessionException) {
        this.f5787a = (DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(drmSessionException);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void a(@Nullable s.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public void b(@Nullable s.a aVar) {
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public final UUID c() {
        return com.google.android.exoplayer2.i.f5996a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean d() {
        return false;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public DrmSession.DrmSessionException e() {
        return this.f5787a;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public b2.b f() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    @Nullable
    public Map<String, String> g() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public int getState() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSession
    public boolean h(String str) {
        return false;
    }
}
