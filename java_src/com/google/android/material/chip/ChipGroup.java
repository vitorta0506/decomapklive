package com.google.android.material.chip;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.annotation.BoolRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.FlowLayout;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class ChipGroup extends FlowLayout {
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_ChipGroup;
    @IdRes
    private int checkedId;
    private final CheckedStateTracker checkedStateTracker;
    @Dimension
    private int chipSpacingHorizontal;
    @Dimension
    private int chipSpacingVertical;
    @Nullable
    private OnCheckedChangeListener onCheckedChangeListener;
    @NonNull
    private PassThroughHierarchyChangeListener passThroughListener;
    private boolean protectFromCheckedChange;
    private boolean selectionRequired;
    private boolean singleSelection;

    /* loaded from: classes2.dex */
    private class CheckedStateTracker implements CompoundButton.OnCheckedChangeListener {
        private CheckedStateTracker() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(@NonNull CompoundButton compoundButton, boolean z10) {
            if (ChipGroup.this.protectFromCheckedChange) {
                return;
            }
            if (ChipGroup.this.getCheckedChipIds().isEmpty() && ChipGroup.this.selectionRequired) {
                ChipGroup.this.setCheckedStateForView(compoundButton.getId(), true);
                ChipGroup.this.setCheckedId(compoundButton.getId(), false);
                return;
            }
            int id2 = compoundButton.getId();
            if (z10) {
                if (ChipGroup.this.checkedId != -1 && ChipGroup.this.checkedId != id2 && ChipGroup.this.singleSelection) {
                    ChipGroup chipGroup = ChipGroup.this;
                    chipGroup.setCheckedStateForView(chipGroup.checkedId, false);
                }
                ChipGroup.this.setCheckedId(id2);
            } else if (ChipGroup.this.checkedId == id2) {
                ChipGroup.this.setCheckedId(-1);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(int i9, int i10) {
            super(i9, i10);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* loaded from: classes2.dex */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(ChipGroup chipGroup, @IdRes int i9);
    }

    /* loaded from: classes2.dex */
    private class PassThroughHierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        private ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener;

        private PassThroughHierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(ViewCompat.generateViewId());
                }
                Chip chip = (Chip) view2;
                if (chip.isChecked()) {
                    ((ChipGroup) view).check(chip.getId());
                }
                chip.setOnCheckedChangeListenerInternal(ChipGroup.this.checkedStateTracker);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.onHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.onHierarchyChangeListener;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    private int getChipCount() {
        int i9 = 0;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            if (getChildAt(i10) instanceof Chip) {
                i9++;
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i9) {
        setCheckedId(i9, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedStateForView(@IdRes int i9, boolean z10) {
        View findViewById = findViewById(i9);
        if (findViewById instanceof Chip) {
            this.protectFromCheckedChange = true;
            ((Chip) findViewById).setChecked(z10);
            this.protectFromCheckedChange = false;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i9, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i10 = this.checkedId;
                if (i10 != -1 && this.singleSelection) {
                    setCheckedStateForView(i10, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i9, layoutParams);
    }

    public void check(@IdRes int i9) {
        int i10 = this.checkedId;
        if (i9 == i10) {
            return;
        }
        if (i10 != -1 && this.singleSelection) {
            setCheckedStateForView(i10, false);
        }
        if (i9 != -1) {
            setCheckedStateForView(i9, true);
        }
        setCheckedId(i9);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public void clearCheck() {
        this.protectFromCheckedChange = true;
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.protectFromCheckedChange = false;
        setCheckedId(-1);
    }

    @Override // android.view.ViewGroup
    @NonNull
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    @NonNull
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @IdRes
    public int getCheckedChipId() {
        if (this.singleSelection) {
            return this.checkedId;
        }
        return -1;
    }

    @NonNull
    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.singleSelection) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    @Dimension
    public int getChipSpacingHorizontal() {
        return this.chipSpacingHorizontal;
    }

    @Dimension
    public int getChipSpacingVertical() {
        return this.chipSpacingVertical;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getIndexOfChip(@Nullable View view) {
        if (view instanceof Chip) {
            int i9 = 0;
            for (int i10 = 0; i10 < getChildCount(); i10++) {
                if (getChildAt(i10) instanceof Chip) {
                    if (((Chip) getChildAt(i10)) == view) {
                        return i9;
                    }
                    i9++;
                }
            }
            return -1;
        }
        return -1;
    }

    public boolean isSelectionRequired() {
        return this.selectionRequired;
    }

    @Override // com.google.android.material.internal.FlowLayout
    public boolean isSingleLine() {
        return super.isSingleLine();
    }

    public boolean isSingleSelection() {
        return this.singleSelection;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        int i9 = this.checkedId;
        if (i9 != -1) {
            setCheckedStateForView(i9, true);
            setCheckedId(this.checkedId);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCount(), isSingleLine() ? getChipCount() : -1, false, isSingleSelection() ? 1 : 2));
    }

    public void setChipSpacing(@Dimension int i9) {
        setChipSpacingHorizontal(i9);
        setChipSpacingVertical(i9);
    }

    public void setChipSpacingHorizontal(@Dimension int i9) {
        if (this.chipSpacingHorizontal != i9) {
            this.chipSpacingHorizontal = i9;
            setItemSpacing(i9);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(@DimenRes int i9) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i9));
    }

    public void setChipSpacingResource(@DimenRes int i9) {
        setChipSpacing(getResources().getDimensionPixelOffset(i9));
    }

    public void setChipSpacingVertical(@Dimension int i9) {
        if (this.chipSpacingVertical != i9) {
            this.chipSpacingVertical = i9;
            setLineSpacing(i9);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(@DimenRes int i9) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i9));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i9) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.passThroughListener.onHierarchyChangeListener = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z10) {
        this.selectionRequired = z10;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i9) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i9) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Override // com.google.android.material.internal.FlowLayout
    public void setSingleLine(boolean z10) {
        super.setSingleLine(z10);
    }

    public void setSingleSelection(boolean z10) {
        if (this.singleSelection != z10) {
            this.singleSelection = z10;
            clearCheck();
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipGroupStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i9, boolean z10) {
        this.checkedId = i9;
        OnCheckedChangeListener onCheckedChangeListener = this.onCheckedChangeListener;
        if (onCheckedChangeListener != null && this.singleSelection && z10) {
            onCheckedChangeListener.onCheckedChanged(this, i9);
        }
    }

    @Override // android.view.ViewGroup
    @NonNull
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public void setSingleLine(@BoolRes int i9) {
        setSingleLine(getResources().getBoolean(i9));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ChipGroup(android.content.Context r8, android.util.AttributeSet r9, int r10) {
        /*
            r7 = this;
            int r4 = com.google.android.material.chip.ChipGroup.DEF_STYLE_RES
            android.content.Context r8 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r8, r9, r10, r4)
            r7.<init>(r8, r9, r10)
            com.google.android.material.chip.ChipGroup$CheckedStateTracker r8 = new com.google.android.material.chip.ChipGroup$CheckedStateTracker
            r0 = 0
            r8.<init>()
            r7.checkedStateTracker = r8
            com.google.android.material.chip.ChipGroup$PassThroughHierarchyChangeListener r8 = new com.google.android.material.chip.ChipGroup$PassThroughHierarchyChangeListener
            r8.<init>()
            r7.passThroughListener = r8
            r8 = -1
            r7.checkedId = r8
            r6 = 0
            r7.protectFromCheckedChange = r6
            android.content.Context r0 = r7.getContext()
            int[] r2 = com.google.android.material.R.styleable.ChipGroup
            int[] r5 = new int[r6]
            r1 = r9
            r3 = r10
            android.content.res.TypedArray r9 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r10 = com.google.android.material.R.styleable.ChipGroup_chipSpacing
            int r10 = r9.getDimensionPixelOffset(r10, r6)
            int r0 = com.google.android.material.R.styleable.ChipGroup_chipSpacingHorizontal
            int r0 = r9.getDimensionPixelOffset(r0, r10)
            r7.setChipSpacingHorizontal(r0)
            int r0 = com.google.android.material.R.styleable.ChipGroup_chipSpacingVertical
            int r10 = r9.getDimensionPixelOffset(r0, r10)
            r7.setChipSpacingVertical(r10)
            int r10 = com.google.android.material.R.styleable.ChipGroup_singleLine
            boolean r10 = r9.getBoolean(r10, r6)
            r7.setSingleLine(r10)
            int r10 = com.google.android.material.R.styleable.ChipGroup_singleSelection
            boolean r10 = r9.getBoolean(r10, r6)
            r7.setSingleSelection(r10)
            int r10 = com.google.android.material.R.styleable.ChipGroup_selectionRequired
            boolean r10 = r9.getBoolean(r10, r6)
            r7.setSelectionRequired(r10)
            int r10 = com.google.android.material.R.styleable.ChipGroup_checkedChip
            int r10 = r9.getResourceId(r10, r8)
            if (r10 == r8) goto L69
            r7.checkedId = r10
        L69:
            r9.recycle()
            com.google.android.material.chip.ChipGroup$PassThroughHierarchyChangeListener r8 = r7.passThroughListener
            super.setOnHierarchyChangeListener(r8)
            r8 = 1
            androidx.core.view.ViewCompat.setImportantForAccessibility(r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.ChipGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setSingleSelection(@BoolRes int i9) {
        setSingleSelection(getResources().getBoolean(i9));
    }
}
