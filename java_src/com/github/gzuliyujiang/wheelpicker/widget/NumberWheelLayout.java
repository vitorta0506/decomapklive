package com.github.gzuliyujiang.wheelpicker.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.github.gzuliyujiang.wheelpicker.R$styleable;
import com.github.gzuliyujiang.wheelview.widget.WheelView;
import i1.f;
import i1.g;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class NumberWheelLayout extends OptionWheelLayout {

    /* renamed from: f  reason: collision with root package name */
    private f f5164f;

    public NumberWheelLayout(Context context) {
        super(context);
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.OptionWheelLayout, k1.a
    public void d(WheelView wheelView, int i9) {
        if (this.f5164f != null) {
            this.f5164f.a(i9, (Number) getWheelView().v(i9));
        }
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.OptionWheelLayout, com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected void f(@NonNull Context context, @NonNull TypedArray typedArray) {
        float f10 = context.getResources().getDisplayMetrics().density;
        setTextSize(typedArray.getDimensionPixelSize(R$styleable.NumberWheelLayout_wheel_itemTextSize, (int) (context.getResources().getDisplayMetrics().scaledDensity * 15.0f)));
        setVisibleItemCount(typedArray.getInt(R$styleable.NumberWheelLayout_wheel_visibleItemCount, 5));
        setSameWidthEnabled(typedArray.getBoolean(R$styleable.NumberWheelLayout_wheel_sameWidthEnabled, false));
        setMaxWidthText(typedArray.getString(R$styleable.NumberWheelLayout_wheel_maxWidthText));
        setSelectedTextColor(typedArray.getColor(R$styleable.NumberWheelLayout_wheel_itemTextColorSelected, ViewCompat.MEASURED_STATE_MASK));
        setTextColor(typedArray.getColor(R$styleable.NumberWheelLayout_wheel_itemTextColor, -7829368));
        setItemSpace(typedArray.getDimensionPixelSize(R$styleable.NumberWheelLayout_wheel_itemSpace, (int) (20.0f * f10)));
        setCyclicEnabled(typedArray.getBoolean(R$styleable.NumberWheelLayout_wheel_cyclicEnabled, false));
        setIndicatorEnabled(typedArray.getBoolean(R$styleable.NumberWheelLayout_wheel_indicatorEnabled, false));
        setIndicatorColor(typedArray.getColor(R$styleable.NumberWheelLayout_wheel_indicatorColor, -1166541));
        setIndicatorSize(typedArray.getDimension(R$styleable.NumberWheelLayout_wheel_indicatorSize, f10 * 1.0f));
        setCurtainEnabled(typedArray.getBoolean(R$styleable.NumberWheelLayout_wheel_curtainEnabled, false));
        setCurtainColor(typedArray.getColor(R$styleable.NumberWheelLayout_wheel_curtainColor, -1996488705));
        setAtmosphericEnabled(typedArray.getBoolean(R$styleable.NumberWheelLayout_wheel_atmosphericEnabled, false));
        setCurvedEnabled(typedArray.getBoolean(R$styleable.NumberWheelLayout_wheel_curvedEnabled, false));
        setCurvedMaxAngle(typedArray.getInteger(R$styleable.NumberWheelLayout_wheel_curvedMaxAngle, 90));
        setTextAlign(typedArray.getInt(R$styleable.NumberWheelLayout_wheel_itemTextAlign, 0));
        getLabelView().setText(typedArray.getString(R$styleable.NumberWheelLayout_wheel_label));
        float f11 = typedArray.getFloat(R$styleable.NumberWheelLayout_wheel_minNumber, 0.0f);
        float f12 = typedArray.getFloat(R$styleable.NumberWheelLayout_wheel_maxNumber, 10.0f);
        float f13 = typedArray.getFloat(R$styleable.NumberWheelLayout_wheel_stepNumber, 1.0f);
        if (typedArray.getBoolean(R$styleable.NumberWheelLayout_wheel_isDecimal, false)) {
            k(f11, f12, f13);
        } else {
            l((int) f11, (int) f12, (int) f13);
        }
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.OptionWheelLayout, com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int[] i() {
        return R$styleable.NumberWheelLayout;
    }

    public void k(float f10, float f11, float f12) {
        float min = Math.min(f10, f11);
        float max = Math.max(f10, f11);
        ArrayList arrayList = new ArrayList((int) ((max - min) / f12));
        while (min <= max) {
            arrayList.add(Float.valueOf(min));
            min += f12;
        }
        super.setData(arrayList);
    }

    public void l(int i9, int i10, int i11) {
        int min = Math.min(i9, i10);
        int max = Math.max(i9, i10);
        ArrayList arrayList = new ArrayList((max - min) / i11);
        while (min <= max) {
            arrayList.add(Integer.valueOf(min));
            min += i11;
        }
        super.setData(arrayList);
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.OptionWheelLayout
    @Deprecated
    public void setData(List<?> list) {
        throw new UnsupportedOperationException("Use setRange instead");
    }

    public void setOnNumberSelectedListener(f fVar) {
        this.f5164f = fVar;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.OptionWheelLayout
    @Deprecated
    public void setOnOptionSelectedListener(g gVar) {
        throw new UnsupportedOperationException("Use setOnNumberSelectedListener instead");
    }

    public NumberWheelLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NumberWheelLayout(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
