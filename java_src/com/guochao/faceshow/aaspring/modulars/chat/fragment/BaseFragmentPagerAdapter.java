package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.util.SparseArray;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import java.util.List;
/* loaded from: classes3.dex */
public class BaseFragmentPagerAdapter extends FragmentPagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<BaseFragment> f16875a;

    /* renamed from: b  reason: collision with root package name */
    private FragmentManager f16876b;

    /* renamed from: c  reason: collision with root package name */
    private SparseArray<String> f16877c;

    /* renamed from: d  reason: collision with root package name */
    private SparseArray<String> f16878d;

    public BaseFragmentPagerAdapter(FragmentManager fragmentManager, List<BaseFragment> list) {
        super(fragmentManager);
        this.f16876b = fragmentManager;
        this.f16875a = list;
        this.f16877c = new SparseArray<>();
        this.f16878d = new SparseArray<>();
        c();
        d();
    }

    private void b() {
        d();
        notifyDataSetChanged();
        c();
    }

    private void c() {
        this.f16877c.clear();
        for (int i9 = 0; i9 < this.f16875a.size(); i9++) {
            this.f16877c.put(Long.valueOf(getItemId(i9)).intValue(), String.valueOf(i9));
        }
    }

    private void d() {
        this.f16878d.clear();
        for (int i9 = 0; i9 < this.f16875a.size(); i9++) {
            this.f16878d.put(Long.valueOf(getItemId(i9)).intValue(), String.valueOf(i9));
        }
    }

    public void a(int i9, BaseFragment baseFragment) {
        this.f16875a.add(i9, baseFragment);
        b();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f16875a.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i9) {
        List<BaseFragment> list = this.f16875a;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.f16875a.get(i9);
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public long getItemId(int i9) {
        List<BaseFragment> list = this.f16875a;
        if (list == null || list.size() <= 0) {
            return 0L;
        }
        return this.f16875a.get(i9).hashCode();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        int hashCode = obj.hashCode();
        String str = this.f16878d.get(hashCode);
        if (str == null) {
            return -2;
        }
        int size = this.f16877c.size();
        for (int i9 = 0; i9 < size; i9++) {
            int keyAt = this.f16877c.keyAt(i9);
            if (keyAt == hashCode) {
                return str.equals(this.f16877c.get(keyAt)) ? -1 : -2;
            }
        }
        return -1;
    }
}
