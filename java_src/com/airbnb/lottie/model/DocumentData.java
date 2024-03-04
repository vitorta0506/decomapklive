package com.airbnb.lottie.model;

import androidx.annotation.ColorInt;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class DocumentData {

    /* renamed from: a  reason: collision with root package name */
    public final String f3740a;

    /* renamed from: b  reason: collision with root package name */
    public final String f3741b;

    /* renamed from: c  reason: collision with root package name */
    public final float f3742c;

    /* renamed from: d  reason: collision with root package name */
    public final Justification f3743d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3744e;

    /* renamed from: f  reason: collision with root package name */
    public final float f3745f;

    /* renamed from: g  reason: collision with root package name */
    public final float f3746g;
    @ColorInt

    /* renamed from: h  reason: collision with root package name */
    public final int f3747h;
    @ColorInt

    /* renamed from: i  reason: collision with root package name */
    public final int f3748i;

    /* renamed from: j  reason: collision with root package name */
    public final float f3749j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f3750k;

    /* loaded from: classes.dex */
    public enum Justification {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public DocumentData(String str, String str2, float f10, Justification justification, int i9, float f11, float f12, @ColorInt int i10, @ColorInt int i11, float f13, boolean z10) {
        this.f3740a = str;
        this.f3741b = str2;
        this.f3742c = f10;
        this.f3743d = justification;
        this.f3744e = i9;
        this.f3745f = f11;
        this.f3746g = f12;
        this.f3747h = i10;
        this.f3748i = i11;
        this.f3749j = f13;
        this.f3750k = z10;
    }

    public int hashCode() {
        int hashCode = (((((int) ((((this.f3740a.hashCode() * 31) + this.f3741b.hashCode()) * 31) + this.f3742c)) * 31) + this.f3743d.ordinal()) * 31) + this.f3744e;
        long floatToRawIntBits = Float.floatToRawIntBits(this.f3745f);
        return (((hashCode * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.f3747h;
    }
}
