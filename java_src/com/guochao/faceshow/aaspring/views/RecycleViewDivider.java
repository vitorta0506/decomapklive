package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class RecycleViewDivider extends RecyclerView.ItemDecoration {

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f23993e = {16843284};

    /* renamed from: a  reason: collision with root package name */
    private Paint f23994a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f23995b;

    /* renamed from: c  reason: collision with root package name */
    private int f23996c;

    /* renamed from: d  reason: collision with root package name */
    private int f23997d;

    public RecycleViewDivider(Context context, int i9) {
        this.f23996c = 2;
        if (i9 != 1 && i9 != 0) {
            throw new IllegalArgumentException("请输入正确的参数！");
        }
        this.f23997d = i9;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f23993e);
        this.f23995b = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
    }

    private void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        int paddingLeft = recyclerView.getPaddingLeft();
        int measuredWidth = recyclerView.getMeasuredWidth() - recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i9 = 0; i9 < childCount - 1; i9++) {
            View childAt = recyclerView.getChildAt(i9);
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).bottomMargin;
            int i10 = this.f23996c + bottom;
            Drawable drawable = this.f23995b;
            if (drawable != null) {
                drawable.setBounds(paddingLeft, bottom, measuredWidth, i10);
                this.f23995b.draw(canvas);
            }
            Paint paint = this.f23994a;
            if (paint != null) {
                canvas.drawRect(paddingLeft, bottom, measuredWidth, i10, paint);
            }
        }
    }

    private void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        int paddingTop = recyclerView.getPaddingTop();
        int measuredHeight = recyclerView.getMeasuredHeight() - recyclerView.getPaddingBottom();
        int childCount = recyclerView.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = recyclerView.getChildAt(i9);
            int right = childAt.getRight() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) childAt.getLayoutParams())).rightMargin;
            int i10 = this.f23996c + right;
            Drawable drawable = this.f23995b;
            if (drawable != null) {
                drawable.setBounds(right, paddingTop, i10, measuredHeight);
                this.f23995b.draw(canvas);
            }
            Paint paint = this.f23994a;
            if (paint != null) {
                canvas.drawRect(right, paddingTop, i10, measuredHeight, paint);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        super.getItemOffsets(rect, view, recyclerView, state);
        rect.set(0, 0, 0, this.f23996c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
        if (this.f23997d == 1) {
            drawVertical(canvas, recyclerView);
        } else {
            drawHorizontal(canvas, recyclerView);
        }
    }

    public RecycleViewDivider(Context context, int i9, int i10, int i11) {
        this(context, i9);
        this.f23996c = i10;
        Paint paint = new Paint(1);
        this.f23994a = paint;
        paint.setColor(i11);
        this.f23994a.setStyle(Paint.Style.FILL);
    }
}
