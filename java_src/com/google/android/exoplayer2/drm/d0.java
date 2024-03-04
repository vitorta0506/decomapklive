package com.google.android.exoplayer2.drm;

import java.util.UUID;
/* loaded from: classes.dex */
public final class d0 implements b2.b {

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f5798d;

    /* renamed from: a  reason: collision with root package name */
    public final UUID f5799a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f5800b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f5801c;

    static {
        boolean z10;
        if ("Amazon".equals(com.google.android.exoplayer2.util.l0.f6987c)) {
            String str = com.google.android.exoplayer2.util.l0.f6988d;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z10 = true;
                f5798d = z10;
            }
        }
        z10 = false;
        f5798d = z10;
    }

    public d0(UUID uuid, byte[] bArr, boolean z10) {
        this.f5799a = uuid;
        this.f5800b = bArr;
        this.f5801c = z10;
    }
}
