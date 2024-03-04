package com.opensource.svgaplayer.utils;

import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.opensource.svgaplayer.BuildConfig;
import kotlin.Metadata;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\b\n\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lcom/opensource/svgaplayer/utils/SVGARect;", "", x.f19108w, "", "y", "width", "height", "(DDDD)V", "getHeight", "()D", "getWidth", "getX", "getY", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGARect {
    private final double height;
    private final double width;

    /* renamed from: x  reason: collision with root package name */
    private final double f28889x;

    /* renamed from: y  reason: collision with root package name */
    private final double f28890y;

    public SVGARect(double d10, double d11, double d12, double d13) {
        this.f28889x = d10;
        this.f28890y = d11;
        this.width = d12;
        this.height = d13;
    }

    public final double getHeight() {
        return this.height;
    }

    public final double getWidth() {
        return this.width;
    }

    public final double getX() {
        return this.f28889x;
    }

    public final double getY() {
        return this.f28890y;
    }
}
