package com.tencent.thumbplayer.g.c;

import android.graphics.SurfaceTexture;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public final class b extends SurfaceTexture {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private a f34049a;

    /* loaded from: classes4.dex */
    public interface a {
        void a();
    }

    public b(int i9) {
        super(i9);
    }

    public final void a(@Nullable a aVar) {
        this.f34049a = aVar;
    }

    @Override // android.graphics.SurfaceTexture
    public final void release() {
        super.release();
        a aVar = this.f34049a;
        if (aVar != null) {
            aVar.a();
        }
    }
}
