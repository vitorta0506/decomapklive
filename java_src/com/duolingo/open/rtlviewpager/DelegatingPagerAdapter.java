package com.duolingo.open.rtlviewpager;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.PagerAdapter;
/* loaded from: classes.dex */
public class DelegatingPagerAdapter extends PagerAdapter {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final PagerAdapter f4798a;

    /* loaded from: classes.dex */
    private static class b extends DataSetObserver {

        /* renamed from: a  reason: collision with root package name */
        final DelegatingPagerAdapter f4799a;

        @Override // android.database.DataSetObserver
        public void onChanged() {
            DelegatingPagerAdapter delegatingPagerAdapter = this.f4799a;
            if (delegatingPagerAdapter != null) {
                delegatingPagerAdapter.b();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            onChanged();
        }

        private b(DelegatingPagerAdapter delegatingPagerAdapter) {
            this.f4799a = delegatingPagerAdapter;
        }
    }

    public DelegatingPagerAdapter(@NonNull PagerAdapter pagerAdapter) {
        this.f4798a = pagerAdapter;
        pagerAdapter.registerDataSetObserver(new b());
    }

    @NonNull
    public PagerAdapter a() {
        return this.f4798a;
    }

    void b() {
        super.notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i9, Object obj) {
        this.f4798a.destroyItem(viewGroup, i9, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        this.f4798a.finishUpdate(viewGroup);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f4798a.getCount();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return this.f4798a.getItemPosition(obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i9) {
        return this.f4798a.getPageTitle(i9);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public float getPageWidth(int i9) {
        return this.f4798a.getPageWidth(i9);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i9) {
        return this.f4798a.instantiateItem(viewGroup, i9);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return this.f4798a.isViewFromObject(view, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void notifyDataSetChanged() {
        this.f4798a.notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.f4798a.registerDataSetObserver(dataSetObserver);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        this.f4798a.restoreState(parcelable, classLoader);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        return this.f4798a.saveState();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i9, Object obj) {
        this.f4798a.setPrimaryItem(viewGroup, i9, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
        this.f4798a.startUpdate(viewGroup);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.f4798a.unregisterDataSetObserver(dataSetObserver);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Deprecated
    public void destroyItem(View view, int i9, Object obj) {
        this.f4798a.destroyItem(view, i9, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Deprecated
    public void finishUpdate(View view) {
        this.f4798a.finishUpdate(view);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Deprecated
    public Object instantiateItem(View view, int i9) {
        return this.f4798a.instantiateItem(view, i9);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Deprecated
    public void setPrimaryItem(View view, int i9, Object obj) {
        this.f4798a.setPrimaryItem(view, i9, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Deprecated
    public void startUpdate(View view) {
        this.f4798a.startUpdate(view);
    }
}
