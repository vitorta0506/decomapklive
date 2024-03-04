package com.guochao.faceshow.adapter;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import java.util.List;
/* loaded from: classes3.dex */
public class ViewPagerAdapter extends FragmentPagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<Fragment> f25026a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f25027b;

    public ViewPagerAdapter(FragmentManager fragmentManager, List<Fragment> list, List<String> list2) {
        super(fragmentManager);
        this.f25026a = list;
        this.f25027b = list2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f25026a.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i9) {
        return this.f25026a.get(i9);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i9) {
        return this.f25027b.get(i9);
    }
}
