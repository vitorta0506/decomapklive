package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class x2 {

    /* renamed from: b  reason: collision with root package name */
    public static final x2 f7298b = new x2(false);

    /* renamed from: a  reason: collision with root package name */
    public final boolean f7299a;

    public x2(boolean z10) {
        this.f7299a = z10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && x2.class == obj.getClass() && this.f7299a == ((x2) obj).f7299a;
    }

    public int hashCode() {
        return !this.f7299a ? 1 : 0;
    }
}
