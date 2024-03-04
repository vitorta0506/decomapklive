package xd;

import ae.c;
import ae.d;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.legacy.widget.Space;
import androidx.viewpager.widget.ViewPager;
import java.util.Collections;
import java.util.LinkedList;
import wd.e;
import wd.i;
import wd.k;
/* loaded from: classes4.dex */
public class a implements e, zd.a, ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a  reason: collision with root package name */
    protected View f59688a;

    /* renamed from: b  reason: collision with root package name */
    protected View f59689b;

    /* renamed from: c  reason: collision with root package name */
    protected View f59690c;

    /* renamed from: d  reason: collision with root package name */
    protected View f59691d;

    /* renamed from: e  reason: collision with root package name */
    protected View f59692e;

    /* renamed from: f  reason: collision with root package name */
    protected int f59693f = 0;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f59694g = true;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f59695h = true;

    /* renamed from: i  reason: collision with root package name */
    protected b f59696i = new b();

    public a(@NonNull View view) {
        this.f59690c = view;
        this.f59689b = view;
        this.f59688a = view;
    }

    @Override // wd.e
    public void a(MotionEvent motionEvent) {
        PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
        pointF.offset(-this.f59688a.getLeft(), -this.f59688a.getTop());
        View view = this.f59690c;
        View view2 = this.f59688a;
        if (view != view2) {
            this.f59690c = j(view2, pointF, view);
        }
        if (this.f59690c == this.f59688a) {
            this.f59696i.f59697a = null;
        } else {
            this.f59696i.f59697a = pointF;
        }
    }

    @Override // wd.e
    public void b(boolean z10) {
        this.f59696i.f59699c = z10;
    }

    @Override // wd.e
    public ValueAnimator.AnimatorUpdateListener c(int i9) {
        View view = this.f59690c;
        if (view == null || i9 == 0) {
            return null;
        }
        if ((i9 >= 0 || !d.c(view)) && (i9 <= 0 || !d.d(this.f59690c))) {
            return null;
        }
        this.f59693f = i9;
        return this;
    }

    @Override // wd.e
    public boolean canLoadMore() {
        return this.f59695h && this.f59696i.b(this.f59688a);
    }

    @Override // wd.e
    public boolean canRefresh() {
        return this.f59694g && this.f59696i.a(this.f59688a);
    }

    @Override // wd.e
    @NonNull
    public View d() {
        return this.f59690c;
    }

    @Override // wd.e
    public void e(k kVar) {
        if (kVar instanceof b) {
            this.f59696i = (b) kVar;
        } else {
            this.f59696i.f59698b = kVar;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // wd.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(int r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = 1
            r1 = -1
            r2 = 0
            r3 = 0
            if (r7 == r1) goto L21
            android.view.View r4 = r5.f59689b
            android.view.View r7 = r4.findViewById(r7)
            if (r7 == 0) goto L21
            if (r6 <= 0) goto L16
            float r4 = (float) r6
            r7.setTranslationY(r4)
            r7 = 1
            goto L22
        L16:
            float r4 = r7.getTranslationY()
            int r4 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r4 <= 0) goto L21
            r7.setTranslationY(r3)
        L21:
            r7 = 0
        L22:
            if (r8 == r1) goto L3e
            android.view.View r1 = r5.f59689b
            android.view.View r8 = r1.findViewById(r8)
            if (r8 == 0) goto L3e
            if (r6 >= 0) goto L33
            float r7 = (float) r6
            r8.setTranslationY(r7)
            goto L3f
        L33:
            float r0 = r8.getTranslationY()
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L3e
            r8.setTranslationY(r3)
        L3e:
            r0 = r7
        L3f:
            if (r0 != 0) goto L48
            android.view.View r7 = r5.f59689b
            float r8 = (float) r6
            r7.setTranslationY(r8)
            goto L4d
        L48:
            android.view.View r7 = r5.f59689b
            r7.setTranslationY(r3)
        L4d:
            android.view.View r7 = r5.f59691d
            if (r7 == 0) goto L59
            int r8 = java.lang.Math.max(r2, r6)
            float r8 = (float) r8
            r7.setTranslationY(r8)
        L59:
            android.view.View r7 = r5.f59692e
            if (r7 == 0) goto L65
            int r6 = java.lang.Math.min(r2, r6)
            float r6 = (float) r6
            r7.setTranslationY(r6)
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: xd.a.f(int, int, int):void");
    }

    @Override // zd.a
    public void g(boolean z10, boolean z11) {
        this.f59694g = z10;
        this.f59695h = z11;
    }

    @Override // wd.e
    @NonNull
    public View getView() {
        return this.f59688a;
    }

    @Override // wd.e
    public void h(i iVar, View view, View view2) {
        i(this.f59688a, iVar);
        if (view == null && view2 == null) {
            return;
        }
        this.f59691d = view;
        this.f59692e = view2;
        FrameLayout frameLayout = new FrameLayout(this.f59688a.getContext());
        iVar.k().getLayout().removeView(this.f59688a);
        ViewGroup.LayoutParams layoutParams = this.f59688a.getLayoutParams();
        frameLayout.addView(this.f59688a, -1, -1);
        iVar.k().getLayout().addView(frameLayout, layoutParams);
        this.f59688a = frameLayout;
        if (view != null) {
            view.setClickable(true);
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            int indexOfChild = viewGroup.indexOfChild(view);
            viewGroup.removeView(view);
            layoutParams2.height = ae.e.d(view);
            viewGroup.addView(new Space(this.f59688a.getContext()), indexOfChild, layoutParams2);
            frameLayout.addView(view);
        }
        if (view2 != null) {
            view2.setClickable(true);
            ViewGroup.LayoutParams layoutParams3 = view2.getLayoutParams();
            ViewGroup viewGroup2 = (ViewGroup) view2.getParent();
            int indexOfChild2 = viewGroup2.indexOfChild(view2);
            viewGroup2.removeView(view2);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(layoutParams3);
            layoutParams3.height = ae.e.d(view2);
            viewGroup2.addView(new Space(this.f59688a.getContext()), indexOfChild2, layoutParams3);
            layoutParams4.gravity = 80;
            frameLayout.addView(view2, layoutParams4);
        }
    }

    protected void i(View view, i iVar) {
        boolean isInEditMode = this.f59688a.isInEditMode();
        View view2 = null;
        while (true) {
            if (view2 != null && (!(view2 instanceof NestedScrollingParent) || (view2 instanceof NestedScrollingChild))) {
                break;
            }
            view = k(view, view2 == null);
            if (view == view2) {
                break;
            }
            if (!isInEditMode) {
                c.a(view, iVar, this);
            }
            view2 = view;
        }
        if (view2 != null) {
            this.f59690c = view2;
        }
    }

    protected View j(View view, PointF pointF, View view2) {
        if ((view instanceof ViewGroup) && pointF != null) {
            ViewGroup viewGroup = (ViewGroup) view;
            PointF pointF2 = new PointF();
            for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount - 1);
                if (d.e(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    if ((childAt instanceof ViewPager) || !ae.e.b(childAt)) {
                        pointF.offset(pointF2.x, pointF2.y);
                        View j10 = j(childAt, pointF, view2);
                        pointF.offset(-pointF2.x, -pointF2.y);
                        return j10;
                    }
                    return childAt;
                }
            }
        }
        return view2;
    }

    protected View k(View view, boolean z10) {
        LinkedList linkedList = new LinkedList(Collections.singletonList(view));
        View view2 = null;
        while (!linkedList.isEmpty() && view2 == null) {
            View view3 = (View) linkedList.poll();
            if (view3 != null) {
                if ((z10 || view3 != view) && ae.e.b(view3)) {
                    view2 = view3;
                } else if (view3 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view3;
                    for (int i9 = 0; i9 < viewGroup.getChildCount(); i9++) {
                        linkedList.add(viewGroup.getChildAt(i9));
                    }
                }
            }
        }
        return view2 == null ? view : view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        try {
            View view = this.f59690c;
            if (view instanceof AbsListView) {
                ae.e.e((AbsListView) view, intValue - this.f59693f);
            } else {
                view.scrollBy(0, intValue - this.f59693f);
            }
        } catch (Throwable unused) {
        }
        this.f59693f = intValue;
    }
}
