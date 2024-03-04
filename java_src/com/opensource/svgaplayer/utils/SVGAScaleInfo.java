package com.opensource.svgaplayer.utils;

import android.widget.ImageView;
import com.opensource.svgaplayer.BuildConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J.\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"J\b\u0010#\u001a\u00020\u001cH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\b¨\u0006$"}, d2 = {"Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;", "", "()V", "ratio", "", "getRatio", "()F", "setRatio", "(F)V", "ratioX", "", "getRatioX", "()Z", "setRatioX", "(Z)V", "scaleFx", "getScaleFx", "setScaleFx", "scaleFy", "getScaleFy", "setScaleFy", "tranFx", "getTranFx", "setTranFx", "tranFy", "getTranFy", "setTranFy", "performScaleType", "", "canvasWidth", "canvasHeight", "videoWidth", "videoHeight", "scaleType", "Landroid/widget/ImageView$ScaleType;", "resetVar", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class SVGAScaleInfo {
    private boolean ratioX;
    private float tranFx;
    private float tranFy;
    private float scaleFx = 1.0f;
    private float scaleFy = 1.0f;
    private float ratio = 1.0f;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            iArr[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            iArr[ImageView.ScaleType.FIT_START.ordinal()] = 5;
            iArr[ImageView.ScaleType.FIT_END.ordinal()] = 6;
            iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void resetVar() {
        this.tranFx = 0.0f;
        this.tranFy = 0.0f;
        this.scaleFx = 1.0f;
        this.scaleFy = 1.0f;
        this.ratio = 1.0f;
        this.ratioX = false;
    }

    public final float getRatio() {
        return this.ratio;
    }

    public final boolean getRatioX() {
        return this.ratioX;
    }

    public final float getScaleFx() {
        return this.scaleFx;
    }

    public final float getScaleFy() {
        return this.scaleFy;
    }

    public final float getTranFx() {
        return this.tranFx;
    }

    public final float getTranFy() {
        return this.tranFy;
    }

    public final void performScaleType(float f10, float f11, float f12, float f13, @NotNull ImageView.ScaleType scaleType) {
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        if (f10 == 0.0f) {
            return;
        }
        if (f11 == 0.0f) {
            return;
        }
        if (f12 == 0.0f) {
            return;
        }
        if (f13 == 0.0f) {
            return;
        }
        resetVar();
        float f14 = (f10 - f12) / 2.0f;
        float f15 = (f11 - f13) / 2.0f;
        float f16 = f12 / f13;
        float f17 = f10 / f11;
        float f18 = f11 / f13;
        float f19 = f10 / f12;
        switch (WhenMappings.$EnumSwitchMapping$0[scaleType.ordinal()]) {
            case 1:
                this.tranFx = f14;
                this.tranFy = f15;
                return;
            case 2:
                if (f16 > f17) {
                    this.ratio = f18;
                    this.ratioX = false;
                    this.scaleFx = f18;
                    this.scaleFy = f18;
                    this.tranFx = (f10 - (f12 * f18)) / 2.0f;
                    return;
                }
                this.ratio = f19;
                this.ratioX = true;
                this.scaleFx = f19;
                this.scaleFy = f19;
                this.tranFy = (f11 - (f13 * f19)) / 2.0f;
                return;
            case 3:
                if (f12 < f10 && f13 < f11) {
                    this.tranFx = f14;
                    this.tranFy = f15;
                    return;
                } else if (f16 > f17) {
                    this.ratio = f19;
                    this.ratioX = true;
                    this.scaleFx = f19;
                    this.scaleFy = f19;
                    this.tranFy = (f11 - (f13 * f19)) / 2.0f;
                    return;
                } else {
                    this.ratio = f18;
                    this.ratioX = false;
                    this.scaleFx = f18;
                    this.scaleFy = f18;
                    this.tranFx = (f10 - (f12 * f18)) / 2.0f;
                    return;
                }
            case 4:
                if (f16 > f17) {
                    this.ratio = f19;
                    this.ratioX = true;
                    this.scaleFx = f19;
                    this.scaleFy = f19;
                    this.tranFy = (f11 - (f13 * f19)) / 2.0f;
                    return;
                }
                this.ratio = f18;
                this.ratioX = false;
                this.scaleFx = f18;
                this.scaleFy = f18;
                this.tranFx = (f10 - (f12 * f18)) / 2.0f;
                return;
            case 5:
                if (f16 > f17) {
                    this.ratio = f19;
                    this.ratioX = true;
                    this.scaleFx = f19;
                    this.scaleFy = f19;
                    return;
                }
                this.ratio = f18;
                this.ratioX = false;
                this.scaleFx = f18;
                this.scaleFy = f18;
                return;
            case 6:
                if (f16 > f17) {
                    this.ratio = f19;
                    this.ratioX = true;
                    this.scaleFx = f19;
                    this.scaleFy = f19;
                    this.tranFy = f11 - (f13 * f19);
                    return;
                }
                this.ratio = f18;
                this.ratioX = false;
                this.scaleFx = f18;
                this.scaleFy = f18;
                this.tranFx = f10 - (f12 * f18);
                return;
            case 7:
                this.ratio = Math.max(f19, f18);
                this.ratioX = f19 > f18;
                this.scaleFx = f19;
                this.scaleFy = f18;
                return;
            default:
                this.ratio = f19;
                this.ratioX = true;
                this.scaleFx = f19;
                this.scaleFy = f19;
                return;
        }
    }

    public final void setRatio(float f10) {
        this.ratio = f10;
    }

    public final void setRatioX(boolean z10) {
        this.ratioX = z10;
    }

    public final void setScaleFx(float f10) {
        this.scaleFx = f10;
    }

    public final void setScaleFy(float f10) {
        this.scaleFy = f10;
    }

    public final void setTranFx(float f10) {
        this.tranFx = f10;
    }

    public final void setTranFy(float f10) {
        this.tranFy = f10;
    }
}
