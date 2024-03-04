package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
/* loaded from: classes3.dex */
public class CommonDividerItemDecoration extends RecyclerView.ItemDecoration {
    public static final float DEFAULT_SPACE = 0.5f;
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    private boolean isIncludeBottom;
    private boolean isIncludeLeft;
    private boolean isIncludeRight;
    private boolean isIncludeTop;
    private int mBottomEdgeSpace;
    private Context mContext;
    private int mLeftEdgeSpace;
    private int mMaxSpanGroupIndex;
    private int mOrientation;
    private Paint mPaint;
    private int mPaintColor;
    private int mRectSpace;
    private int mRightEdgeSpace;
    private int mTopEdgeSpace;

    /* loaded from: classes3.dex */
    public static class Builder {
        private int bottomEdgeSpace;
        private Context context;
        private boolean isIncludeBottom;
        private boolean isIncludeLeft;
        private boolean isIncludeRight;
        private boolean isIncludeTop;
        private int leftEdgeSpace;
        private int orientation = 1;
        private int paintColor = 0;
        private int rectSpace;
        private int rightEdgeSpace;
        private int topEdgeSpace;

        public Builder(Context context) {
            this.context = context;
            int b10 = ae.b.b(0.5f);
            this.rectSpace = b10;
            this.bottomEdgeSpace = b10;
            this.rightEdgeSpace = b10;
            this.topEdgeSpace = b10;
            this.leftEdgeSpace = b10;
        }

        public CommonDividerItemDecoration build() {
            return new CommonDividerItemDecoration(this);
        }

        public int getBottomEdgeSpace() {
            return this.bottomEdgeSpace;
        }

        public Context getContext() {
            return this.context;
        }

        public int getLeftEdgeSpace() {
            return this.leftEdgeSpace;
        }

        public int getOrientation() {
            return this.orientation;
        }

        public int getPaintColor() {
            return this.paintColor;
        }

        public int getRectSpace() {
            return this.rectSpace;
        }

        public int getRightEdgeSpace() {
            return this.rightEdgeSpace;
        }

        public int getTopEdgeSpace() {
            return this.topEdgeSpace;
        }

        public boolean isIncludeBottom() {
            return this.isIncludeBottom;
        }

        public boolean isIncludeLeft() {
            return this.isIncludeLeft;
        }

        public boolean isIncludeRight() {
            return this.isIncludeRight;
        }

        public boolean isIncludeTop() {
            return this.isIncludeTop;
        }

        public Builder setBottomEdgeSpace(int i9) {
            this.bottomEdgeSpace = ae.b.b(i9);
            return this;
        }

        public Builder setContext(Context context) {
            this.context = context;
            return this;
        }

        public Builder setIncludeBottom(boolean z10) {
            this.isIncludeBottom = z10;
            return this;
        }

        public Builder setIncludeLeft(boolean z10) {
            this.isIncludeLeft = z10;
            return this;
        }

        public Builder setIncludeRight(boolean z10) {
            this.isIncludeRight = z10;
            return this;
        }

        public Builder setIncludeTop(boolean z10) {
            this.isIncludeTop = z10;
            return this;
        }

        public Builder setLeftEdgeSpace(int i9) {
            this.leftEdgeSpace = ae.b.b(i9);
            return this;
        }

        public Builder setOrientation(int i9) {
            this.orientation = i9;
            return this;
        }

        public Builder setPaintColor(int i9) {
            this.paintColor = i9;
            return this;
        }

        public Builder setRectSpace(float f10) {
            this.rectSpace = ae.b.b(f10);
            return this;
        }

        public Builder setRightEdgeSpace(int i9) {
            this.rightEdgeSpace = ae.b.b(i9);
            return this;
        }

        public Builder setTopEdgeSpace(int i9) {
            this.topEdgeSpace = ae.b.b(i9);
            return this;
        }
    }

