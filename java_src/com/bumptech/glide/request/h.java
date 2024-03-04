package com.bumptech.glide.request;

import android.graphics.Bitmap;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class h extends a<h> {
    @Nullable
    private static h A;
    @Nullable
    private static h B;
    @Nullable
    private static h C;

    @NonNull
    @CheckResult
    public static h B0(@NonNull com.bumptech.glide.load.engine.j jVar) {
        return new h().h(jVar);
    }

    @NonNull
    @CheckResult
    public static h D0(@NonNull e0.b bVar) {
        return new h().l0(bVar);
    }

    @NonNull
    @CheckResult
    public static h H0(boolean z10) {
        if (z10) {
            if (A == null) {
                A = new h().n0(true).b();
            }
            return A;
        }
        if (B == null) {
            B = new h().n0(false).b();
        }
        return B;
    }

    @NonNull
    @CheckResult
    public static h x0(@NonNull e0.h<Bitmap> hVar) {
        return new h().q0(hVar);
    }

    @NonNull
    @CheckResult
    public static h y0() {
        if (C == null) {
            C = new h().e().b();
        }
        return C;
    }

    @NonNull
    @CheckResult
    public static h z0(@NonNull Class<?> cls) {
        return new h().g(cls);
    }
}
