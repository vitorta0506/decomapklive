package com.guochao.faceshow.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;
/* loaded from: classes4.dex */
public class SwipeListLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private View f26757a;

    /* renamed from: b  reason: collision with root package name */
    private View f26758b;

    /* renamed from: c  reason: collision with root package name */
    private int f26759c;

    /* renamed from: d  reason: collision with root package name */
    private ViewDragHelper f26760d;

    /* renamed from: e  reason: collision with root package name */
    private int f26761e;

    /* renamed from: f  reason: collision with root package name */
    private int f26762f;

    /* renamed from: g  reason: collision with root package name */
    private int f26763g;

    /* renamed from: h  reason: collision with root package name */
    private b f26764h;

    /* renamed from: i  reason: collision with root package name */
    private Status f26765i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f26766j;

    /* renamed from: k  reason: collision with root package name */
    ViewDragHelper.Callback f26767k;

    /* renamed from: l  reason: collision with root package name */
    private Status f26768l;

    /* loaded from: classes4.dex */
    public enum Status {
        Open,
        Close
    }

    /* loaded from: classes4.dex */
    class a extends ViewDragHelper.Callback {
        a() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i9, int i10) {
            if (view != SwipeListLayout.this.f26758b || i9 > 0) {
                return 0;
            }
            return Math.max(i9, -SwipeListLayout.this.f26759c);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return SwipeListLayout.this.f26759c;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i9, int i10, int i11, int i12) {
            if (SwipeListLayout.this.f26758b == view) {
                SwipeListLayout.this.f26757a.offsetLeftAndRight(i11);
            }
            SwipeListLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f10, float f11) {
            if (view == SwipeListLayout.this.f26758b) {
                int width = view.getWidth();
                float left = ((view.getLeft() + width) * 1.0f) / width;
                Log.d("xxxx", "xvel == " + f10 + "   ;   math == " + SwipeListLayout.this.f26758b.getLeft() + "   ;   right == " + SwipeListLayout.this.f26758b.getRight() + "  ;  hiddenViewWidth == " + SwipeListLayout.this.f26759c + "  ;  /== " + (SwipeListLayout.this.f26759c / 1.0f) + "  offset== " + left);
                if (f10 == 0.0f && Math.abs(SwipeListLayout.this.f26758b.getLeft()) > SwipeListLayout.this.f26759c / 2.0f) {
                    SwipeListLayout swipeListLayout = SwipeListLayout.this;
                    swipeListLayout.i(swipeListLayout.f26766j);
                } else if (f10 < 0.0f) {
                    SwipeListLayout swipeListLayout2 = SwipeListLayout.this;
                    swipeListLayout2.i(swipeListLayout2.f26766j);
                } else {
                    SwipeListLayout swipeListLayout3 = SwipeListLayout.this;
                    swipeListLayout3.g(swipeListLayout3.f26766j);
                }
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i9) {
            return view == SwipeListLayout.this.f26758b;
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a();

        void b(Status status);

        void c();
    }

    public SwipeListLayout(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(boolean z10) {
        this.f26768l = this.f26765i;
        Status status = Status.Close;
        this.f26765i = status;
        if (z10) {
            if (this.f26760d.smoothSlideViewTo(this.f26758b, 0, 0)) {
                if (this.f26764h != null) {
                    Log.i("SlipListLayout", "start close animation");
                    this.f26764h.c();
                }
                ViewCompat.postInvalidateOnAnimation(this);
            }
        } else {
            h(status);
        }
        if (this.f26764h == null || this.f26768l != Status.Open) {
            return;
        }
        Log.i("SlipListLayout", "close");
        this.f26764h.b(this.f26765i);
    }

    private void h(Status status) {
        if (status == Status.Close) {
            View view = this.f26757a;
            int i9 = this.f26762f;
            view.layout(i9, 0, this.f26759c + i9, this.f26763g);
            this.f26758b.layout(0, 0, this.f26762f, this.f26763g);
            return;
        }
        View view2 = this.f26757a;
        int i10 = this.f26762f;
        view2.layout(i10 - this.f26759c, 0, i10, this.f26763g);
        View view3 = this.f26758b;
        int i11 = this.f26759c;
        view3.layout(-i11, 0, this.f26762f - i11, this.f26763g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(boolean z10) {
        this.f26768l = this.f26765i;
        Status status = Status.Open;
        this.f26765i = status;
        if (z10) {
            if (this.f26760d.smoothSlideViewTo(this.f26758b, -this.f26759c, 0)) {
                if (this.f26764h != null) {
                    Log.i("SlipListLayout", "start open animation");
                    this.f26764h.a();
                }
                ViewCompat.postInvalidateOnAnimation(this);
            }
        } else {
            h(status);
        }
        if (this.f26764h == null || this.f26768l != Status.Close) {
            return;
        }
        Log.i("SlipListLayout", "open");
        this.f26764h.b(this.f26765i);
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        if (this.f26760d.continueSettling(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f26757a = getChildAt(0);
        this.f26758b = getChildAt(1);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 3) {
            this.f26760d.cancel();
            return false;
        }
        return this.f26760d.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        h(Status.Close);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i9, int i10, int i11, int i12) {
        super.onSizeChanged(i9, i10, i11, i12);
        this.f26762f = this.f26758b.getMeasuredWidth();
        this.f26763g = this.f26758b.getMeasuredHeight();
        this.f26759c = this.f26757a.getMeasuredWidth();
        this.f26761e = this.f26757a.getMeasuredHeight();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f26760d.processTouchEvent(motionEvent);
        return true;
    }

    public void setOnSwipeStatusListener(b bVar) {
        this.f26764h = bVar;
    }

    public void setSmooth(boolean z10) {
        this.f26766j = z10;
    }

    public SwipeListLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Status status = Status.Close;
        this.f26765i = status;
        this.f26766j = true;
        a aVar = new a();
        this.f26767k = aVar;
        this.f26768l = status;
        this.f26760d = ViewDragHelper.create(this, aVar);
    }
}
