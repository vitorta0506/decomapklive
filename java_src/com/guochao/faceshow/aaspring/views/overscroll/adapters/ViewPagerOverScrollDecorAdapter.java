package com.guochao.faceshow.aaspring.views.overscroll.adapters;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
import pa.a;
/* loaded from: classes3.dex */
public class ViewPagerOverScrollDecorAdapter implements a, ViewPager.OnPageChangeListener {

    /* renamed from: a  reason: collision with root package name */
    protected final ViewPager f24431a;

    /* renamed from: b  reason: collision with root package name */
    protected int f24432b;

    /* renamed from: c  reason: collision with root package name */
    protected float f24433c;

    @Override // pa.a
    public boolean a() {
        return this.f24432b == this.f24431a.getAdapter().getCount() - 1 && this.f24433c == 0.0f;
    }

    @Override // pa.a
    public boolean b() {
        return this.f24432b == 0 && this.f24433c == 0.0f;
    }

    @Override // pa.a
    public View getView() {
        return this.f24431a;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i9, float f10, int i10) {
        this.f24432b = i9;
        this.f24433c = f10;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
    }
}
