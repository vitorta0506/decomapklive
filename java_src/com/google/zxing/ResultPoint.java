package com.google.zxing;

import com.google.zxing.common.detector.MathUtils;
/* loaded from: classes3.dex */
public class ResultPoint {

    /* renamed from: x  reason: collision with root package name */
    private final float f15838x;

    /* renamed from: y  reason: collision with root package name */
    private final float f15839y;

    public ResultPoint(float f10, float f11) {
        this.f15838x = f10;
        this.f15839y = f11;
    }

    private static float crossProductZ(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f10 = resultPoint2.f15838x;
        float f11 = resultPoint2.f15839y;
        return ((resultPoint3.f15838x - f10) * (resultPoint.f15839y - f11)) - ((resultPoint3.f15839y - f11) * (resultPoint.f15838x - f10));
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.f15838x, resultPoint.f15839y, resultPoint2.f15838x, resultPoint2.f15839y);
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float distance = distance(resultPointArr[0], resultPointArr[1]);
        float distance2 = distance(resultPointArr[1], resultPointArr[2]);
        float distance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (distance2 >= distance && distance2 >= distance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (distance3 >= distance2 && distance3 >= distance) {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        } else {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        }
        if (crossProductZ(resultPoint2, resultPoint, resultPoint3) < 0.0f) {
            ResultPoint resultPoint4 = resultPoint3;
            resultPoint3 = resultPoint2;
            resultPoint2 = resultPoint4;
        }
        resultPointArr[0] = resultPoint2;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ResultPoint) {
            ResultPoint resultPoint = (ResultPoint) obj;
            if (this.f15838x == resultPoint.f15838x && this.f15839y == resultPoint.f15839y) {
                return true;
            }
        }
        return false;
    }

    public final float getX() {
        return this.f15838x;
    }

    public final float getY() {
        return this.f15839y;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.f15838x) * 31) + Float.floatToIntBits(this.f15839y);
    }

    public final String toString() {
        return "(" + this.f15838x + ',' + this.f15839y + ')';
    }
}
