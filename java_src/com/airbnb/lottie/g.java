package com.airbnb.lottie;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final int f3699a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3700b;

    /* renamed from: c  reason: collision with root package name */
    private final String f3701c;

    /* renamed from: d  reason: collision with root package name */
    private final String f3702d;

    /* renamed from: e  reason: collision with root package name */
    private final String f3703e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Bitmap f3704f;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public g(int i9, int i10, String str, String str2, String str3) {
        this.f3699a = i9;
        this.f3700b = i10;
        this.f3701c = str;
        this.f3702d = str2;
        this.f3703e = str3;
    }

    @Nullable
    public Bitmap a() {
        return this.f3704f;
    }

    public String b() {
        return this.f3702d;
    }

    public int c() {
        return this.f3700b;
    }

    public String d() {
        return this.f3701c;
    }

    public int e() {
        return this.f3699a;
    }

    public void f(@Nullable Bitmap bitmap) {
        this.f3704f = bitmap;
    }
}
