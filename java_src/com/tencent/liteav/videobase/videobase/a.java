package com.tencent.liteav.videobase.videobase;

import com.tencent.liteav.videobase.utils.Rotation;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f31922a;

    /* renamed from: b  reason: collision with root package name */
    public final int f31923b;

    /* renamed from: c  reason: collision with root package name */
    public final Rotation f31924c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f31925d;

    public a(int i9, int i10) {
        this(i9, i10, Rotation.NORMAL);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            return aVar.f31922a == this.f31922a && aVar.f31923b == this.f31923b && aVar.f31924c == this.f31924c && aVar.f31925d == this.f31925d;
        }
        return false;
    }

    public final int hashCode() {
        return (((this.f31922a * 32713) + this.f31923b) << 4) + (this.f31924c.ordinal() << 1) + (this.f31925d ? 1 : 0);
    }

    public a(int i9, int i10, Rotation rotation) {
        this.f31922a = i9;
        this.f31923b = i10;
        this.f31924c = rotation;
        this.f31925d = false;
    }
}