    private void drawGridSpace(Canvas canvas, RecyclerView recyclerView) {
        GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
        Objects.requireNonNull(gridLayoutManager);
        int spanCount = gridLayoutManager.getSpanCount();
        GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
        int childCount = recyclerView.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = recyclerView.getChildAt(i9);
            int childLayoutPosition = recyclerView.getChildLayoutPosition(childAt);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            spanSizeLookup.getSpanGroupIndex(childLayoutPosition, spanCount);
            spanSizeLookup.getSpanSize(childLayoutPosition);
            spanSizeLookup.getSpanIndex(childLayoutPosition, spanCount);
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            canvas.drawRect(childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, bottom, childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + this.mRectSpace, this.mRectSpace + bottom, this.mPaint);
            int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            canvas.drawRect(right, top, this.mRectSpace + right, childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, this.mPaint);
        }
        drawLeftOrRightSpace(canvas, recyclerView);
        drawTopOrBottomSpace(canvas, recyclerView);
    }

    private void drawListHorizontal(Canvas canvas, RecyclerView recyclerView) {
        int height;
        int paddingBottom;
        int childCount = recyclerView.getChildCount();
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        Objects.requireNonNull(adapter);
        int itemCount = adapter.getItemCount();
        if (childCount == 0) {
            return;
        }
        int paddingTop = this.isIncludeTop ? recyclerView.getPaddingTop() + this.mTopEdgeSpace : recyclerView.getPaddingTop();
        if (this.isIncludeBottom) {
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            paddingBottom = this.mBottomEdgeSpace;
        } else {
            height = recyclerView.getHeight();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        int i9 = height - paddingBottom;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = recyclerView.getChildAt(i10);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            int childLayoutPosition = recyclerView.getChildLayoutPosition(childAt);
            if (childLayoutPosition == 0) {
                if (this.isIncludeLeft) {
                    int left = childAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    int i11 = this.mLeftEdgeSpace;
                    int i12 = left - i11;
                    canvas.drawRect(i12, paddingTop, i11 + i12, i9, this.mPaint);
                }
                int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                canvas.drawRect(right, paddingTop, this.mRectSpace + right, i9, this.mPaint);
            } else if (childLayoutPosition == itemCount - 1) {
                if (this.isIncludeRight) {
                    int right2 = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    canvas.drawRect(right2, paddingTop, this.mRightEdgeSpace + right2, i9, this.mPaint);
                }
            } else {
                int right3 = childAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                canvas.drawRect(right3, paddingTop, this.mRectSpace + right3, i9, this.mPaint);
            }
        }
        drawTopOrBottomSpace(canvas, recyclerView);
    }

    private void drawListVertical(Canvas canvas, RecyclerView recyclerView) {
        int width;
        int paddingRight;
        int childCount = recyclerView.getChildCount();
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        Objects.requireNonNull(adapter);
        int itemCount = adapter.getItemCount();
        if (childCount == 0) {
            return;
        }
        int paddingLeft = this.isIncludeLeft ? recyclerView.getPaddingLeft() + this.mLeftEdgeSpace : recyclerView.getPaddingLeft();
        if (this.isIncludeRight) {
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            paddingRight = this.mRightEdgeSpace;
        } else {
            width = recyclerView.getWidth();
            paddingRight = recyclerView.getPaddingRight();
        }
        int i9 = width - paddingRight;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = recyclerView.getChildAt(i10);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
            int childLayoutPosition = recyclerView.getChildLayoutPosition(childAt);
            if (childLayoutPosition == 0) {
                if (this.isIncludeTop) {
                    int top = childAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    int i11 = this.mTopEdgeSpace;
                    int i12 = top - i11;
                    canvas.drawRect(paddingLeft, i12, i9, i11 + i12, this.mPaint);
                }
                int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                canvas.drawRect(paddingLeft, bottom, i9, this.mRectSpace + bottom, this.mPaint);
            } else if (childLayoutPosition == itemCount - 1) {
                if (this.isIncludeBottom) {
                    int bottom2 = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    canvas.drawRect(paddingLeft, bottom2, i9, this.mBottomEdgeSpace + bottom2, this.mPaint);
                }
            } else {
                int bottom3 = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                canvas.drawRect(paddingLeft, bottom3, i9, this.mRectSpace + bottom3, this.mPaint);
            }
        }
        drawLeftOrRightSpace(canvas, recyclerView);
    }

    private void drawTopOrBottomSpace(Canvas canvas, RecyclerView recyclerView) {
        if (this.isIncludeTop) {
            int paddingLeft = recyclerView.getPaddingLeft();
            int paddingTop = recyclerView.getPaddingTop();
            canvas.drawRect(paddingLeft, paddingTop, recyclerView.getWidth() - recyclerView.getPaddingRight(), this.mTopEdgeSpace + paddingTop, this.mPaint);
        }
        if (this.isIncludeBottom) {
            int paddingLeft2 = recyclerView.getPaddingLeft();
            int height = (recyclerView.getHeight() - recyclerView.getPaddingBottom()) - this.mBottomEdgeSpace;
            canvas.drawRect(paddingLeft2, height, recyclerView.getWidth() - recyclerView.getPaddingRight(), this.mBottomEdgeSpace + height, this.mPaint);
        }
    }

    private void init() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(this.mPaintColor);
    }

    private boolean isFirsColumn(int i9, int i10) {
        return i9 % i10 == 0;
    }

    private boolean isFirstRow(int i9, int i10) {
        return i9 / i10 == 0;
    }

    private boolean isLastColumn(int i9, int i10) {
        return (i9 + 1) % i10 == 0;
    }

    private boolean isLastRow(int i9, int i10, int i11) {
        int i12 = i11 % i10;
        if (i12 != 0) {
            i10 = i12;
        }
        return i9 >= i11 - i10;
    }

    public void drawLeftOrRightSpace(Canvas canvas, RecyclerView recyclerView) {
        if (this.isIncludeLeft) {
            int paddingLeft = recyclerView.getPaddingLeft();
            canvas.drawRect(paddingLeft, recyclerView.getPaddingTop(), this.mLeftEdgeSpace + paddingLeft, recyclerView.getHeight() - recyclerView.getPaddingBottom(), this.mPaint);
        }
        if (this.isIncludeRight) {
            int width = (recyclerView.getWidth() - recyclerView.getPaddingRight()) - this.mRightEdgeSpace;
            canvas.drawRect(width, recyclerView.getPaddingTop(), this.mRightEdgeSpace + width, recyclerView.getHeight() - recyclerView.getPaddingBottom(), this.mPaint);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        int i9;
        super.getItemOffsets(rect, view, recyclerView, state);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        Objects.requireNonNull(adapter);
        int itemCount = adapter.getItemCount();
        if (itemCount == 0) {
            return;
        }
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        view.setTag(Integer.valueOf(childAdapterPosition));
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            int spanCount = gridLayoutManager.getSpanCount();
            this.mMaxSpanGroupIndex = spanSizeLookup.getSpanGroupIndex(recyclerView.getAdapter().getItemCount() - 1, spanCount);
            if (isFirsColumn(childAdapterPosition, spanCount)) {
                if (isFirstRow(childAdapterPosition, spanCount)) {
                    if (isLastRow(childAdapterPosition, spanCount, itemCount)) {
                        rect.set(this.isIncludeLeft ? this.mLeftEdgeSpace : 0, this.isIncludeTop ? this.mTopEdgeSpace : 0, this.mRectSpace, this.isIncludeBottom ? this.mBottomEdgeSpace : 0);
                        return;
                    }
                    int i10 = this.isIncludeLeft ? this.mLeftEdgeSpace : 0;
                    i9 = this.isIncludeTop ? this.mTopEdgeSpace : 0;
                    int i11 = this.mRectSpace;
                    rect.set(i10, i9, i11, i11);
                } else if (isLastRow(childAdapterPosition, spanCount, itemCount)) {
                    int i12 = this.isIncludeLeft ? this.mLeftEdgeSpace : 0;
                    int i13 = this.mRectSpace;
                    rect.set(i12, i13, i13, this.isIncludeBottom ? this.mBottomEdgeSpace : 0);
                } else {
                    i9 = this.isIncludeLeft ? this.mLeftEdgeSpace : 0;
                    int i14 = this.mRectSpace;
                    rect.set(i9, i14, i14, i14);
                }
            } else if (isLastColumn(childAdapterPosition, spanCount)) {
                if (isLastRow(childAdapterPosition, spanCount, itemCount) && isFirstRow(childAdapterPosition, spanCount)) {
                    rect.set(this.mRectSpace, this.isIncludeTop ? this.mTopEdgeSpace : 0, this.isIncludeRight ? this.mRightEdgeSpace : 0, this.isIncludeBottom ? this.mBottomEdgeSpace : 0);
                } else if (isLastRow(childAdapterPosition, spanCount, itemCount)) {
                    int i15 = this.mRectSpace;
                    rect.set(i15, i15, this.isIncludeRight ? this.mRightEdgeSpace : 0, this.isIncludeBottom ? this.mBottomEdgeSpace : 0);
                } else if (isFirstRow(childAdapterPosition, spanCount)) {
                    int i16 = this.mRectSpace;
                    rect.set(i16, this.isIncludeTop ? this.mTopEdgeSpace : 0, this.isIncludeRight ? this.mRightEdgeSpace : 0, i16);
                } else {
                    int i17 = this.mRectSpace;
                    rect.set(i17, i17, this.isIncludeRight ? this.mRightEdgeSpace : 0, i17);
                }
            } else if (isFirstRow(childAdapterPosition, spanCount) && isLastRow(childAdapterPosition, spanCount, itemCount)) {
                int i18 = this.mRectSpace;
                rect.set(i18, this.isIncludeTop ? this.mTopEdgeSpace : 0, i18, this.isIncludeBottom ? this.mBottomEdgeSpace : 0);
            } else if (isFirstRow(childAdapterPosition, spanCount)) {
                int i19 = this.mRectSpace;
                rect.set(i19, this.isIncludeTop ? this.mTopEdgeSpace : 0, i19, i19);
            } else if (isLastRow(childAdapterPosition, spanCount, itemCount)) {
                int i20 = this.mRectSpace;
                rect.set(i20, i20, i20, this.isIncludeBottom ? this.mBottomEdgeSpace : 0);
            } else {
                int i21 = this.mRectSpace;
                rect.set(i21, i21, i21, i21);
            }
        } else if (layoutManager instanceof LinearLayoutManager) {
            if (this.mOrientation == 1) {
                if (childAdapterPosition == 0) {
                    rect.set(this.isIncludeLeft ? this.mLeftEdgeSpace : 0, this.isIncludeTop ? this.mTopEdgeSpace : 0, this.isIncludeRight ? this.mRightEdgeSpace : 0, this.mRectSpace);
                } else if (childAdapterPosition == itemCount - 1) {
                    rect.set(this.isIncludeLeft ? this.mLeftEdgeSpace : 0, 0, this.isIncludeRight ? this.mRightEdgeSpace : 0, this.isIncludeBottom ? this.mBottomEdgeSpace : 0);
                } else {
                    rect.set(this.isIncludeLeft ? this.mLeftEdgeSpace : 0, 0, this.isIncludeRight ? this.mRightEdgeSpace : 0, this.mRectSpace);
                }
            } else if (childAdapterPosition == 0) {
                rect.set(this.isIncludeLeft ? this.mLeftEdgeSpace : 0, this.isIncludeTop ? this.mTopEdgeSpace : 0, this.mRectSpace, this.isIncludeBottom ? this.mBottomEdgeSpace : 0);
            } else if (childAdapterPosition == itemCount - 1) {
                rect.set(0, this.isIncludeTop ? this.mTopEdgeSpace : 0, this.isIncludeRight ? this.mRightEdgeSpace : 0, this.isIncludeBottom ? this.mBottomEdgeSpace : 0);
            } else {
                rect.set(0, this.isIncludeTop ? this.mTopEdgeSpace : 0, this.mRectSpace, this.isIncludeBottom ? this.mBottomEdgeSpace : 0);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            drawGridSpace(canvas, recyclerView);
        } else if (layoutManager instanceof LinearLayoutManager) {
            if (this.mOrientation == 1) {
                drawListVertical(canvas, recyclerView);
            } else {
                drawListHorizontal(canvas, recyclerView);
            }
        }
    }

    private CommonDividerItemDecoration(Builder builder) {
        this.mContext = builder.context;
        this.mOrientation = builder.orientation;
        this.mRectSpace = builder.rectSpace;
        this.mLeftEdgeSpace = builder.leftEdgeSpace;
        this.mTopEdgeSpace = builder.topEdgeSpace;
        this.mRightEdgeSpace = builder.rightEdgeSpace;
        this.mBottomEdgeSpace = builder.bottomEdgeSpace;
        this.isIncludeLeft = builder.isIncludeLeft;
        this.isIncludeTop = builder.isIncludeTop;
        this.isIncludeRight = builder.isIncludeRight;
        this.isIncludeBottom = builder.isIncludeBottom;
        this.mPaintColor = builder.paintColor;
        init();
    }
}
