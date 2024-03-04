package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class HeadViewBehavior extends CoordinatorLayout.Behavior<LinearLayout> {

    /* renamed from: b  reason: collision with root package name */
    private int f23752b;

    /* renamed from: c  reason: collision with root package name */
    private int f23753c;

    /* renamed from: d  reason: collision with root package name */
    private final OverScroller f23754d;

    /* renamed from: f  reason: collision with root package name */
    private a f23756f;

    /* renamed from: h  reason: collision with root package name */
    private WeakReference<CoordinatorLayout> f23758h;

    /* renamed from: i  reason: collision with root package name */
    private WeakReference<LinearLayout> f23759i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f23760j;

    /* renamed from: k  reason: collision with root package name */
    private float f23761k;

    /* renamed from: a  reason: collision with root package name */
    private String f23751a = getClass().getSimpleName();

    /* renamed from: e  reason: collision with root package name */
    private boolean f23755e = true;

    /* renamed from: g  reason: collision with root package name */
    private int f23757g = 400;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final CoordinatorLayout f23762a;

        /* renamed from: b  reason: collision with root package name */
        private final LinearLayout f23763b;

        /* renamed from: c  reason: collision with root package name */
        CoordinatorLayout.LayoutParams f23764c;

        a(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, CoordinatorLayout.LayoutParams layoutParams) {
            this.f23762a = coordinatorLayout;
            this.f23763b = linearLayout;
            this.f23764c = layoutParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f23763b == null || HeadViewBehavior.this.f23754d == null || !HeadViewBehavior.this.f23754d.computeScrollOffset()) {
                return;
            }
            HeadViewBehavior.this.j(this.f23762a, this.f23763b, this.f23764c, Math.abs(HeadViewBehavior.this.f23754d.getCurrY()));
            ViewCompat.postOnAnimation(this.f23763b, this);
        }
    }

    public HeadViewBehavior(Context context, AttributeSet attributeSet) {
        this.f23753c = (int) context.getResources().getDimension(R.dimen.main_topview_min_height);
        this.f23752b = (int) context.getResources().getDimension(R.dimen.dp_95);
        this.f23754d = new OverScroller(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(CoordinatorLayout coordinatorLayout, @NonNull LinearLayout linearLayout, CoordinatorLayout.LayoutParams layoutParams, int i9) {
        ((ViewGroup.MarginLayoutParams) layoutParams).height = i9;
        linearLayout.setLayoutParams(layoutParams);
    }

    private void k(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, int i9, CoordinatorLayout.LayoutParams layoutParams) {
        if (this.f23755e) {
            if (!this.f23754d.isFinished()) {
                this.f23754d.forceFinished(true);
            }
            LogUtils.e("moveDirection", this.f23760j + "");
            if (i9 != 0) {
                if (this.f23760j) {
                    int i10 = this.f23752b;
                    if (i9 > i10 / 10) {
                        this.f23754d.startScroll(0, i9, 0, this.f23753c - i9, this.f23757g);
                    } else {
                        this.f23754d.startScroll(0, i9, 0, i10 - i9, this.f23757g);
                    }
                } else {
                    int i11 = this.f23752b;
                    if (i9 > i11 / 10) {
                        this.f23754d.startScroll(0, i9, 0, i11 - i9, this.f23757g);
                    } else {
                        this.f23754d.startScroll(0, i9, 0, this.f23753c - i9, this.f23757g);
                    }
                }
            }
            if (this.f23756f == null) {
                this.f23756f = new a(coordinatorLayout, linearLayout, layoutParams);
            }
            ViewCompat.postOnAnimation(linearLayout, this.f23756f);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: c */
    public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull LinearLayout linearLayout, @NonNull View view) {
        this.f23761k = view.getY();
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: d */
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, int i9) {
        if (this.f23758h == null) {
            this.f23758h = new WeakReference<>(coordinatorLayout);
        }
        if (this.f23759i == null) {
            this.f23759i = new WeakReference<>(linearLayout);
        }
        return super.onLayoutChild(coordinatorLayout, linearLayout, i9);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: e */
    public boolean onNestedFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull LinearLayout linearLayout, @NonNull View view, float f10, float f11, boolean z10) {
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: f */
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull LinearLayout linearLayout, @NonNull View view, float f10, float f11) {
        int i9;
        int i10;
        if (this.f23755e && ((LinearLayoutManager) ((RecyclerView) view).getLayoutManager()).findFirstCompletelyVisibleItemPosition() == 0) {
            if (!this.f23754d.isFinished()) {
                this.f23754d.forceFinished(true);
            }
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) linearLayout.getLayoutParams();
            if (this.f23756f == null) {
                this.f23756f = new a(coordinatorLayout, linearLayout, layoutParams);
            }
            int i11 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            if (f11 > 0.0f && i11 != (i10 = this.f23753c)) {
                this.f23754d.startScroll(0, i11, 0, i11 - i10, this.f23757g);
                ViewCompat.postOnAnimation(linearLayout, this.f23756f);
                return true;
            } else if (f11 >= 0.0f || i11 == (i9 = this.f23752b)) {
                return false;
            } else {
                this.f23754d.startScroll(0, i11, 0, i9 - i11, this.f23757g);
                ViewCompat.postOnAnimation(linearLayout, this.f23756f);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: g */
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull LinearLayout linearLayout, @NonNull View view, int i9, int i10, @NonNull int[] iArr, int i11) {
        int i12;
        int i13;
        if (this.f23755e) {
            if (!this.f23754d.isFinished()) {
                this.f23754d.forceFinished(true);
            }
            if (view instanceof RecyclerView) {
                int findFirstCompletelyVisibleItemPosition = ((LinearLayoutManager) ((RecyclerView) view).getLayoutManager()).findFirstCompletelyVisibleItemPosition();
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) linearLayout.getLayoutParams();
                int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                int i15 = i14 - i10;
                this.f23760j = i10 > 0;
                if (i10 > 0 && i14 >= (i13 = this.f23753c)) {
                    if (i15 <= i13) {
                        i15 = i13;
                    }
                    j(coordinatorLayout, linearLayout, layoutParams, i15);
                    iArr[1] = i14 - i15;
                    this.f23760j = i15 > this.f23753c;
                } else if (i10 >= 0 || i14 > (i12 = this.f23752b) || findFirstCompletelyVisibleItemPosition != 0) {
                } else {
                    if (i15 > i12) {
                        i15 = i12;
                    }
                    this.f23760j = i15 > i12;
                    j(coordinatorLayout, linearLayout, layoutParams, i15);
                    iArr[1] = i10;
                }
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: h */
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull View view2, int i9, int i10) {
        if (view2 instanceof RecyclerView) {
            int findFirstCompletelyVisibleItemPosition = ((LinearLayoutManager) ((RecyclerView) view2).getLayoutManager()).findFirstCompletelyVisibleItemPosition();
            if (!this.f23754d.isFinished()) {
                this.f23754d.forceFinished(true);
            }
            return findFirstCompletelyVisibleItemPosition == 0 && this.f23755e;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: i */
    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull LinearLayout linearLayout, @NonNull View view, int i9) {
        super.onStopNestedScroll(coordinatorLayout, linearLayout, view, i9);
        if (!this.f23754d.isFinished()) {
            this.f23754d.forceFinished(true);
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) linearLayout.getLayoutParams();
        k(coordinatorLayout, linearLayout, ((ViewGroup.MarginLayoutParams) layoutParams).height, layoutParams);
    }
}
