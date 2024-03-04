package com.tencent.thumbplayer.g.f;

import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: e  reason: collision with root package name */
    public static final b f34088e = new b(1920, 1920);

    /* renamed from: b  reason: collision with root package name */
    public int f34090b;

    /* renamed from: c  reason: collision with root package name */
    public int f34091c;

    /* renamed from: a  reason: collision with root package name */
    public boolean f34089a = true;

    /* renamed from: d  reason: collision with root package name */
    public a f34092d = a.First;

    /* loaded from: classes4.dex */
    public enum a {
        First,
        SAME
    }

    public b(int i9, int i10) {
        this.f34090b = i9;
        this.f34091c = i10;
    }

    @NonNull
    public final String toString() {
        return "[initWidth:" + this.f34090b + ", initHeight:" + this.f34091c + ", reConfigByRealFormat:" + this.f34089a + ']';
    }
}
