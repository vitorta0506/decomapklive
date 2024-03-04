package com.google.android.material.slider;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewOverlayImpl;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.slider.BaseOnChangeListener;
import com.google.android.material.slider.BaseOnSliderTouchListener;
import com.google.android.material.slider.BaseSlider;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.android.material.tooltip.TooltipDrawable;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends BaseOnChangeListener<S>, T extends BaseOnSliderTouchListener<S>> extends View {
    private static final String EXCEPTION_ILLEGAL_DISCRETE_VALUE = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)";
    private static final String EXCEPTION_ILLEGAL_MIN_SEPARATION = "minSeparation(%s) must be greater or equal to 0";
    private static final String EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE = "minSeparation(%s) must be greater or equal and a multiple of stepSize(%s) when using stepSize(%s)";
    private static final String EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE_UNIT = "minSeparation(%s) cannot be set as a dimension when using stepSize(%s)";
    private static final String EXCEPTION_ILLEGAL_STEP_SIZE = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range";
    private static final String EXCEPTION_ILLEGAL_VALUE = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)";
    private static final String EXCEPTION_ILLEGAL_VALUE_FROM = "valueFrom(%s) must be smaller than valueTo(%s)";
    private static final String EXCEPTION_ILLEGAL_VALUE_TO = "valueTo(%s) must be greater than valueFrom(%s)";
    private static final int HALO_ALPHA = 63;
    private static final long LABEL_ANIMATION_ENTER_DURATION = 83;
    private static final long LABEL_ANIMATION_EXIT_DURATION = 117;
    private static final double THRESHOLD = 1.0E-4d;
    private static final int TIMEOUT_SEND_ACCESSIBILITY_EVENT = 200;
    static final int UNIT_PX = 0;
    static final int UNIT_VALUE = 1;
    private static final String WARNING_FLOATING_POINT_ERROR = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the value correctly.";
    private BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender;
    @NonNull
    private final AccessibilityHelper accessibilityHelper;
    private final AccessibilityManager accessibilityManager;
    private int activeThumbIdx;
    @NonNull
    private final Paint activeTicksPaint;
    @NonNull
    private final Paint activeTrackPaint;
    @NonNull
    private final List<L> changeListeners;
    private int defaultThumbRadius;
    private boolean dirtyConfig;
    private int focusedThumbIdx;
    private boolean forceDrawCompatHalo;
    private LabelFormatter formatter;
    @NonNull
    private ColorStateList haloColor;
    @NonNull
    private final Paint haloPaint;
    private int haloRadius;
    @NonNull
    private final Paint inactiveTicksPaint;
    @NonNull
    private final Paint inactiveTrackPaint;
    private boolean isLongPress;
    private int labelBehavior;
    @NonNull
    private final TooltipDrawableFactory labelMaker;
    private int labelPadding;
    @NonNull
    private final List<TooltipDrawable> labels;
    private boolean labelsAreAnimatedIn;
    private ValueAnimator labelsInAnimator;
    private ValueAnimator labelsOutAnimator;
    private MotionEvent lastEvent;
    private int minTrackSidePadding;
    private final int scaledTouchSlop;
    private int separationUnit;
    private float stepSize;
    @NonNull
    private final MaterialShapeDrawable thumbDrawable;
    private boolean thumbIsPressed;
    @NonNull
    private final Paint thumbPaint;
    private int thumbRadius;
    @NonNull
    private ColorStateList tickColorActive;
    @NonNull
    private ColorStateList tickColorInactive;
    private boolean tickVisible;
    private float[] ticksCoordinates;
    private float touchDownX;
    @NonNull
    private final List<T> touchListeners;
    private float touchPosition;
    @NonNull
    private ColorStateList trackColorActive;
    @NonNull
    private ColorStateList trackColorInactive;
    private int trackHeight;
    private int trackSidePadding;
    private int trackTop;
    private int trackWidth;
    private float valueFrom;
    private float valueTo;
    private ArrayList<Float> values;
    private int widgetHeight;
    private static final String TAG = BaseSlider.class.getSimpleName();
    static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_Slider;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class AccessibilityEventSender implements Runnable {
        int virtualViewId;

        private AccessibilityEventSender() {
            this.virtualViewId = -1;
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseSlider.this.accessibilityHelper.sendEventForVirtualView(this.virtualViewId, 4);
        }

        void setVirtualViewId(int i9) {
            this.virtualViewId = i9;
        }
    }

    /* loaded from: classes2.dex */
    private static class AccessibilityHelper extends ExploreByTouchHelper {
        private final BaseSlider<?, ?, ?> slider;
        Rect virtualViewBounds;

        AccessibilityHelper(BaseSlider<?, ?, ?> baseSlider) {
            super(baseSlider);
            this.virtualViewBounds = new Rect();
            this.slider = baseSlider;
        }

        @NonNull
        private String startOrEndDescription(int i9) {
            if (i9 == this.slider.getValues().size() - 1) {
                return this.slider.getContext().getString(R.string.material_slider_range_end);
            }
            return i9 == 0 ? this.slider.getContext().getString(R.string.material_slider_range_start) : "";
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected int getVirtualViewAt(float f10, float f11) {
            for (int i9 = 0; i9 < this.slider.getValues().size(); i9++) {
                this.slider.updateBoundsForVirturalViewId(i9, this.virtualViewBounds);
                if (this.virtualViewBounds.contains((int) f10, (int) f11)) {
                    return i9;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void getVisibleVirtualViews(List<Integer> list) {
            for (int i9 = 0; i9 < this.slider.getValues().size(); i9++) {
                list.add(Integer.valueOf(i9));
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected boolean onPerformActionForVirtualView(int i9, int i10, Bundle bundle) {
            if (this.slider.isEnabled()) {
                if (i10 != 4096 && i10 != 8192) {
                    if (i10 == 16908349 && bundle != null && bundle.containsKey(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE)) {
                        if (this.slider.snapThumbToValue(i9, bundle.getFloat(AccessibilityNodeInfoCompat.ACTION_ARGUMENT_PROGRESS_VALUE))) {
                            this.slider.updateHaloHotspot();
                            this.slider.postInvalidate();
                            invalidateVirtualView(i9);
                            return true;
                        }
                    }
                    return false;
                }
                float calculateStepIncrement = this.slider.calculateStepIncrement(20);
                if (i10 == 8192) {
                    calculateStepIncrement = -calculateStepIncrement;
                }
                if (this.slider.isRtl()) {
                    calculateStepIncrement = -calculateStepIncrement;
                }
                if (this.slider.snapThumbToValue(i9, MathUtils.clamp(this.slider.getValues().get(i9).floatValue() + calculateStepIncrement, this.slider.getValueFrom(), this.slider.getValueTo()))) {
                    this.slider.updateHaloHotspot();
                    this.slider.postInvalidate();
                    invalidateVirtualView(i9);
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        protected void onPopulateNodeForVirtualView(int i9, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SET_PROGRESS);
            List<Float> values = this.slider.getValues();
            float floatValue = values.get(i9).floatValue();
            float valueFrom = this.slider.getValueFrom();
            float valueTo = this.slider.getValueTo();
            if (this.slider.isEnabled()) {
                if (floatValue > valueFrom) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
                if (floatValue < valueTo) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
            }
            accessibilityNodeInfoCompat.setRangeInfo(AccessibilityNodeInfoCompat.RangeInfoCompat.obtain(1, valueFrom, valueTo, floatValue));
            accessibilityNodeInfoCompat.setClassName(SeekBar.class.getName());
            StringBuilder sb2 = new StringBuilder();
            if (this.slider.getContentDescription() != null) {
                sb2.append(this.slider.getContentDescription());
                sb2.append(",");
            }
            if (values.size() > 1) {
                sb2.append(startOrEndDescription(i9));
                sb2.append(this.slider.formatValue(floatValue));
            }
            accessibilityNodeInfoCompat.setContentDescription(sb2.toString());
            this.slider.updateBoundsForVirturalViewId(i9, this.virtualViewBounds);
            accessibilityNodeInfoCompat.setBoundsInParent(this.virtualViewBounds);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SliderState extends View.BaseSavedState {
        public static final Parcelable.Creator<SliderState> CREATOR = new Parcelable.Creator<SliderState>() { // from class: com.google.android.material.slider.BaseSlider.SliderState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public SliderState createFromParcel(@NonNull Parcel parcel) {
                return new SliderState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            @NonNull
            public SliderState[] newArray(int i9) {
                return new SliderState[i9];
            }
        };
        boolean hasFocus;
        float stepSize;
        float valueFrom;
        float valueTo;
        ArrayList<Float> values;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i9) {
            super.writeToParcel(parcel, i9);
            parcel.writeFloat(this.valueFrom);
            parcel.writeFloat(this.valueTo);
            parcel.writeList(this.values);
            parcel.writeFloat(this.stepSize);
            parcel.writeBooleanArray(new boolean[]{this.hasFocus});
        }

        SliderState(Parcelable parcelable) {
            super(parcelable);
        }

        private SliderState(@NonNull Parcel parcel) {
            super(parcel);
            this.valueFrom = parcel.readFloat();
            this.valueTo = parcel.readFloat();
            ArrayList<Float> arrayList = new ArrayList<>();
            this.values = arrayList;
            parcel.readList(arrayList, Float.class.getClassLoader());
            this.stepSize = parcel.readFloat();
            this.hasFocus = parcel.createBooleanArray()[0];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface TooltipDrawableFactory {
        TooltipDrawable createTooltipDrawable();
    }

    public BaseSlider(@NonNull Context context) {
        this(context, null);
    }

    private void attachLabelToContentView(TooltipDrawable tooltipDrawable) {
        tooltipDrawable.setRelativeToView(ViewUtils.getContentView(this));
    }

    private Float calculateIncrementForKey(int i9) {
        float calculateStepIncrement = this.isLongPress ? calculateStepIncrement(20) : calculateStepIncrement();
        if (i9 == 21) {
            if (!isRtl()) {
                calculateStepIncrement = -calculateStepIncrement;
            }
            return Float.valueOf(calculateStepIncrement);
        } else if (i9 == 22) {
            if (isRtl()) {
                calculateStepIncrement = -calculateStepIncrement;
            }
            return Float.valueOf(calculateStepIncrement);
        } else if (i9 != 69) {
            if (i9 == 70 || i9 == 81) {
                return Float.valueOf(calculateStepIncrement);
            }
            return null;
        } else {
            return Float.valueOf(-calculateStepIncrement);
        }
    }

    private float calculateStepIncrement() {
        float f10 = this.stepSize;
        if (f10 == 0.0f) {
            return 1.0f;
        }
        return f10;
    }

    private int calculateTop() {
        return this.trackTop + (this.labelBehavior == 1 ? this.labels.get(0).getIntrinsicHeight() : 0);
    }

    private ValueAnimator createLabelAnimator(boolean z10) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(getAnimatorCurrentValueOrDefault(z10 ? this.labelsOutAnimator : this.labelsInAnimator, z10 ? 0.0f : 1.0f), z10 ? 1.0f : 0.0f);
        ofFloat.setDuration(z10 ? LABEL_ANIMATION_ENTER_DURATION : LABEL_ANIMATION_EXIT_DURATION);
        ofFloat.setInterpolator(z10 ? AnimationUtils.DECELERATE_INTERPOLATOR : AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.slider.BaseSlider.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                for (TooltipDrawable tooltipDrawable : BaseSlider.this.labels) {
                    tooltipDrawable.setRevealFraction(floatValue);
                }
                ViewCompat.postInvalidateOnAnimation(BaseSlider.this);
            }
        });
        return ofFloat;
    }

    private void createLabelPool() {
        if (this.labels.size() > this.values.size()) {
            List<TooltipDrawable> subList = this.labels.subList(this.values.size(), this.labels.size());
            for (TooltipDrawable tooltipDrawable : subList) {
                if (ViewCompat.isAttachedToWindow(this)) {
                    detachLabelFromContentView(tooltipDrawable);
                }
            }
            subList.clear();
        }
        while (this.labels.size() < this.values.size()) {
            TooltipDrawable createTooltipDrawable = this.labelMaker.createTooltipDrawable();
            this.labels.add(createTooltipDrawable);
            if (ViewCompat.isAttachedToWindow(this)) {
                attachLabelToContentView(createTooltipDrawable);
            }
        }
        int i9 = this.labels.size() == 1 ? 0 : 1;
        for (TooltipDrawable tooltipDrawable2 : this.labels) {
            tooltipDrawable2.setStrokeWidth(i9);
        }
    }

    private void detachLabelFromContentView(TooltipDrawable tooltipDrawable) {
        ViewOverlayImpl contentViewOverlay = ViewUtils.getContentViewOverlay(this);
        if (contentViewOverlay != null) {
            contentViewOverlay.remove(tooltipDrawable);
            tooltipDrawable.detachView(ViewUtils.getContentView(this));
        }
    }

    private float dimenToValue(float f10) {
        if (f10 == 0.0f) {
            return 0.0f;
        }
        float f11 = (f10 - this.trackSidePadding) / this.trackWidth;
        float f12 = this.valueFrom;
        return (f11 * (f12 - this.valueTo)) + f12;
    }

    private void dispatchOnChangedFromUser(int i9) {
        for (L l10 : this.changeListeners) {
            l10.onValueChange(this, this.values.get(i9).floatValue(), true);
        }
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager == null || !accessibilityManager.isEnabled()) {
            return;
        }
        scheduleAccessibilityEventSender(i9);
    }

    private void dispatchOnChangedProgrammatically() {
        for (L l10 : this.changeListeners) {
            Iterator<Float> it = this.values.iterator();
            while (it.hasNext()) {
                l10.onValueChange(this, it.next().floatValue(), false);
            }
        }
    }

    private void drawActiveTrack(@NonNull Canvas canvas, int i9, int i10) {
        float[] activeRange = getActiveRange();
        int i11 = this.trackSidePadding;
        float f10 = i9;
        float f11 = i10;
        canvas.drawLine(i11 + (activeRange[0] * f10), f11, i11 + (activeRange[1] * f10), f11, this.activeTrackPaint);
    }

    private void drawInactiveTrack(@NonNull Canvas canvas, int i9, int i10) {
        int i11;
        float[] activeRange = getActiveRange();
        float f10 = i9;
        float f11 = this.trackSidePadding + (activeRange[1] * f10);
        if (f11 < i11 + i9) {
            float f12 = i10;
            canvas.drawLine(f11, f12, i11 + i9, f12, this.inactiveTrackPaint);
        }
        int i12 = this.trackSidePadding;
        float f13 = i12 + (activeRange[0] * f10);
        if (f13 > i12) {
            float f14 = i10;
            canvas.drawLine(i12, f14, f13, f14, this.inactiveTrackPaint);
        }
    }

    private void drawThumbs(@NonNull Canvas canvas, int i9, int i10) {
        if (!isEnabled()) {
            Iterator<Float> it = this.values.iterator();
            while (it.hasNext()) {
                canvas.drawCircle(this.trackSidePadding + (normalizeValue(it.next().floatValue()) * i9), i10, this.thumbRadius, this.thumbPaint);
            }
        }
        Iterator<Float> it2 = this.values.iterator();
        while (it2.hasNext()) {
            canvas.save();
            int normalizeValue = this.trackSidePadding + ((int) (normalizeValue(it2.next().floatValue()) * i9));
            int i11 = this.thumbRadius;
            canvas.translate(normalizeValue - i11, i10 - i11);
            this.thumbDrawable.draw(canvas);
            canvas.restore();
        }
    }

    private void ensureLabelsAdded() {
        if (this.labelBehavior == 2) {
            return;
        }
        if (!this.labelsAreAnimatedIn) {
            this.labelsAreAnimatedIn = true;
            ValueAnimator createLabelAnimator = createLabelAnimator(true);
            this.labelsInAnimator = createLabelAnimator;
            this.labelsOutAnimator = null;
            createLabelAnimator.start();
        }
        Iterator<TooltipDrawable> it = this.labels.iterator();
        for (int i9 = 0; i9 < this.values.size() && it.hasNext(); i9++) {
            if (i9 != this.focusedThumbIdx) {
                setValueForLabel(it.next(), this.values.get(i9).floatValue());
            }
        }
        if (it.hasNext()) {
            setValueForLabel(it.next(), this.values.get(this.focusedThumbIdx).floatValue());
            return;
        }
        throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", Integer.valueOf(this.labels.size()), Integer.valueOf(this.values.size())));
    }

    private void ensureLabelsRemoved() {
        if (this.labelsAreAnimatedIn) {
            this.labelsAreAnimatedIn = false;
            ValueAnimator createLabelAnimator = createLabelAnimator(false);
            this.labelsOutAnimator = createLabelAnimator;
            this.labelsInAnimator = null;
            createLabelAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.slider.BaseSlider.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    for (TooltipDrawable tooltipDrawable : BaseSlider.this.labels) {
                        ViewUtils.getContentViewOverlay(BaseSlider.this).remove(tooltipDrawable);
                    }
                }
            });
            this.labelsOutAnimator.start();
        }
    }

    private void focusThumbOnFocusGained(int i9) {
        if (i9 == 1) {
            moveFocus(Integer.MAX_VALUE);
        } else if (i9 == 2) {
            moveFocus(Integer.MIN_VALUE);
        } else if (i9 == 17) {
            moveFocusInAbsoluteDirection(Integer.MAX_VALUE);
        } else if (i9 != 66) {
        } else {
            moveFocusInAbsoluteDirection(Integer.MIN_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatValue(float f10) {
        if (hasLabelFormatter()) {
            return this.formatter.getFormattedValue(f10);
        }
        return String.format(((float) ((int) f10)) == f10 ? "%.0f" : "%.2f", Float.valueOf(f10));
    }

    private float[] getActiveRange() {
        float floatValue = ((Float) Collections.max(getValues())).floatValue();
        float floatValue2 = ((Float) Collections.min(getValues())).floatValue();
        if (this.values.size() == 1) {
            floatValue2 = this.valueFrom;
        }
        float normalizeValue = normalizeValue(floatValue2);
        float normalizeValue2 = normalizeValue(floatValue);
        return isRtl() ? new float[]{normalizeValue2, normalizeValue} : new float[]{normalizeValue, normalizeValue2};
    }

    private static float getAnimatorCurrentValueOrDefault(ValueAnimator valueAnimator, float f10) {
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return f10;
        }
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        valueAnimator.cancel();
        return floatValue;
    }

    private float getClampedValue(int i9, float f10) {
        float minSeparation = getMinSeparation();
        if (this.separationUnit == 0) {
            minSeparation = dimenToValue(minSeparation);
        }
        if (isRtl()) {
            minSeparation = -minSeparation;
        }
        int i10 = i9 + 1;
        int i11 = i9 - 1;
        return MathUtils.clamp(f10, i11 < 0 ? this.valueFrom : this.values.get(i11).floatValue() + minSeparation, i10 >= this.values.size() ? this.valueTo : this.values.get(i10).floatValue() - minSeparation);
    }

    @ColorInt
    private int getColorForState(@NonNull ColorStateList colorStateList) {
        return colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
    }

    private float getValueOfTouchPosition() {
        double snapPosition = snapPosition(this.touchPosition);
        if (isRtl()) {
            snapPosition = 1.0d - snapPosition;
        }
        float f10 = this.valueTo;
        float f11 = this.valueFrom;
        return (float) ((snapPosition * (f10 - f11)) + f11);
    }

    private float getValueOfTouchPositionAbsolute() {
        float f10 = this.touchPosition;
        if (isRtl()) {
            f10 = 1.0f - f10;
        }
        float f11 = this.valueTo;
        float f12 = this.valueFrom;
        return (f10 * (f11 - f12)) + f12;
    }

    private void invalidateTrack() {
        this.inactiveTrackPaint.setStrokeWidth(this.trackHeight);
        this.activeTrackPaint.setStrokeWidth(this.trackHeight);
        this.inactiveTicksPaint.setStrokeWidth(this.trackHeight / 2.0f);
        this.activeTicksPaint.setStrokeWidth(this.trackHeight / 2.0f);
    }

    private boolean isInVerticalScrollingContainer() {
        ViewParent parent = getParent();
        while (true) {
            boolean z10 = false;
            if (!(parent instanceof ViewGroup)) {
                return false;
            }
            ViewGroup viewGroup = (ViewGroup) parent;
            if (((viewGroup.canScrollVertically(1) || viewGroup.canScrollVertically(-1)) ? true : true) && viewGroup.shouldDelayChildPressedState()) {
                return true;
            }
            parent = parent.getParent();
        }
    }

    private boolean isMultipleOfStepSize(float f10) {
        double doubleValue = new BigDecimal(Float.toString(f10)).divide(new BigDecimal(Float.toString(this.stepSize)), MathContext.DECIMAL64).doubleValue();
        return Math.abs(((double) Math.round(doubleValue)) - doubleValue) < THRESHOLD;
    }

    private void loadResources(@NonNull Resources resources) {
        this.widgetHeight = resources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
        this.minTrackSidePadding = dimensionPixelOffset;
        this.trackSidePadding = dimensionPixelOffset;
        this.defaultThumbRadius = resources.getDimensionPixelSize(R.dimen.mtrl_slider_thumb_radius);
        this.trackTop = resources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_top);
        this.labelPadding = resources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
    }

    private void maybeCalculateTicksCoordinates() {
        if (this.stepSize <= 0.0f) {
            return;
        }
        validateConfigurationIfDirty();
        int min = Math.min((int) (((this.valueTo - this.valueFrom) / this.stepSize) + 1.0f), (this.trackWidth / (this.trackHeight * 2)) + 1);
        float[] fArr = this.ticksCoordinates;
        if (fArr == null || fArr.length != min * 2) {
            this.ticksCoordinates = new float[min * 2];
        }
        float f10 = this.trackWidth / (min - 1);
        for (int i9 = 0; i9 < min * 2; i9 += 2) {
            float[] fArr2 = this.ticksCoordinates;
            fArr2[i9] = this.trackSidePadding + ((i9 / 2) * f10);
            fArr2[i9 + 1] = calculateTop();
        }
    }

    private void maybeDrawHalo(@NonNull Canvas canvas, int i9, int i10) {
        if (shouldDrawCompatHalo()) {
            int normalizeValue = (int) (this.trackSidePadding + (normalizeValue(this.values.get(this.focusedThumbIdx).floatValue()) * i9));
            if (Build.VERSION.SDK_INT < 28) {
                int i11 = this.haloRadius;
                canvas.clipRect(normalizeValue - i11, i10 - i11, normalizeValue + i11, i11 + i10, Region.Op.UNION);
            }
            canvas.drawCircle(normalizeValue, i10, this.haloRadius, this.haloPaint);
        }
    }

    private void maybeDrawTicks(@NonNull Canvas canvas) {
        if (!this.tickVisible || this.stepSize <= 0.0f) {
            return;
        }
        float[] activeRange = getActiveRange();
        int pivotIndex = pivotIndex(this.ticksCoordinates, activeRange[0]);
        int pivotIndex2 = pivotIndex(this.ticksCoordinates, activeRange[1]);
        int i9 = pivotIndex * 2;
        canvas.drawPoints(this.ticksCoordinates, 0, i9, this.inactiveTicksPaint);
        int i10 = pivotIndex2 * 2;
        canvas.drawPoints(this.ticksCoordinates, i9, i10 - i9, this.activeTicksPaint);
        float[] fArr = this.ticksCoordinates;
        canvas.drawPoints(fArr, i10, fArr.length - i10, this.inactiveTicksPaint);
    }

    private void maybeIncreaseTrackSidePadding() {
        this.trackSidePadding = this.minTrackSidePadding + Math.max(this.thumbRadius - this.defaultThumbRadius, 0);
        if (ViewCompat.isLaidOut(this)) {
            updateTrackWidth(getWidth());
        }
    }

    private boolean moveFocus(int i9) {
        int i10 = this.focusedThumbIdx;
        int clamp = (int) MathUtils.clamp(i10 + i9, 0L, this.values.size() - 1);
        this.focusedThumbIdx = clamp;
        if (clamp == i10) {
            return false;
        }
        if (this.activeThumbIdx != -1) {
            this.activeThumbIdx = clamp;
        }
        updateHaloHotspot();
        postInvalidate();
        return true;
    }

    private boolean moveFocusInAbsoluteDirection(int i9) {
        if (isRtl()) {
            i9 = i9 == Integer.MIN_VALUE ? Integer.MAX_VALUE : -i9;
        }
        return moveFocus(i9);
    }

    private float normalizeValue(float f10) {
        float f11 = this.valueFrom;
        float f12 = (f10 - f11) / (this.valueTo - f11);
        return isRtl() ? 1.0f - f12 : f12;
    }

    private Boolean onKeyDownNoActiveThumb(int i9, @NonNull KeyEvent keyEvent) {
        if (i9 != 61) {
            if (i9 != 66) {
                if (i9 != 81) {
                    if (i9 == 69) {
                        moveFocus(-1);
                        return Boolean.TRUE;
                    } else if (i9 != 70) {
                        switch (i9) {
                            case 21:
                                moveFocusInAbsoluteDirection(-1);
                                return Boolean.TRUE;
                            case 22:
                                moveFocusInAbsoluteDirection(1);
                                return Boolean.TRUE;
                            case 23:
                                break;
                            default:
                                return null;
                        }
                    }
                }
                moveFocus(1);
                return Boolean.TRUE;
            }
            this.activeThumbIdx = this.focusedThumbIdx;
            postInvalidate();
            return Boolean.TRUE;
        } else if (keyEvent.hasNoModifiers()) {
            return Boolean.valueOf(moveFocus(1));
        } else {
            if (keyEvent.isShiftPressed()) {
                return Boolean.valueOf(moveFocus(-1));
            }
            return Boolean.FALSE;
        }
    }

    private void onStartTrackingTouch() {
        for (T t10 : this.touchListeners) {
            t10.onStartTrackingTouch(this);
        }
    }

    private void onStopTrackingTouch() {
        for (T t10 : this.touchListeners) {
            t10.onStopTrackingTouch(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static TooltipDrawable parseLabelDrawable(@NonNull Context context, @NonNull TypedArray typedArray) {
        return TooltipDrawable.createFromAttributes(context, null, 0, typedArray.getResourceId(R.styleable.Slider_labelStyle, R.style.Widget_MaterialComponents_Tooltip));
    }

    private static int pivotIndex(float[] fArr, float f10) {
        return Math.round(f10 * ((fArr.length / 2) - 1));
    }

    private void processAttributes(Context context, AttributeSet attributeSet, int i9) {
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.Slider, i9, DEF_STYLE_RES, new int[0]);
        this.valueFrom = obtainStyledAttributes.getFloat(R.styleable.Slider_android_valueFrom, 0.0f);
        this.valueTo = obtainStyledAttributes.getFloat(R.styleable.Slider_android_valueTo, 1.0f);
        setValues(Float.valueOf(this.valueFrom));
        this.stepSize = obtainStyledAttributes.getFloat(R.styleable.Slider_android_stepSize, 0.0f);
        int i10 = R.styleable.Slider_trackColor;
        boolean hasValue = obtainStyledAttributes.hasValue(i10);
        int i11 = hasValue ? i10 : R.styleable.Slider_trackColorInactive;
        if (!hasValue) {
            i10 = R.styleable.Slider_trackColorActive;
        }
        ColorStateList colorStateList = MaterialResources.getColorStateList(context, obtainStyledAttributes, i11);
        if (colorStateList == null) {
            colorStateList = AppCompatResources.getColorStateList(context, R.color.material_slider_inactive_track_color);
        }
        setTrackInactiveTintList(colorStateList);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(context, obtainStyledAttributes, i10);
        if (colorStateList2 == null) {
            colorStateList2 = AppCompatResources.getColorStateList(context, R.color.material_slider_active_track_color);
        }
        setTrackActiveTintList(colorStateList2);
        this.thumbDrawable.setFillColor(MaterialResources.getColorStateList(context, obtainStyledAttributes, R.styleable.Slider_thumbColor));
        int i12 = R.styleable.Slider_thumbStrokeColor;
        if (obtainStyledAttributes.hasValue(i12)) {
            setThumbStrokeColor(MaterialResources.getColorStateList(context, obtainStyledAttributes, i12));
        }
        setThumbStrokeWidth(obtainStyledAttributes.getDimension(R.styleable.Slider_thumbStrokeWidth, 0.0f));
        ColorStateList colorStateList3 = MaterialResources.getColorStateList(context, obtainStyledAttributes, R.styleable.Slider_haloColor);
        if (colorStateList3 == null) {
            colorStateList3 = AppCompatResources.getColorStateList(context, R.color.material_slider_halo_color);
        }
        setHaloTintList(colorStateList3);
        this.tickVisible = obtainStyledAttributes.getBoolean(R.styleable.Slider_tickVisible, true);
        int i13 = R.styleable.Slider_tickColor;
        boolean hasValue2 = obtainStyledAttributes.hasValue(i13);
        int i14 = hasValue2 ? i13 : R.styleable.Slider_tickColorInactive;
        if (!hasValue2) {
            i13 = R.styleable.Slider_tickColorActive;
        }
        ColorStateList colorStateList4 = MaterialResources.getColorStateList(context, obtainStyledAttributes, i14);
        if (colorStateList4 == null) {
            colorStateList4 = AppCompatResources.getColorStateList(context, R.color.material_slider_inactive_tick_marks_color);
        }
        setTickInactiveTintList(colorStateList4);
        ColorStateList colorStateList5 = MaterialResources.getColorStateList(context, obtainStyledAttributes, i13);
        if (colorStateList5 == null) {
            colorStateList5 = AppCompatResources.getColorStateList(context, R.color.material_slider_active_tick_marks_color);
        }
        setTickActiveTintList(colorStateList5);
        setThumbRadius(obtainStyledAttributes.getDimensionPixelSize(R.styleable.Slider_thumbRadius, 0));
        setHaloRadius(obtainStyledAttributes.getDimensionPixelSize(R.styleable.Slider_haloRadius, 0));
        setThumbElevation(obtainStyledAttributes.getDimension(R.styleable.Slider_thumbElevation, 0.0f));
        setTrackHeight(obtainStyledAttributes.getDimensionPixelSize(R.styleable.Slider_trackHeight, 0));
        this.labelBehavior = obtainStyledAttributes.getInt(R.styleable.Slider_labelBehavior, 0);
        if (!obtainStyledAttributes.getBoolean(R.styleable.Slider_android_enabled, true)) {
            setEnabled(false);
        }
        obtainStyledAttributes.recycle();
    }

    private void scheduleAccessibilityEventSender(int i9) {
        BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender = this.accessibilityEventSender;
        if (accessibilityEventSender == null) {
            this.accessibilityEventSender = new AccessibilityEventSender();
        } else {
            removeCallbacks(accessibilityEventSender);
        }
        this.accessibilityEventSender.setVirtualViewId(i9);
        postDelayed(this.accessibilityEventSender, 200L);
    }

    private void setValueForLabel(TooltipDrawable tooltipDrawable, float f10) {
        tooltipDrawable.setText(formatValue(f10));
        int normalizeValue = (this.trackSidePadding + ((int) (normalizeValue(f10) * this.trackWidth))) - (tooltipDrawable.getIntrinsicWidth() / 2);
        int calculateTop = calculateTop() - (this.labelPadding + this.thumbRadius);
        tooltipDrawable.setBounds(normalizeValue, calculateTop - tooltipDrawable.getIntrinsicHeight(), tooltipDrawable.getIntrinsicWidth() + normalizeValue, calculateTop);
        Rect rect = new Rect(tooltipDrawable.getBounds());
        DescendantOffsetUtils.offsetDescendantRect(ViewUtils.getContentView(this), this, rect);
        tooltipDrawable.setBounds(rect);
        ViewUtils.getContentViewOverlay(this).add(tooltipDrawable);
    }

    private void setValuesInternal(@NonNull ArrayList<Float> arrayList) {
        if (!arrayList.isEmpty()) {
            Collections.sort(arrayList);
            if (this.values.size() == arrayList.size() && this.values.equals(arrayList)) {
                return;
            }
            this.values = arrayList;
            this.dirtyConfig = true;
            this.focusedThumbIdx = 0;
            updateHaloHotspot();
            createLabelPool();
            dispatchOnChangedProgrammatically();
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException("At least one value must be set");
    }

    private boolean shouldDrawCompatHalo() {
        return this.forceDrawCompatHalo || !(getBackground() instanceof RippleDrawable);
    }

    private boolean snapActiveThumbToValue(float f10) {
        return snapThumbToValue(this.activeThumbIdx, f10);
    }

    private double snapPosition(float f10) {
        float f11 = this.stepSize;
        if (f11 > 0.0f) {
            int i9 = (int) ((this.valueTo - this.valueFrom) / f11);
            return Math.round(f10 * i9) / i9;
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean snapThumbToValue(int i9, float f10) {
        this.focusedThumbIdx = i9;
        if (Math.abs(f10 - this.values.get(i9).floatValue()) < THRESHOLD) {
            return false;
        }
        this.values.set(i9, Float.valueOf(getClampedValue(i9, f10)));
        dispatchOnChangedFromUser(i9);
        return true;
    }

    private boolean snapTouchPosition() {
        return snapActiveThumbToValue(getValueOfTouchPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHaloHotspot() {
        if (shouldDrawCompatHalo() || getMeasuredWidth() <= 0) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof RippleDrawable) {
            int normalizeValue = (int) ((normalizeValue(this.values.get(this.focusedThumbIdx).floatValue()) * this.trackWidth) + this.trackSidePadding);
            int calculateTop = calculateTop();
            int i9 = this.haloRadius;
            DrawableCompat.setHotspotBounds(background, normalizeValue - i9, calculateTop - i9, normalizeValue + i9, calculateTop + i9);
        }
    }

    private void updateTrackWidth(int i9) {
        this.trackWidth = Math.max(i9 - (this.trackSidePadding * 2), 0);
        maybeCalculateTicksCoordinates();
    }

    private void validateConfigurationIfDirty() {
        if (this.dirtyConfig) {
            validateValueFrom();
            validateValueTo();
            validateStepSize();
            validateValues();
            validateMinSeparation();
            warnAboutFloatingPointError();
            this.dirtyConfig = false;
        }
    }

    private void validateMinSeparation() {
        float minSeparation = getMinSeparation();
        if (minSeparation >= 0.0f) {
            float f10 = this.stepSize;
            if (f10 <= 0.0f || minSeparation <= 0.0f) {
                return;
            }
            if (this.separationUnit == 1) {
                if (minSeparation < f10 || !isMultipleOfStepSize(minSeparation)) {
                    throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE, Float.valueOf(minSeparation), Float.valueOf(this.stepSize), Float.valueOf(this.stepSize)));
                }
                return;
            }
            throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_MIN_SEPARATION_STEP_SIZE_UNIT, Float.valueOf(minSeparation), Float.valueOf(this.stepSize)));
        }
        throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_MIN_SEPARATION, Float.valueOf(minSeparation)));
    }

    private void validateStepSize() {
        if (this.stepSize > 0.0f && !valueLandsOnTick(this.valueTo)) {
            throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_STEP_SIZE, Float.valueOf(this.stepSize), Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)));
        }
    }

    private void validateValueFrom() {
        if (this.valueFrom >= this.valueTo) {
            throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_VALUE_FROM, Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)));
        }
    }

    private void validateValueTo() {
        if (this.valueTo <= this.valueFrom) {
            throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_VALUE_TO, Float.valueOf(this.valueTo), Float.valueOf(this.valueFrom)));
        }
    }

    private void validateValues() {
        Iterator<Float> it = this.values.iterator();
        while (it.hasNext()) {
            Float next = it.next();
            if (next.floatValue() >= this.valueFrom && next.floatValue() <= this.valueTo) {
                if (this.stepSize > 0.0f && !valueLandsOnTick(next.floatValue())) {
                    throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_DISCRETE_VALUE, next, Float.valueOf(this.valueFrom), Float.valueOf(this.stepSize), Float.valueOf(this.stepSize)));
                }
            } else {
                throw new IllegalStateException(String.format(EXCEPTION_ILLEGAL_VALUE, next, Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)));
            }
        }
    }

    private boolean valueLandsOnTick(float f10) {
        return isMultipleOfStepSize(f10 - this.valueFrom);
    }

    private float valueToX(float f10) {
        return (normalizeValue(f10) * this.trackWidth) + this.trackSidePadding;
    }

    private void warnAboutFloatingPointError() {
        float f10 = this.stepSize;
        if (f10 == 0.0f) {
            return;
        }
        if (((int) f10) != f10) {
            Log.w(TAG, String.format(WARNING_FLOATING_POINT_ERROR, "stepSize", Float.valueOf(f10)));
        }
        float f11 = this.valueFrom;
        if (((int) f11) != f11) {
            Log.w(TAG, String.format(WARNING_FLOATING_POINT_ERROR, "valueFrom", Float.valueOf(f11)));
        }
        float f12 = this.valueTo;
        if (((int) f12) != f12) {
            Log.w(TAG, String.format(WARNING_FLOATING_POINT_ERROR, "valueTo", Float.valueOf(f12)));
        }
    }

    public void addOnChangeListener(@NonNull L l10) {
        this.changeListeners.add(l10);
    }

    public void addOnSliderTouchListener(@NonNull T t10) {
        this.touchListeners.add(t10);
    }

    public void clearOnChangeListeners() {
        this.changeListeners.clear();
    }

    public void clearOnSliderTouchListeners() {
        this.touchListeners.clear();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return this.accessibilityHelper.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.inactiveTrackPaint.setColor(getColorForState(this.trackColorInactive));
        this.activeTrackPaint.setColor(getColorForState(this.trackColorActive));
        this.inactiveTicksPaint.setColor(getColorForState(this.tickColorInactive));
        this.activeTicksPaint.setColor(getColorForState(this.tickColorActive));
        for (TooltipDrawable tooltipDrawable : this.labels) {
            if (tooltipDrawable.isStateful()) {
                tooltipDrawable.setState(getDrawableState());
            }
        }
        if (this.thumbDrawable.isStateful()) {
            this.thumbDrawable.setState(getDrawableState());
        }
        this.haloPaint.setColor(getColorForState(this.haloColor));
        this.haloPaint.setAlpha(63);
    }

    @VisibleForTesting
    void forceDrawCompatHalo(boolean z10) {
        this.forceDrawCompatHalo = z10;
    }

    @Override // android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    @VisibleForTesting
    final int getAccessibilityFocusedVirtualViewId() {
        return this.accessibilityHelper.getAccessibilityFocusedVirtualViewId();
    }

    public int getActiveThumbIndex() {
        return this.activeThumbIdx;
    }

    public int getFocusedThumbIndex() {
        return this.focusedThumbIdx;
    }

    @Dimension
    public int getHaloRadius() {
        return this.haloRadius;
    }

    @NonNull
    public ColorStateList getHaloTintList() {
        return this.haloColor;
    }

    public int getLabelBehavior() {
        return this.labelBehavior;
    }

    protected float getMinSeparation() {
        return 0.0f;
    }

    public float getStepSize() {
        return this.stepSize;
    }

    public float getThumbElevation() {
        return this.thumbDrawable.getElevation();
    }

    @Dimension
    public int getThumbRadius() {
        return this.thumbRadius;
    }

    public ColorStateList getThumbStrokeColor() {
        return this.thumbDrawable.getStrokeColor();
    }

    public float getThumbStrokeWidth() {
        return this.thumbDrawable.getStrokeWidth();
    }

    @NonNull
    public ColorStateList getThumbTintList() {
        return this.thumbDrawable.getFillColor();
    }

    @NonNull
    public ColorStateList getTickActiveTintList() {
        return this.tickColorActive;
    }

    @NonNull
    public ColorStateList getTickInactiveTintList() {
        return this.tickColorInactive;
    }

    @NonNull
    public ColorStateList getTickTintList() {
        if (this.tickColorInactive.equals(this.tickColorActive)) {
            return this.tickColorActive;
        }
        throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
    }

    @NonNull
    public ColorStateList getTrackActiveTintList() {
        return this.trackColorActive;
    }

    @Dimension
    public int getTrackHeight() {
        return this.trackHeight;
    }

    @NonNull
    public ColorStateList getTrackInactiveTintList() {
        return this.trackColorInactive;
    }

    @Dimension
    public int getTrackSidePadding() {
        return this.trackSidePadding;
    }

    @NonNull
    public ColorStateList getTrackTintList() {
        if (this.trackColorInactive.equals(this.trackColorActive)) {
            return this.trackColorActive;
        }
        throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
    }

    @Dimension
    public int getTrackWidth() {
        return this.trackWidth;
    }

    public float getValueFrom() {
        return this.valueFrom;
    }

    public float getValueTo() {
        return this.valueTo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<Float> getValues() {
        return new ArrayList(this.values);
    }

    public boolean hasLabelFormatter() {
        return this.formatter != null;
    }

    final boolean isRtl() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    public boolean isTickVisible() {
        return this.tickVisible;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (TooltipDrawable tooltipDrawable : this.labels) {
            attachLabelToContentView(tooltipDrawable);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender = this.accessibilityEventSender;
        if (accessibilityEventSender != null) {
            removeCallbacks(accessibilityEventSender);
        }
        this.labelsAreAnimatedIn = false;
        for (TooltipDrawable tooltipDrawable : this.labels) {
            detachLabelFromContentView(tooltipDrawable);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(@NonNull Canvas canvas) {
        if (this.dirtyConfig) {
            validateConfigurationIfDirty();
            maybeCalculateTicksCoordinates();
        }
        super.onDraw(canvas);
        int calculateTop = calculateTop();
        drawInactiveTrack(canvas, this.trackWidth, calculateTop);
        if (((Float) Collections.max(getValues())).floatValue() > this.valueFrom) {
            drawActiveTrack(canvas, this.trackWidth, calculateTop);
        }
        maybeDrawTicks(canvas);
        if ((this.thumbIsPressed || isFocused()) && isEnabled()) {
            maybeDrawHalo(canvas, this.trackWidth, calculateTop);
            if (this.activeThumbIdx != -1) {
                ensureLabelsAdded();
            }
        }
        drawThumbs(canvas, this.trackWidth, calculateTop);
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z10, int i9, @Nullable Rect rect) {
        super.onFocusChanged(z10, i9, rect);
        if (!z10) {
            this.activeThumbIdx = -1;
            ensureLabelsRemoved();
            this.accessibilityHelper.clearKeyboardFocusForVirtualView(this.focusedThumbIdx);
            return;
        }
        focusThumbOnFocusGained(i9);
        this.accessibilityHelper.requestKeyboardFocusForVirtualView(this.focusedThumbIdx);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i9, @NonNull KeyEvent keyEvent) {
        if (!isEnabled()) {
            return super.onKeyDown(i9, keyEvent);
        }
        if (this.values.size() == 1) {
            this.activeThumbIdx = 0;
        }
        if (this.activeThumbIdx == -1) {
            Boolean onKeyDownNoActiveThumb = onKeyDownNoActiveThumb(i9, keyEvent);
            return onKeyDownNoActiveThumb != null ? onKeyDownNoActiveThumb.booleanValue() : super.onKeyDown(i9, keyEvent);
        }
        this.isLongPress |= keyEvent.isLongPress();
        Float calculateIncrementForKey = calculateIncrementForKey(i9);
        if (calculateIncrementForKey != null) {
            if (snapActiveThumbToValue(this.values.get(this.activeThumbIdx).floatValue() + calculateIncrementForKey.floatValue())) {
                updateHaloHotspot();
                postInvalidate();
            }
            return true;
        }
        if (i9 != 23) {
            if (i9 == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return moveFocus(1);
                }
                if (keyEvent.isShiftPressed()) {
                    return moveFocus(-1);
                }
                return false;
            } else if (i9 != 66) {
                return super.onKeyDown(i9, keyEvent);
            }
        }
        this.activeThumbIdx = -1;
        ensureLabelsRemoved();
        postInvalidate();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i9, @NonNull KeyEvent keyEvent) {
        this.isLongPress = false;
        return super.onKeyUp(i9, keyEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec(this.widgetHeight + (this.labelBehavior == 1 ? this.labels.get(0).getIntrinsicHeight() : 0), BasicMeasure.EXACTLY));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SliderState sliderState = (SliderState) parcelable;
        super.onRestoreInstanceState(sliderState.getSuperState());
        this.valueFrom = sliderState.valueFrom;
        this.valueTo = sliderState.valueTo;
        setValuesInternal(sliderState.values);
        this.stepSize = sliderState.stepSize;
        if (sliderState.hasFocus) {
            requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SliderState sliderState = new SliderState(super.onSaveInstanceState());
        sliderState.valueFrom = this.valueFrom;
        sliderState.valueTo = this.valueTo;
        sliderState.values = new ArrayList<>(this.values);
        sliderState.stepSize = this.stepSize;
        sliderState.hasFocus = hasFocus();
        return sliderState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        updateTrackWidth(i9);
        updateHaloHotspot();
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (isEnabled()) {
            float x10 = motionEvent.getX();
            float f10 = (x10 - this.trackSidePadding) / this.trackWidth;
            this.touchPosition = f10;
            float max = Math.max(0.0f, f10);
            this.touchPosition = max;
            this.touchPosition = Math.min(1.0f, max);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.touchDownX = x10;
                if (!isInVerticalScrollingContainer()) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    if (pickActiveThumb()) {
                        requestFocus();
                        this.thumbIsPressed = true;
                        snapTouchPosition();
                        updateHaloHotspot();
                        invalidate();
                        onStartTrackingTouch();
                    }
                }
            } else if (actionMasked == 1) {
                this.thumbIsPressed = false;
                MotionEvent motionEvent2 = this.lastEvent;
                if (motionEvent2 != null && motionEvent2.getActionMasked() == 0 && Math.abs(this.lastEvent.getX() - motionEvent.getX()) <= this.scaledTouchSlop && Math.abs(this.lastEvent.getY() - motionEvent.getY()) <= this.scaledTouchSlop && pickActiveThumb()) {
                    onStartTrackingTouch();
                }
                if (this.activeThumbIdx != -1) {
                    snapTouchPosition();
                    this.activeThumbIdx = -1;
                    onStopTrackingTouch();
                }
                ensureLabelsRemoved();
                invalidate();
            } else if (actionMasked == 2) {
                if (!this.thumbIsPressed) {
                    if (isInVerticalScrollingContainer() && Math.abs(x10 - this.touchDownX) < this.scaledTouchSlop) {
                        return false;
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                    onStartTrackingTouch();
                }
                if (pickActiveThumb()) {
                    this.thumbIsPressed = true;
                    snapTouchPosition();
                    updateHaloHotspot();
                    invalidate();
                }
            }
            setPressed(this.thumbIsPressed);
            this.lastEvent = MotionEvent.obtain(motionEvent);
            return true;
        }
        return false;
    }

    protected boolean pickActiveThumb() {
        if (this.activeThumbIdx != -1) {
            return true;
        }
        float valueOfTouchPositionAbsolute = getValueOfTouchPositionAbsolute();
        float valueToX = valueToX(valueOfTouchPositionAbsolute);
        this.activeThumbIdx = 0;
        float abs = Math.abs(this.values.get(0).floatValue() - valueOfTouchPositionAbsolute);
        for (int i9 = 1; i9 < this.values.size(); i9++) {
            float abs2 = Math.abs(this.values.get(i9).floatValue() - valueOfTouchPositionAbsolute);
            float valueToX2 = valueToX(this.values.get(i9).floatValue());
            if (Float.compare(abs2, abs) > 1) {
                break;
            }
            boolean z10 = !isRtl() ? valueToX2 - valueToX >= 0.0f : valueToX2 - valueToX <= 0.0f;
            if (Float.compare(abs2, abs) < 0) {
                this.activeThumbIdx = i9;
            } else {
                if (Float.compare(abs2, abs) != 0) {
                    continue;
                } else if (Math.abs(valueToX2 - valueToX) < this.scaledTouchSlop) {
                    this.activeThumbIdx = -1;
                    return false;
                } else if (z10) {
                    this.activeThumbIdx = i9;
                }
            }
            abs = abs2;
        }
        return this.activeThumbIdx != -1;
    }

    public void removeOnChangeListener(@NonNull L l10) {
        this.changeListeners.remove(l10);
    }

    public void removeOnSliderTouchListener(@NonNull T t10) {
        this.touchListeners.remove(t10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setActiveThumbIndex(int i9) {
        this.activeThumbIdx = i9;
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        setLayerType(z10 ? 0 : 2, null);
    }

    public void setFocusedThumbIndex(int i9) {
        if (i9 >= 0 && i9 < this.values.size()) {
            this.focusedThumbIdx = i9;
            this.accessibilityHelper.requestKeyboardFocusForVirtualView(i9);
            postInvalidate();
            return;
        }
        throw new IllegalArgumentException("index out of range");
    }

    public void setHaloRadius(@IntRange(from = 0) @Dimension int i9) {
        if (i9 == this.haloRadius) {
            return;
        }
        this.haloRadius = i9;
        Drawable background = getBackground();
        if (!shouldDrawCompatHalo() && (background instanceof RippleDrawable)) {
            DrawableUtils.setRippleDrawableRadius((RippleDrawable) background, this.haloRadius);
        } else {
            postInvalidate();
        }
    }

    public void setHaloRadiusResource(@DimenRes int i9) {
        setHaloRadius(getResources().getDimensionPixelSize(i9));
    }

    public void setHaloTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.haloColor)) {
            return;
        }
        this.haloColor = colorStateList;
        Drawable background = getBackground();
        if (!shouldDrawCompatHalo() && (background instanceof RippleDrawable)) {
            ((RippleDrawable) background).setColor(colorStateList);
            return;
        }
        this.haloPaint.setColor(getColorForState(colorStateList));
        this.haloPaint.setAlpha(63);
        invalidate();
    }

    public void setLabelBehavior(int i9) {
        if (this.labelBehavior != i9) {
            this.labelBehavior = i9;
            requestLayout();
        }
    }

    public void setLabelFormatter(@Nullable LabelFormatter labelFormatter) {
        this.formatter = labelFormatter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSeparationUnit(int i9) {
        this.separationUnit = i9;
        this.dirtyConfig = true;
        postInvalidate();
    }

    public void setStepSize(float f10) {
        if (f10 >= 0.0f) {
            if (this.stepSize != f10) {
                this.stepSize = f10;
                this.dirtyConfig = true;
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException(String.format(EXCEPTION_ILLEGAL_STEP_SIZE, Float.valueOf(f10), Float.valueOf(this.valueFrom), Float.valueOf(this.valueTo)));
    }

    public void setThumbElevation(float f10) {
        this.thumbDrawable.setElevation(f10);
    }

    public void setThumbElevationResource(@DimenRes int i9) {
        setThumbElevation(getResources().getDimension(i9));
    }

    public void setThumbRadius(@IntRange(from = 0) @Dimension int i9) {
        if (i9 == this.thumbRadius) {
            return;
        }
        this.thumbRadius = i9;
        maybeIncreaseTrackSidePadding();
        this.thumbDrawable.setShapeAppearanceModel(ShapeAppearanceModel.builder().setAllCorners(0, this.thumbRadius).build());
        MaterialShapeDrawable materialShapeDrawable = this.thumbDrawable;
        int i10 = this.thumbRadius;
        materialShapeDrawable.setBounds(0, 0, i10 * 2, i10 * 2);
        postInvalidate();
    }

    public void setThumbRadiusResource(@DimenRes int i9) {
        setThumbRadius(getResources().getDimensionPixelSize(i9));
    }

    public void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        this.thumbDrawable.setStrokeColor(colorStateList);
        postInvalidate();
    }

    public void setThumbStrokeColorResource(@ColorRes int i9) {
        if (i9 != 0) {
            setThumbStrokeColor(AppCompatResources.getColorStateList(getContext(), i9));
        }
    }

    public void setThumbStrokeWidth(float f10) {
        this.thumbDrawable.setStrokeWidth(f10);
        postInvalidate();
    }

    public void setThumbStrokeWidthResource(@DimenRes int i9) {
        if (i9 != 0) {
            setThumbStrokeWidth(getResources().getDimension(i9));
        }
    }

    public void setThumbTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.thumbDrawable.getFillColor())) {
            return;
        }
        this.thumbDrawable.setFillColor(colorStateList);
        invalidate();
    }

    public void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.tickColorActive)) {
            return;
        }
        this.tickColorActive = colorStateList;
        this.activeTicksPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.tickColorInactive)) {
            return;
        }
        this.tickColorInactive = colorStateList;
        this.inactiveTicksPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public void setTickTintList(@NonNull ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisible(boolean z10) {
        if (this.tickVisible != z10) {
            this.tickVisible = z10;
            postInvalidate();
        }
    }

    public void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.trackColorActive)) {
            return;
        }
        this.trackColorActive = colorStateList;
        this.activeTrackPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public void setTrackHeight(@IntRange(from = 0) @Dimension int i9) {
        if (this.trackHeight != i9) {
            this.trackHeight = i9;
            invalidateTrack();
            postInvalidate();
        }
    }

    public void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.equals(this.trackColorInactive)) {
            return;
        }
        this.trackColorInactive = colorStateList;
        this.inactiveTrackPaint.setColor(getColorForState(colorStateList));
        invalidate();
    }

    public void setTrackTintList(@NonNull ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValueFrom(float f10) {
        this.valueFrom = f10;
        this.dirtyConfig = true;
        postInvalidate();
    }

    public void setValueTo(float f10) {
        this.valueTo = f10;
        this.dirtyConfig = true;
        postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(@NonNull Float... fArr) {
        ArrayList<Float> arrayList = new ArrayList<>();
        Collections.addAll(arrayList, fArr);
        setValuesInternal(arrayList);
    }

    void updateBoundsForVirturalViewId(int i9, Rect rect) {
        int normalizeValue = this.trackSidePadding + ((int) (normalizeValue(getValues().get(i9).floatValue()) * this.trackWidth));
        int calculateTop = calculateTop();
        int i10 = this.thumbRadius;
        rect.set(normalizeValue - i10, calculateTop - i10, normalizeValue + i10, calculateTop + i10);
    }

    public BaseSlider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float calculateStepIncrement(int i9) {
        float f10;
        float f11;
        float calculateStepIncrement = calculateStepIncrement();
        return (this.valueTo - this.valueFrom) / calculateStepIncrement <= i9 ? calculateStepIncrement : Math.round(f10 / f11) * calculateStepIncrement;
    }

    public BaseSlider(@NonNull Context context, @Nullable final AttributeSet attributeSet, final int i9) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i9, DEF_STYLE_RES), attributeSet, i9);
        this.labels = new ArrayList();
        this.changeListeners = new ArrayList();
        this.touchListeners = new ArrayList();
        this.labelsAreAnimatedIn = false;
        this.thumbIsPressed = false;
        this.values = new ArrayList<>();
        this.activeThumbIdx = -1;
        this.focusedThumbIdx = -1;
        this.stepSize = 0.0f;
        this.tickVisible = true;
        this.isLongPress = false;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.thumbDrawable = materialShapeDrawable;
        this.separationUnit = 0;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.inactiveTrackPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        Paint paint2 = new Paint();
        this.activeTrackPaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeCap(Paint.Cap.ROUND);
        Paint paint3 = new Paint(1);
        this.thumbPaint = paint3;
        paint3.setStyle(Paint.Style.FILL);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        Paint paint4 = new Paint(1);
        this.haloPaint = paint4;
        paint4.setStyle(Paint.Style.FILL);
        Paint paint5 = new Paint();
        this.inactiveTicksPaint = paint5;
        paint5.setStyle(Paint.Style.STROKE);
        paint5.setStrokeCap(Paint.Cap.ROUND);
        Paint paint6 = new Paint();
        this.activeTicksPaint = paint6;
        paint6.setStyle(Paint.Style.STROKE);
        paint6.setStrokeCap(Paint.Cap.ROUND);
        loadResources(context2.getResources());
        this.labelMaker = new TooltipDrawableFactory() { // from class: com.google.android.material.slider.BaseSlider.1
            @Override // com.google.android.material.slider.BaseSlider.TooltipDrawableFactory
            public TooltipDrawable createTooltipDrawable() {
                TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(BaseSlider.this.getContext(), attributeSet, R.styleable.Slider, i9, BaseSlider.DEF_STYLE_RES, new int[0]);
                TooltipDrawable parseLabelDrawable = BaseSlider.parseLabelDrawable(BaseSlider.this.getContext(), obtainStyledAttributes);
                obtainStyledAttributes.recycle();
                return parseLabelDrawable;
            }
        };
        processAttributes(context2, attributeSet, i9);
        setFocusable(true);
        setClickable(true);
        materialShapeDrawable.setShadowCompatibilityMode(2);
        this.scaledTouchSlop = ViewConfiguration.get(context2).getScaledTouchSlop();
        AccessibilityHelper accessibilityHelper = new AccessibilityHelper(this);
        this.accessibilityHelper = accessibilityHelper;
        ViewCompat.setAccessibilityDelegate(this, accessibilityHelper);
        this.accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setValues(@NonNull List<Float> list) {
        setValuesInternal(new ArrayList<>(list));
    }
}
