package com.google.android.play.core.splitinstall;

import androidx.annotation.Nullable;
import b5.f;
import b5.g;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public enum zzo implements f {
    INSTANCE;
    
    private static final AtomicReference zzb = new AtomicReference(null);

    @Override // b5.f
    @Nullable
    public final g zza() {
        return (g) zzb.get();
    }

    public final void zzb(g gVar) {
        zzb.set(gVar);
    }
}
