package com.guochao.faceshow.utils;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
/* loaded from: classes4.dex */
public class FaceImageUtils {
    public static ColorStateList createColorStateList(int i9, int i10) {
        return new ColorStateList(new int[][]{new int[]{16842913}, new int[0]}, new int[]{i10, i9});
    }

    public static GradientDrawable createDrawable(GradientDrawable.Orientation orientation, int[] iArr, int i9, int i10, float[] fArr) {
        if (orientation == null) {
            orientation = GradientDrawable.Orientation.LEFT_RIGHT;
        }
        GradientDrawable gradientDrawable = new GradientDrawable(orientation, iArr);
        gradientDrawable.setGradientType(0);
        if (i9 != -1 || i10 != -1) {
            gradientDrawable.setStroke(i9, i10);
        }
        gradientDrawable.setCornerRadii(fArr);
        return gradientDrawable;
    }

    public static ShapeDrawable createRingDrawable(int i9) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        shapeDrawable.getPaint().setColor(i9);
        shapeDrawable.getPaint().setStyle(Paint.Style.FILL);
        return shapeDrawable;
    }

    public static StateListDrawable createSelectorDrawable(Drawable drawable, Drawable drawable2) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842913}, drawable2);
        stateListDrawable.addState(new int[0], drawable);
        return stateListDrawable;
    }

    public static GradientDrawable createDrawable(GradientDrawable.Orientation orientation, int i9, int i10, int i11, int i12) {
        float f10 = i12;
        return createDrawable(orientation, new int[]{i9, i9}, i10, i11, new float[]{f10, f10, f10, f10, f10, f10, f10, f10});
    }

    public static GradientDrawable createDrawable(int i9, int i10, int i11, int i12) {
        return createDrawable((GradientDrawable.Orientation) null, i9, i10, i11, i12);
    }

    public static GradientDrawable createDrawable(int i9, int i10, int i11, int i12, int i13) {
        float f10 = i11;
        float f11 = i12;
        float f12 = i13;
        float f13 = i10;
        return createDrawable((GradientDrawable.Orientation) null, new int[]{i9, i9}, -1, -1, new float[]{f10, f10, f11, f11, f12, f12, f13, f13});
    }

    public static GradientDrawable createDrawable(int i9, float[] fArr) {
        return createDrawable((GradientDrawable.Orientation) null, new int[]{i9, i9}, -1, -1, fArr);
    }

    public static GradientDrawable createDrawable(int i9, int i10) {
        return createDrawable(i9, -1, -1, i10);
    }

    public static GradientDrawable createDrawable(GradientDrawable.Orientation orientation, int[] iArr, int i9) {
        float f10 = i9;
        return createDrawable(orientation, iArr, -1, -1, new float[]{f10, f10, f10, f10, f10, f10, f10, f10});
    }
}
