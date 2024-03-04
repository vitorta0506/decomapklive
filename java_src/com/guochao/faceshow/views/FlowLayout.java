package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0014J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0014J0\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007H\u0014J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0007H\u0014¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/views/FlowLayout;", "Landroid/view/ViewGroup;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "generateDefaultLayoutParams", "Landroid/view/ViewGroup$LayoutParams;", "generateLayoutParams", "p", "onLayout", "", "changed", "", NotifyType.LIGHTS, "t", "r", "b", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class FlowLayout extends ViewGroup {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public FlowLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public FlowLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ FlowLayout(Context context, AttributeSet attributeSet, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i9);
    }

    @Override // android.view.ViewGroup
    @NotNull
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    @NotNull
    protected ViewGroup.LayoutParams generateLayoutParams(@NotNull ViewGroup.LayoutParams p10) {
        Intrinsics.checkNotNullParameter(p10, "p");
        return new ViewGroup.MarginLayoutParams(p10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        int width = getWidth();
        int childCount = getChildCount();
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt = getChildAt(i16);
            if (childAt.getVisibility() == 0) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                int measuredHeight = childAt.getMeasuredHeight();
                int i17 = marginLayoutParams.topMargin;
                int i18 = marginLayoutParams.bottomMargin;
                int i19 = measuredHeight + i17 + i18;
                if (measuredWidth + i13 > width) {
                    i14 += i15;
                    i13 = 0;
                    i15 = 0;
                }
                int i20 = marginLayoutParams.leftMargin;
                int i21 = i13 + i20;
                int i22 = i14 + i17;
                int i23 = marginLayoutParams.rightMargin;
                int i24 = ((measuredWidth + i21) - i20) - i23;
                i15 = Math.max(i15, i19);
                childAt.layout(i21, i22, i24, ((i22 + i19) - i17) - i18);
                i13 = i23 + i24;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i9, int i10) {
        int i11;
        int mode = View.MeasureSpec.getMode(i9);
        int size = View.MeasureSpec.getSize(i9);
        int mode2 = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i10);
        int childCount = getChildCount();
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() == 8) {
                if (i12 == childCount - 1) {
                    i13 = Math.max(i14, i13);
                    i16 += i15;
                }
                i11 = size2;
            } else {
                measureChild(childAt, i9, i10);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                i11 = size2;
                int measuredWidth = childAt.getMeasuredWidth() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
                int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                int i17 = i14 + measuredWidth;
                if (i17 > (size - getPaddingLeft()) - getPaddingRight()) {
                    i13 = Math.max(i13, i14);
                    i16 += i15;
                } else {
                    measuredHeight = Math.max(i15, measuredHeight);
                    measuredWidth = i17;
                }
                if (i12 == childCount - 1) {
                    i13 = Math.max(measuredWidth, i13);
                    i16 += measuredHeight;
                }
                i15 = measuredHeight;
                i14 = measuredWidth;
            }
            i12++;
            size2 = i11;
        }
        int i18 = size2;
        if (mode != 1073741824) {
            size = i13 + getPaddingLeft() + getPaddingRight();
        }
        setMeasuredDimension(size, mode2 == 1073741824 ? i18 : i16 + getPaddingTop() + getPaddingBottom());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public FlowLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // android.view.ViewGroup
    @NotNull
    public ViewGroup.LayoutParams generateLayoutParams(@NotNull AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        return new ViewGroup.MarginLayoutParams(getContext(), attrs);
    }
}
