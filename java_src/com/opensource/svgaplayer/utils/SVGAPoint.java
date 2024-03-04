package com.opensource.svgaplayer.utils;

import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.opensource.svgaplayer.BuildConfig;
import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/opensource/svgaplayer/utils/SVGAPoint;", "", x.f19108w, "", "y", "value", "(FFF)V", "getValue", "()F", "getX", "getY", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGAPoint {
    private final float value;

    /* renamed from: x  reason: collision with root package name */
    private final float f28887x;

    /* renamed from: y  reason: collision with root package name */
    private final float f28888y;

    public SVGAPoint(float f10, float f11, float f12) {
        this.f28887x = f10;
        this.f28888y = f11;
        this.value = f12;
    }

    public final float getValue() {
        return this.value;
    }

    public final float getX() {
        return this.f28887x;
    }

    public final float getY() {
        return this.f28888y;
    }
}
