package com.google.android.material.slider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
/* loaded from: classes2.dex */
public class Slider extends BaseSlider<Slider, OnChangeListener, OnSliderTouchListener> {

    /* loaded from: classes2.dex */
    public interface OnChangeListener extends BaseOnChangeListener<Slider> {
    }

    /* loaded from: classes2.dex */
    public interface OnSliderTouchListener extends BaseOnSliderTouchListener<Slider> {
    }

    public Slider(@NonNull Context context) {
        this(context, null);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void clearOnChangeListeners() {
        super.clearOnChangeListeners();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void clearOnSliderTouchListeners() {
        super.clearOnSliderTouchListeners();
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    @NonNull
    public /* bridge */ /* synthetic */ CharSequence getAccessibilityClassName() {
        return super.getAccessibilityClassName();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ int getActiveThumbIndex() {
        return super.getActiveThumbIndex();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ int getFocusedThumbIndex() {
        return super.getFocusedThumbIndex();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Dimension
    public /* bridge */ /* synthetic */ int getHaloRadius() {
        return super.getHaloRadius();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getHaloTintList() {
        return super.getHaloTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ int getLabelBehavior() {
        return super.getLabelBehavior();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ float getStepSize() {
        return super.getStepSize();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ float getThumbElevation() {
        return super.getThumbElevation();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Dimension
    public /* bridge */ /* synthetic */ int getThumbRadius() {
        return super.getThumbRadius();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ ColorStateList getThumbStrokeColor() {
        return super.getThumbStrokeColor();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ float getThumbStrokeWidth() {
        return super.getThumbStrokeWidth();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getThumbTintList() {
        return super.getThumbTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTickActiveTintList() {
        return super.getTickActiveTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTickInactiveTintList() {
        return super.getTickInactiveTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTickTintList() {
        return super.getTickTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTrackActiveTintList() {
        return super.getTrackActiveTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Dimension
    public /* bridge */ /* synthetic */ int getTrackHeight() {
        return super.getTrackHeight();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTrackInactiveTintList() {
        return super.getTrackInactiveTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Dimension
    public /* bridge */ /* synthetic */ int getTrackSidePadding() {
        return super.getTrackSidePadding();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTrackTintList() {
        return super.getTrackTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Dimension
    public /* bridge */ /* synthetic */ int getTrackWidth() {
        return super.getTrackWidth();
    }

    public float getValue() {
        return getValues().get(0).floatValue();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ float getValueFrom() {
        return super.getValueFrom();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ float getValueTo() {
        return super.getValueTo();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ boolean hasLabelFormatter() {
        return super.hasLabelFormatter();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ boolean isTickVisible() {
        return super.isTickVisible();
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View, android.view.KeyEvent.Callback
    public /* bridge */ /* synthetic */ boolean onKeyDown(int i9, @NonNull KeyEvent keyEvent) {
        return super.onKeyDown(i9, keyEvent);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View, android.view.KeyEvent.Callback
    public /* bridge */ /* synthetic */ boolean onKeyUp(int i9, @NonNull KeyEvent keyEvent) {
        return super.onKeyUp(i9, keyEvent);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.material.slider.BaseSlider
    protected boolean pickActiveThumb() {
        if (getActiveThumbIndex() != -1) {
            return true;
        }
        setActiveThumbIndex(0);
        return true;
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ void setEnabled(boolean z10) {
        super.setEnabled(z10);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setFocusedThumbIndex(int i9) {
        super.setFocusedThumbIndex(i9);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloRadius(@IntRange(from = 0) @Dimension int i9) {
        super.setHaloRadius(i9);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloRadiusResource(@DimenRes int i9) {
        super.setHaloRadiusResource(i9);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloTintList(@NonNull ColorStateList colorStateList) {
        super.setHaloTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setLabelBehavior(int i9) {
        super.setLabelBehavior(i9);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setLabelFormatter(@Nullable LabelFormatter labelFormatter) {
        super.setLabelFormatter(labelFormatter);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setStepSize(float f10) {
        super.setStepSize(f10);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbElevation(float f10) {
        super.setThumbElevation(f10);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbElevationResource(@DimenRes int i9) {
        super.setThumbElevationResource(i9);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbRadius(@IntRange(from = 0) @Dimension int i9) {
        super.setThumbRadius(i9);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbRadiusResource(@DimenRes int i9) {
        super.setThumbRadiusResource(i9);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        super.setThumbStrokeColor(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeColorResource(@ColorRes int i9) {
        super.setThumbStrokeColorResource(i9);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeWidth(float f10) {
        super.setThumbStrokeWidth(f10);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeWidthResource(@DimenRes int i9) {
        super.setThumbStrokeWidthResource(i9);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbTintList(@NonNull ColorStateList colorStateList) {
        super.setThumbTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickActiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickInactiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickTintList(@NonNull ColorStateList colorStateList) {
        super.setTickTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickVisible(boolean z10) {
        super.setTickVisible(z10);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackActiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackHeight(@IntRange(from = 0) @Dimension int i9) {
        super.setTrackHeight(i9);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackInactiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackTintList(colorStateList);
    }

    public void setValue(float f10) {
        setValues(Float.valueOf(f10));
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setValueFrom(float f10) {
        super.setValueFrom(f10);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setValueTo(float f10) {
        super.setValueTo(f10);
    }

    public Slider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    public Slider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842788});
        if (obtainStyledAttributes.hasValue(0)) {
            setValue(obtainStyledAttributes.getFloat(0, 0.0f));
        }
        obtainStyledAttributes.recycle();
    }
}
