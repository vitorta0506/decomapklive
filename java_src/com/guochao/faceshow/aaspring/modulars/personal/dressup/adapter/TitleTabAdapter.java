package com.guochao.faceshow.aaspring.modulars.personal.dressup.adapter;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class TitleTabAdapter extends FragmentPagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<String> f21484a;

    /* renamed from: b  reason: collision with root package name */
    private List<Fragment> f21485b;

    /* renamed from: c  reason: collision with root package name */
    private Context f21486c;

    public TitleTabAdapter(Context context, List<String> list, List<Fragment> list2, FragmentManager fragmentManager) {
        super(fragmentManager);
        this.f21486c = context;
        this.f21485b = list2;
        if (list != null) {
            this.f21484a = list;
        } else {
            new ArrayList();
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f21484a.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i9) {
        return this.f21485b.get(i9);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Nullable
    public CharSequence getPageTitle(int i9) {
        return this.f21484a.get(i9);
    }
}
