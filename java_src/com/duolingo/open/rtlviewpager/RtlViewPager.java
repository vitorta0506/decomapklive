package com.duolingo.open.rtlviewpager;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.os.ParcelableCompat;
import androidx.core.os.ParcelableCompatCreatorCallbacks;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.HashMap;
/* loaded from: classes.dex */
public class RtlViewPager extends ViewPager {

    /* renamed from: a  reason: collision with root package name */
    private int f4800a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<ViewPager.OnPageChangeListener, c> f4801b;

    /* loaded from: classes.dex */
    private class c implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final ViewPager.OnPageChangeListener f4803a;

        public c(ViewPager.OnPageChangeListener onPageChangeListener) {
            this.f4803a = onPageChangeListener;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
            this.f4803a.onPageScrollStateChanged(i9);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
            int width = RtlViewPager.this.getWidth();
            PagerAdapter adapter = RtlViewPager.super.getAdapter();
            if (RtlViewPager.this.d() && adapter != null) {
                int count = adapter.getCount();
                float f11 = width;
                int pageWidth = ((int) ((1.0f - adapter.getPageWidth(i9)) * f11)) + i10;
                while (i9 < count && pageWidth > 0) {
                    i9++;
                    pageWidth -= (int) (adapter.getPageWidth(i9) * f11);
                }
                i9 = (count - i9) - 1;
                i10 = -pageWidth;
                f10 = i10 / (f11 * adapter.getPageWidth(i9));
            }
            this.f4803a.onPageScrolled(i9, f10, i10);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            PagerAdapter adapter = RtlViewPager.super.getAdapter();
            if (RtlViewPager.this.d() && adapter != null) {
                i9 = (adapter.getCount() - i9) - 1;
            }
            this.f4803a.onPageSelected(i9);
        }
    }

    public RtlViewPager(Context context) {
        super(context);
        this.f4800a = 0;
        this.f4801b = new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        return this.f4800a == 1;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        c cVar = new c(onPageChangeListener);
        this.f4801b.put(onPageChangeListener, cVar);
        super.addOnPageChangeListener(cVar);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void clearOnPageChangeListeners() {
        super.clearOnPageChangeListeners();
        this.f4801b.clear();
    }

    @Override // androidx.viewpager.widget.ViewPager
    public PagerAdapter getAdapter() {
        b bVar = (b) super.getAdapter();
        if (bVar == null) {
            return null;
        }
        return bVar.a();
    }

    @Override // androidx.viewpager.widget.ViewPager
    public int getCurrentItem() {
        int currentItem = super.getCurrentItem();
        PagerAdapter adapter = super.getAdapter();
        return (adapter == null || !d()) ? currentItem : (adapter.getCount() - currentItem) - 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public void onMeasure(int i9, int i10) {
        if (View.MeasureSpec.getMode(i10) == 0) {
            int i11 = 0;
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                childAt.measure(i9, View.MeasureSpec.makeMeasureSpec(0, 0));
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredHeight > i11) {
                    i11 = measuredHeight;
                }
            }
            i10 = View.MeasureSpec.makeMeasureSpec(i11, BasicMeasure.EXACTLY);
        }
        super.onMeasure(i9, i10);
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f4800a = savedState.mLayoutDirection;
        super.onRestoreInstanceState(savedState.mViewPagerSavedState);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i9) {
        super.onRtlPropertiesChanged(i9);
        int i10 = i9 != 1 ? 0 : 1;
        if (i10 != this.f4800a) {
            PagerAdapter adapter = super.getAdapter();
            int currentItem = adapter != null ? getCurrentItem() : 0;
            this.f4800a = i10;
            if (adapter != null) {
                adapter.notifyDataSetChanged();
                setCurrentItem(currentItem);
            }
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.f4800a);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void removeOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        c remove = this.f4801b.remove(onPageChangeListener);
        if (remove != null) {
            super.removeOnPageChangeListener(remove);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setAdapter(PagerAdapter pagerAdapter) {
        if (pagerAdapter != null) {
            pagerAdapter = new b(pagerAdapter);
        }
        super.setAdapter(pagerAdapter);
        setCurrentItem(0);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i9, boolean z10) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null && d()) {
            i9 = (adapter.getCount() - i9) - 1;
        }
        super.setCurrentItem(i9, z10);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        super.setOnPageChangeListener(new c(onPageChangeListener));
    }

    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new a());
        private final int mLayoutDirection;
        private final Parcelable mViewPagerSavedState;

        /* loaded from: classes.dex */
        static class a implements ParcelableCompatCreatorCallbacks<SavedState> {
            a() {
            }

            @Override // androidx.core.os.ParcelableCompatCreatorCallbacks
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // androidx.core.os.ParcelableCompatCreatorCallbacks
            /* renamed from: b */
            public SavedState[] newArray(int i9) {
                return new SavedState[i9];
            }
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeParcelable(this.mViewPagerSavedState, i9);
            parcel.writeInt(this.mLayoutDirection);
        }

        private SavedState(Parcelable parcelable, int i9) {
            this.mViewPagerSavedState = parcelable;
            this.mLayoutDirection = i9;
        }

        private SavedState(Parcel parcel, ClassLoader classLoader) {
            this.mViewPagerSavedState = parcel.readParcelable(classLoader == null ? getClass().getClassLoader() : classLoader);
            this.mLayoutDirection = parcel.readInt();
        }
    }

    /* loaded from: classes.dex */
    private class b extends DelegatingPagerAdapter {
        public b(@NonNull PagerAdapter pagerAdapter) {
            super(pagerAdapter);
        }

        @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i9, Object obj) {
            if (RtlViewPager.this.d()) {
                i9 = (getCount() - i9) - 1;
            }
            super.destroyItem(viewGroup, i9, obj);
        }

        @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object obj) {
            int itemPosition = super.getItemPosition(obj);
            if (RtlViewPager.this.d()) {
                if (itemPosition == -1 || itemPosition == -2) {
                    return -2;
                }
                return (getCount() - itemPosition) - 1;
            }
            return itemPosition;
        }

        @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i9) {
            if (RtlViewPager.this.d()) {
                i9 = (getCount() - i9) - 1;
            }
            return super.getPageTitle(i9);
        }

        @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public float getPageWidth(int i9) {
            if (RtlViewPager.this.d()) {
                i9 = (getCount() - i9) - 1;
            }
            return super.getPageWidth(i9);
        }

        @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i9) {
            if (RtlViewPager.this.d()) {
                i9 = (getCount() - i9) - 1;
            }
            return super.instantiateItem(viewGroup, i9);
        }

        @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void setPrimaryItem(View view, int i9, Object obj) {
            if (RtlViewPager.this.d()) {
                i9 = (getCount() - i9) - 1;
            }
            super.setPrimaryItem(view, i9, obj);
        }

        @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void destroyItem(View view, int i9, Object obj) {
            if (RtlViewPager.this.d()) {
                i9 = (getCount() - i9) - 1;
            }
            super.destroyItem(view, i9, obj);
        }

        @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(View view, int i9) {
            if (RtlViewPager.this.d()) {
                i9 = (getCount() - i9) - 1;
            }
            return super.instantiateItem(view, i9);
        }

        @Override // com.duolingo.open.rtlviewpager.DelegatingPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void setPrimaryItem(ViewGroup viewGroup, int i9, Object obj) {
            if (RtlViewPager.this.d()) {
                i9 = (getCount() - i9) - 1;
            }
            super.setPrimaryItem(viewGroup, i9, obj);
        }
    }

    public RtlViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4800a = 0;
        this.f4801b = new HashMap<>();
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i9) {
        PagerAdapter adapter = super.getAdapter();
        if (adapter != null && d()) {
            i9 = (adapter.getCount() - i9) - 1;
        }
        super.setCurrentItem(i9);
    }
}
