package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {
    private static final int PEEK_BUTTON_DP = 16;
    private boolean mAllowStacking;
    private int mLastWidthSize;
    private boolean mStacked;

    public ButtonBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastWidthSize = -1;
        int[] iArr = R.styleable.ButtonBarLayout;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        this.mAllowStacking = obtainStyledAttributes.getBoolean(R.styleable.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            setStacked(this.mAllowStacking);
        }
    }

    private int getNextVisibleChildIndex(int i9) {
        int childCount = getChildCount();
        while (i9 < childCount) {
            if (getChildAt(i9).getVisibility() == 0) {
                return i9;
            }
            i9++;
        }
        return -1;
    }

    private boolean isStacked() {
        return this.mStacked;
    }

    private void setStacked(boolean z10) {
        if (this.mStacked != z10) {
            if (!z10 || this.mAllowStacking) {
                this.mStacked = z10;
                setOrientation(z10 ? 1 : 0);
                setGravity(z10 ? GravityCompat.END : 80);
                View findViewById = findViewById(R.id.spacer);
                if (findViewById != null) {
                    findViewById.setVisibility(z10 ? 8 : 4);
                }
                for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
                    bringChildToFront(getChildAt(childCount));
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        int i11;
        boolean z10;
        int size = View.MeasureSpec.getSize(i9);
        int i12 = 0;
        if (this.mAllowStacking) {
            if (size > this.mLastWidthSize && isStacked()) {
                setStacked(false);
            }
            this.mLastWidthSize = size;
        }
        if (isStacked() || View.MeasureSpec.getMode(i9) != 1073741824) {
            i11 = i9;
            z10 = false;
        } else {
            i11 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z10 = true;
        }
        super.onMeasure(i11, i10);
        if (this.mAllowStacking && !isStacked()) {
            if ((getMeasuredWidthAndState() & ViewCompat.MEASURED_STATE_MASK) == 16777216) {
                setStacked(true);
                z10 = true;
            }
        }
        if (z10) {
            super.onMeasure(i9, i10);
        }
        int nextVisibleChildIndex = getNextVisibleChildIndex(0);
        if (nextVisibleChildIndex >= 0) {
            View childAt = getChildAt(nextVisibleChildIndex);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (isStacked()) {
                int nextVisibleChildIndex2 = getNextVisibleChildIndex(nextVisibleChildIndex + 1);
                if (nextVisibleChildIndex2 >= 0) {
                    paddingTop += getChildAt(nextVisibleChildIndex2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
                i12 = paddingTop;
            } else {
                i12 = paddingTop + getPaddingBottom();
            }
        }
        if (ViewCompat.getMinimumHeight(this) != i12) {
            setMinimumHeight(i12);
            if (i10 == 0) {
                super.onMeasure(i9, i10);
            }
        }
    }

    public void setAllowStacking(boolean z10) {
        if (this.mAllowStacking != z10) {
            this.mAllowStacking = z10;
            if (!z10 && isStacked()) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
