package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public final int f5628a;

    /* renamed from: b  reason: collision with root package name */
    public final float f5629b;

    public u(int i9, float f10) {
        this.f5628a = i9;
        this.f5629b = f10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || u.class != obj.getClass()) {
            return false;
        }
        u uVar = (u) obj;
        return this.f5628a == uVar.f5628a && Float.compare(uVar.f5629b, this.f5629b) == 0;
    }

    public int hashCode() {
        return ((527 + this.f5628a) * 31) + Float.floatToIntBits(this.f5629b);
    }
}
