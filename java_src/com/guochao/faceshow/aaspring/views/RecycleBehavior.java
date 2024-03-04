package com.guochao.faceshow.aaspring.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import java.util.List;
/* loaded from: classes3.dex */
public class RecycleBehavior extends CoordinatorLayout.Behavior<LinearLayout> {

    /* renamed from: a  reason: collision with root package name */
    private int f23989a;

    /* renamed from: b  reason: collision with root package name */
    private int f23990b;

    /* renamed from: c  reason: collision with root package name */
    private int f23991c;

    /* renamed from: d  reason: collision with root package name */
    private String f23992d = getClass().getSimpleName();

    public RecycleBehavior(Context context, AttributeSet attributeSet) {
        this.f23991c = (int) context.getResources().getDimension(R.dimen.main_topview_min_height);
        this.f23990b = (int) context.getResources().getDimension(R.dimen.dp_95);
        this.f23989a = context.getResources().getDimensionPixelOffset(R.dimen.dp_6);
    }

    private boolean a(View view) {
        return view != null && view.getId() == R.id.notification_area;
    }

    private View findFirstDependency(List<View> list) {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            View view = list.get(i9);
            if (a(view)) {
                return view;
            }
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: b */
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, View view) {
        return a(view);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: c */
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, View view) {
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
        float f10 = i9 / this.f23990b;
        linearLayout.setY((int) ((f10 * i9) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((int) (this.f23989a * f10))));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: d */
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, int i9) {
        return super.onLayoutChild(coordinatorLayout, linearLayout, i9);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: e */
    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, LinearLayout linearLayout, int i9, int i10, int i11, int i12) {
        View findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(linearLayout));
        if (findFirstDependency != null) {
            coordinatorLayout.onMeasureChild(linearLayout, i9, i10, View.MeasureSpec.makeMeasureSpec(((View.MeasureSpec.getSize(i11) - this.f23991c) - ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) findFirstDependency.getLayoutParams())).topMargin) + this.f23989a, View.MeasureSpec.getMode(i11)), i12);
            return true;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: f */
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull View view2, int i9, int i10) {
        findFirstDependency(coordinatorLayout.getDependencies(linearLayout));
        if (a(view2)) {
            return view2.getHeight() == this.f23991c && ((LinearLayoutManager) ((RecyclerView) coordinatorLayout.findViewById(R.id.recycler_view)).getLayoutManager()).findFirstCompletelyVisibleItemPosition() != 0;
        }
        return false;
    }
}
