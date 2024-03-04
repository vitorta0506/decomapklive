package com.yanzhenjie.recyclerview.swipe.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public class StickyNestedScrollView extends NestedScrollView {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<View> f37863a;

    /* renamed from: b  reason: collision with root package name */
    private View f37864b;

    /* renamed from: c  reason: collision with root package name */
    private float f37865c;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f37866d;

    /* renamed from: e  reason: collision with root package name */
    private int f37867e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f37868f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f37869g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f37870h;

    /* renamed from: i  reason: collision with root package name */
    private int f37871i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f37872j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f37873k;

    /* renamed from: l  reason: collision with root package name */
    private List<b> f37874l;

    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (StickyNestedScrollView.this.f37864b != null) {
                StickyNestedScrollView stickyNestedScrollView = StickyNestedScrollView.this;
                int j10 = stickyNestedScrollView.j(stickyNestedScrollView.f37864b);
                StickyNestedScrollView stickyNestedScrollView2 = StickyNestedScrollView.this;
                int i9 = stickyNestedScrollView2.i(stickyNestedScrollView2.f37864b);
                StickyNestedScrollView stickyNestedScrollView3 = StickyNestedScrollView.this;
                StickyNestedScrollView.this.invalidate(j10, i9, stickyNestedScrollView3.k(stickyNestedScrollView3.f37864b), (int) (StickyNestedScrollView.this.getScrollY() + StickyNestedScrollView.this.f37864b.getHeight() + StickyNestedScrollView.this.f37865c));
            }
            StickyNestedScrollView.this.postDelayed(this, 16L);
        }
    }

    /* loaded from: classes5.dex */
    public interface b {
        void a(View view);

        void b(View view);
    }

    public StickyNestedScrollView(Context context) {
        this(context, null);
    }

    private boolean f(View view) {
        if (l(view).contains("sticky")) {
            this.f37863a.add(view);
            return true;
        }
        return false;
    }

    private void g() {
        float min;
        Iterator<View> it = this.f37863a.iterator();
        View view = null;
        View view2 = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            View next = it.next();
            int m10 = (m(next) - getScrollY()) + (this.f37869g ? 0 : getPaddingTop());
            if (m10 <= 0) {
                if (view != null) {
                    if (m10 > (m(view) - getScrollY()) + (this.f37869g ? 0 : getPaddingTop())) {
                    }
                }
                view = next;
            } else {
                if (view2 != null) {
                    if (m10 < (m(view2) - getScrollY()) + (this.f37869g ? 0 : getPaddingTop())) {
                    }
                }
                view2 = next;
            }
        }
        if (view != null) {
            if (view2 == null) {
                min = 0.0f;
            } else {
                min = Math.min(0, ((m(view2) - getScrollY()) + (this.f37869g ? 0 : getPaddingTop())) - view.getHeight());
            }
            this.f37865c = min;
            View view3 = this.f37864b;
            if (view != view3) {
                if (view3 != null) {
                    List<b> list = this.f37874l;
                    if (list != null) {
                        for (b bVar : list) {
                            bVar.a(this.f37864b);
                        }
                    }
                    s();
                }
                this.f37867e = j(view);
                r(view);
                List<b> list2 = this.f37874l;
                if (list2 != null) {
                    for (b bVar2 : list2) {
                        bVar2.b(this.f37864b);
                    }
                }
            }
        } else if (this.f37864b != null) {
            List<b> list3 = this.f37874l;
            if (list3 != null) {
                for (b bVar3 : list3) {
                    bVar3.a(this.f37864b);
                }
            }
            s();
        }
    }

    private void h(View view) {
        if (f(view) || !(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i9 = 0; i9 < viewGroup.getChildCount(); i9++) {
            h(viewGroup.getChildAt(i9));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int i(View view) {
        int bottom = view.getBottom();
        while (view.getParent() != null && view.getParent() != getChildAt(0)) {
            view = (View) view.getParent();
            bottom += view.getBottom();
        }
        return bottom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int j(View view) {
        int left = view.getLeft();
        while (view.getParent() != null && view.getParent() != getChildAt(0)) {
            view = (View) view.getParent();
            left += view.getLeft();
        }
        return left;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int k(View view) {
        int right = view.getRight();
        while (view.getParent() != null && view.getParent() != getChildAt(0)) {
            view = (View) view.getParent();
            right += view.getRight();
        }
        return right;
    }

    private String l(View view) {
        return String.valueOf(view.getTag());
    }

    private int m(View view) {
        int top = view.getTop();
        while (view.getParent() != null && view.getParent() != getChildAt(0)) {
            view = (View) view.getParent();
            top += view.getTop();
        }
        return top;
    }

    private void n(View view) {
        view.setAlpha(0.0f);
    }

    private void o() {
        if (this.f37864b != null) {
            s();
        }
        this.f37863a.clear();
        h(getChildAt(0));
        g();
        invalidate();
    }

    private void q(View view) {
        view.setAlpha(1.0f);
    }

    private void r(View view) {
        this.f37864b = view;
        if (view != null) {
            if (l(view).contains("-hastransparency")) {
                n(this.f37864b);
            }
            if (l(this.f37864b).contains("-nonconstant")) {
                post(this.f37866d);
            }
        }
    }

    private void s() {
        if (l(this.f37864b).contains("-hastransparency")) {
            q(this.f37864b);
        }
        this.f37864b = null;
        removeCallbacks(this.f37866d);
    }

    public void addOnViewStickyListener(b bVar) {
        if (this.f37874l == null) {
            this.f37874l = new ArrayList();
        }
        this.f37874l.add(bVar);
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
        h(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f37864b != null) {
            canvas.save();
            canvas.translate(getPaddingLeft() + this.f37867e, getScrollY() + this.f37865c + (this.f37869g ? getPaddingTop() : 0));
            canvas.clipRect(0.0f, this.f37869g ? -this.f37865c : 0.0f, getWidth() - this.f37867e, this.f37864b.getHeight() + this.f37871i + 1);
            if (this.f37872j != null) {
                this.f37872j.setBounds(0, this.f37864b.getHeight(), this.f37864b.getWidth(), this.f37864b.getHeight() + this.f37871i);
                this.f37872j.draw(canvas);
            }
            canvas.clipRect(0.0f, this.f37869g ? -this.f37865c : 0.0f, getWidth(), this.f37864b.getHeight());
            if (l(this.f37864b).contains("-hastransparency")) {
                q(this.f37864b);
                this.f37864b.draw(canvas);
                n(this.f37864b);
            } else {
                this.f37864b.draw(canvas);
            }
            canvas.restore();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z10 = true;
        if (motionEvent.getAction() == 0) {
            this.f37868f = true;
        }
        if (this.f37868f) {
            boolean z11 = this.f37864b != null;
            this.f37868f = z11;
            if (z11) {
                this.f37868f = (motionEvent.getY() > ((float) this.f37864b.getHeight()) + this.f37865c || motionEvent.getX() < ((float) j(this.f37864b)) || motionEvent.getX() > ((float) k(this.f37864b))) ? false : false;
            }
        } else if (this.f37864b == null) {
            this.f37868f = false;
        }
        if (this.f37868f) {
            motionEvent.offsetLocation(0.0f, ((getScrollY() + this.f37865c) - m(this.f37864b)) * (-1.0f));
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f37866d);
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.widget.NestedScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i9, int i10, int i11, int i12) {
        super.onLayout(z10, i9, i10, i11, i12);
        if (!this.f37870h) {
            this.f37869g = true;
        }
        o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.widget.NestedScrollView, android.view.View
    public void onScrollChanged(int i9, int i10, int i11, int i12) {
        super.onScrollChanged(i9, i10, i11, i12);
        g();
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f37868f) {
            motionEvent.offsetLocation(0.0f, (getScrollY() + this.f37865c) - m(this.f37864b));
        }
        if (motionEvent.getAction() == 0) {
            this.f37873k = false;
        }
        if (this.f37873k) {
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            obtain.setAction(0);
            super.onTouchEvent(obtain);
            this.f37873k = false;
        }
        if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.f37873k = true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void p() {
        this.f37863a = new ArrayList<>();
    }

    public void removeOnViewStickyListener(b bVar) {
        List<b> list = this.f37874l;
        if (list != null) {
            list.remove(bVar);
        }
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z10) {
        super.setClipToPadding(z10);
        this.f37869g = z10;
        this.f37870h = true;
    }

    public void setShadowDrawable(Drawable drawable) {
        this.f37872j = drawable;
    }

    public void setShadowHeight(int i9) {
        this.f37871i = i9;
    }

    public StickyNestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842880);
    }

    public StickyNestedScrollView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f37866d = new a();
        this.f37871i = 10;
        this.f37873k = true;
        p();
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup
    public void addView(View view, int i9) {
        super.addView(view, i9);
        h(view);
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup
    public void addView(View view, int i9, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i9, layoutParams);
        h(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i9, int i10) {
        super.addView(view, i9, i10);
        h(view);
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, layoutParams);
        h(view);
    }
}
