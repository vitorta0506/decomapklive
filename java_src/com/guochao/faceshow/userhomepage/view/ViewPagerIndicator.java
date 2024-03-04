package com.guochao.faceshow.userhomepage.view;

import android.graphics.drawable.Drawable;
import android.widget.LinearLayout;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes4.dex */
public class ViewPagerIndicator implements ViewPager.OnPageChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private LinearLayout f26549a;

    /* renamed from: b  reason: collision with root package name */
    private Drawable f26550b;

    /* renamed from: c  reason: collision with root package name */
    private Drawable f26551c;

    /* renamed from: d  reason: collision with root package name */
    private int f26552d;

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i9, float f10, int i10) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
        LinearLayout linearLayout = this.f26549a;
        if (linearLayout == null) {
            return;
        }
        int childCount = i9 % linearLayout.getChildCount();
        if (this.f26549a.getChildAt(this.f26552d) != null) {
            this.f26549a.getChildAt(this.f26552d).setBackgroundDrawable(this.f26551c);
        }
        if (this.f26549a.getChildAt(childCount) != null) {
            this.f26549a.getChildAt(childCount).setBackgroundDrawable(this.f26550b);
        }
        this.f26552d = childCount;
    }
}
