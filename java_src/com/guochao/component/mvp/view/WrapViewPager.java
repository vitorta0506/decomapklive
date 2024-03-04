package com.guochao.component.mvp.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.guochao.component.mvp.adapter.ViewPagerAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0014¨\u0006\f"}, d2 = {"Lcom/guochao/component/mvp/view/WrapViewPager;", "Landroidx/viewpager/widget/ViewPager;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "onMeasure", "", "widthMeasureSpec", "", "heightMeasureSpec", "component_mvp_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WrapViewPager extends ViewPager {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrapViewPager(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public void onMeasure(int i9, int i10) {
        ViewPagerAdapter viewPagerAdapter;
        View view;
        if (getAdapter() != null) {
            PagerAdapter adapter = getAdapter();
            Intrinsics.checkNotNull(adapter, "null cannot be cast to non-null type com.guochao.component.mvp.adapter.ViewPagerAdapter");
            viewPagerAdapter = (ViewPagerAdapter) adapter;
        } else {
            viewPagerAdapter = null;
        }
        int i11 = 0;
        if (viewPagerAdapter != null && getCurrentItem() < viewPagerAdapter.getCount() && (view = viewPagerAdapter.getItem(getCurrentItem()).getView()) != null) {
            view.measure(i9, View.MeasureSpec.makeMeasureSpec(0, 0));
            i11 = view.getMeasuredHeight();
        }
        super.onMeasure(i9, View.MeasureSpec.makeMeasureSpec(i11, BasicMeasure.EXACTLY));
    }
}
