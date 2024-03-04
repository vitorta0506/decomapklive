package com.airbnb.lottie.model.content;

import i.d;
import i.h;
/* loaded from: classes.dex */
public class Mask {

    /* renamed from: a  reason: collision with root package name */
    private final MaskMode f3751a;

    /* renamed from: b  reason: collision with root package name */
    private final h f3752b;

    /* renamed from: c  reason: collision with root package name */
    private final d f3753c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f3754d;

    /* loaded from: classes.dex */
    public enum MaskMode {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public Mask(MaskMode maskMode, h hVar, d dVar, boolean z10) {
        this.f3751a = maskMode;
        this.f3752b = hVar;
        this.f3753c = dVar;
        this.f3754d = z10;
    }

    public MaskMode a() {
        return this.f3751a;
    }

    public h b() {
        return this.f3752b;
    }

    public d c() {
        return this.f3753c;
    }

    public boolean d() {
        return this.f3754d;
    }
}
