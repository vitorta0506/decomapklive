package com.google.android.exoplayer2.drm;

import a2.s1;
import android.media.MediaDrmException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.c0;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RequiresApi(18)
/* loaded from: classes.dex */
public final class z implements c0 {
    @Override // com.google.android.exoplayer2.drm.c0
    public Map<String, String> a(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public c0.g b() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public /* synthetic */ void c(byte[] bArr, s1 s1Var) {
        b0.a(this, bArr, s1Var);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public byte[] d() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void e(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void f(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public int g() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public b2.b h(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public boolean i(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void j(byte[] bArr) {
    }

    @Override // com.google.android.exoplayer2.drm.c0
    @Nullable
    public byte[] k(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public c0.a l(byte[] bArr, @Nullable List<DrmInitData.SchemeData> list, int i9, @Nullable HashMap<String, String> hashMap) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void release() {
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void setOnEventListener(@Nullable c0.c cVar) {
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void setOnExpirationUpdateListener(@Nullable c0.d dVar) {
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void setOnKeyStatusChangeListener(@Nullable c0.e eVar) {
    }
}
