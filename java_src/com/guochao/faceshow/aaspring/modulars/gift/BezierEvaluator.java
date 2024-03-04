package com.guochao.faceshow.aaspring.modulars.gift;

import android.animation.TypeEvaluator;
import android.graphics.PointF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0002\u0010\bJ \u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;", "Landroid/animation/TypeEvaluator;", "Landroid/graphics/PointF;", "x1", "", "y1", "x2", "y2", "(FFFF)V", "firstX", "firstY", "secondX", "secondY", "evaluate", "fraction", "startValue", "endValue", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BezierEvaluator implements TypeEvaluator<PointF> {
    private float firstX;
    private float firstY;
    private float secondX;
    private float secondY;

    public BezierEvaluator(float f10, float f11, float f12, float f13) {
        this.firstX = f10;
        this.firstY = f11;
        this.secondX = f12;
        this.secondY = f13;
    }

    @Override // android.animation.TypeEvaluator
    @NotNull
    public PointF evaluate(float f10, @NotNull PointF startValue, @NotNull PointF endValue) {
        Intrinsics.checkNotNullParameter(startValue, "startValue");
        Intrinsics.checkNotNullParameter(endValue, "endValue");
        float f11 = 1.0f - f10;
        new PointF();
        PointF pointF = new PointF();
        float f12 = f11 * f11 * f11;
        float f13 = 3;
        pointF.x = (startValue.x * f12) + (this.firstX * f13 * f10 * f11 * f11) + (this.secondX * f13 * f10 * f10 * f11) + (endValue.x * f10 * f10 * f10);
        pointF.y = (f12 * startValue.y) + (this.firstY * f13 * f10 * f11 * f11) + (f13 * this.secondY * f10 * f10 * f11) + (endValue.y * f10 * f10 * f10);
        return pointF;
    }
}
