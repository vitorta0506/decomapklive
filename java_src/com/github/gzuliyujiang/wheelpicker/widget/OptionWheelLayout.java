package com.github.gzuliyujiang.wheelpicker.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.github.gzuliyujiang.wheelpicker.R$id;
import com.github.gzuliyujiang.wheelpicker.R$layout;
import com.github.gzuliyujiang.wheelpicker.R$styleable;
import com.github.gzuliyujiang.wheelview.widget.WheelView;
import i1.g;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class OptionWheelLayout extends BaseWheelLayout {

    /* renamed from: c  reason: collision with root package name */
    private WheelView f5165c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f5166d;

    /* renamed from: e  reason: collision with root package name */
    private g f5167e;

    public OptionWheelLayout(Context context) {
        super(context);
    }

    public void d(WheelView wheelView, int i9) {
        g gVar = this.f5167e;
        if (gVar != null) {
            gVar.a(i9, this.f5165c.v(i9));
        }
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected void f(@NonNull Context context, @NonNull TypedArray typedArray) {
        float f10 = context.getResources().getDisplayMetrics().density;
        setTextSize(typedArray.getDimensionPixelSize(R$styleable.OptionWheelLayout_wheel_itemTextSize, (int) (context.getResources().getDisplayMetrics().scaledDensity * 15.0f)));
        setVisibleItemCount(typedArray.getInt(R$styleable.OptionWheelLayout_wheel_visibleItemCount, 5));
        setSameWidthEnabled(typedArray.getBoolean(R$styleable.OptionWheelLayout_wheel_sameWidthEnabled, false));
        setMaxWidthText(typedArray.getString(R$styleable.OptionWheelLayout_wheel_maxWidthText));
        setSelectedTextColor(typedArray.getColor(R$styleable.OptionWheelLayout_wheel_itemTextColorSelected, ViewCompat.MEASURED_STATE_MASK));
        setTextColor(typedArray.getColor(R$styleable.OptionWheelLayout_wheel_itemTextColor, -7829368));
        setItemSpace(typedArray.getDimensionPixelSize(R$styleable.OptionWheelLayout_wheel_itemSpace, (int) (20.0f * f10)));
        setCyclicEnabled(typedArray.getBoolean(R$styleable.OptionWheelLayout_wheel_cyclicEnabled, false));
        setIndicatorEnabled(typedArray.getBoolean(R$styleable.OptionWheelLayout_wheel_indicatorEnabled, false));
        setIndicatorColor(typedArray.getColor(R$styleable.OptionWheelLayout_wheel_indicatorColor, -1166541));
        setIndicatorSize(typedArray.getDimension(R$styleable.OptionWheelLayout_wheel_indicatorSize, f10 * 1.0f));
        setCurtainEnabled(typedArray.getBoolean(R$styleable.OptionWheelLayout_wheel_curtainEnabled, false));
        setCurtainColor(typedArray.getColor(R$styleable.OptionWheelLayout_wheel_curtainColor, -1996488705));
        setAtmosphericEnabled(typedArray.getBoolean(R$styleable.OptionWheelLayout_wheel_atmosphericEnabled, false));
        setCurvedEnabled(typedArray.getBoolean(R$styleable.OptionWheelLayout_wheel_curvedEnabled, false));
        setCurvedMaxAngle(typedArray.getInteger(R$styleable.OptionWheelLayout_wheel_curvedMaxAngle, 90));
        setTextAlign(typedArray.getInt(R$styleable.OptionWheelLayout_wheel_itemTextAlign, 0));
        this.f5166d.setText(typedArray.getString(R$styleable.OptionWheelLayout_wheel_label));
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected void g(@NonNull Context context) {
        this.f5165c = (WheelView) findViewById(R$id.wheel_picker_option_wheel);
        this.f5166d = (TextView) findViewById(R$id.wheel_picker_option_label);
    }

    public final TextView getLabelView() {
        return this.f5166d;
    }

    public final WheelView getWheelView() {
        return this.f5165c;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int h() {
        return R$layout.wheel_picker_option;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected int[] i() {
        return R$styleable.OptionWheelLayout;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.widget.BaseWheelLayout
    protected List<WheelView> j() {
        return Collections.singletonList(this.f5165c);
    }

    public void setData(List<?> list) {
        this.f5165c.setData(list);
    }

    public void setDefaultPosition(int i9) {
        this.f5165c.setDefaultPosition(i9);
    }

    public void setDefaultValue(Object obj) {
        this.f5165c.setDefaultValue(obj);
    }

    public void setOnOptionSelectedListener(g gVar) {
        this.f5167e = gVar;
    }

    public OptionWheelLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public OptionWheelLayout(Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
    }
}
