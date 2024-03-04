package com.google.android.material.divider;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
/* loaded from: classes2.dex */
public class MaterialDividerItemDecoration extends RecyclerView.ItemDecoration {
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_MaterialDivider;
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    @ColorInt
    private int color;
    @NonNull
    private Drawable dividerDrawable;
    private int insetEnd;
    private int insetStart;
    private int orientation;
    private final Rect tempRect;
    private int thickness;

    public MaterialDividerItemDecoration(@NonNull Context context, int i9) {
        this(context, null, i9);
    }

    private void drawForHorizontalOrientation(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int height;
        int i9;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i9 = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i9, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i9 = 0;
        }
        int i10 = i9 + this.insetStart;
        int i11 = height - this.insetEnd;
        int childCount = recyclerView.getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = recyclerView.getChildAt(i12);
            recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.tempRect);
            int round = this.tempRect.right + Math.round(childAt.getTranslationX());
            this.dividerDrawable.setBounds((round - this.dividerDrawable.getIntrinsicWidth()) - this.thickness, i10, round, i11);
            this.dividerDrawable.draw(canvas);
        }
        canvas.restore();
    }

    private void drawForVerticalOrientation(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        int width;
        int i9;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i9 = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i9, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            i9 = 0;
        }
        boolean z10 = ViewCompat.getLayoutDirection(recyclerView) == 1;
        int i10 = i9 + (z10 ? this.insetEnd : this.insetStart);
        int i11 = width - (z10 ? this.insetStart : this.insetEnd);
        int childCount = recyclerView.getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = recyclerView.getChildAt(i12);
            recyclerView.getDecoratedBoundsWithMargins(childAt, this.tempRect);
            int round = this.tempRect.bottom + Math.round(childAt.getTranslationY());
            this.dividerDrawable.setBounds(i10, (round - this.dividerDrawable.getIntrinsicHeight()) - this.thickness, i11, round);
            this.dividerDrawable.draw(canvas);
        }
        canvas.restore();
    }

    @ColorInt
    public int getDividerColor() {
        return this.color;
    }

    @Px
    public int getDividerInsetEnd() {
        return this.insetEnd;
    }

    @Px
    public int getDividerInsetStart() {
        return this.insetStart;
    }

    @Px
    public int getDividerThickness() {
        return this.thickness;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        rect.set(0, 0, 0, 0);
        if (this.orientation == 1) {
            rect.bottom = this.dividerDrawable.getIntrinsicHeight() + this.thickness;
        } else {
            rect.right = this.dividerDrawable.getIntrinsicWidth() + this.thickness;
        }
    }

    public int getOrientation() {
        return this.orientation;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null) {
            return;
        }
        if (this.orientation == 1) {
            drawForVerticalOrientation(canvas, recyclerView);
        } else {
            drawForHorizontalOrientation(canvas, recyclerView);
        }
    }

    public void setDividerColor(@ColorInt int i9) {
        this.color = i9;
        Drawable wrap = DrawableCompat.wrap(this.dividerDrawable);
        this.dividerDrawable = wrap;
        DrawableCompat.setTint(wrap, i9);
    }

    public void setDividerColorResource(@NonNull Context context, @ColorRes int i9) {
        setDividerColor(ContextCompat.getColor(context, i9));
    }

    public void setDividerInsetEnd(@Px int i9) {
        this.insetEnd = i9;
    }

    public void setDividerInsetEndResource(@NonNull Context context, @DimenRes int i9) {
        setDividerInsetEnd(context.getResources().getDimensionPixelOffset(i9));
    }

    public void setDividerInsetStart(@Px int i9) {
        this.insetStart = i9;
    }

    public void setDividerInsetStartResource(@NonNull Context context, @DimenRes int i9) {
        setDividerInsetStart(context.getResources().getDimensionPixelOffset(i9));
    }

    public void setDividerThickness(@Px int i9) {
        this.thickness = i9;
    }

    public void setDividerThicknessResource(@NonNull Context context, @DimenRes int i9) {
        setDividerThickness(context.getResources().getDimensionPixelSize(i9));
    }

    public void setOrientation(int i9) {
        if (i9 != 0 && i9 != 1) {
            throw new IllegalArgumentException("Invalid orientation: " + i9 + ". It should be either HORIZONTAL or VERTICAL");
        }
        this.orientation = i9;
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        this(context, attributeSet, R.attr.materialDividerStyle, i9);
    }

    public MaterialDividerItemDecoration(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9, int i10) {
        this.tempRect = new Rect();
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.MaterialDivider, i9, DEF_STYLE_RES, new int[0]);
        this.color = MaterialResources.getColorStateList(context, obtainStyledAttributes, R.styleable.MaterialDivider_dividerColor).getDefaultColor();
        this.thickness = obtainStyledAttributes.getDimensionPixelSize(R.styleable.MaterialDivider_dividerThickness, context.getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.insetStart = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetStart, 0);
        this.insetEnd = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.MaterialDivider_dividerInsetEnd, 0);
        obtainStyledAttributes.recycle();
        this.dividerDrawable = new ShapeDrawable();
        setDividerColor(this.color);
        setOrientation(i10);
    }
}
