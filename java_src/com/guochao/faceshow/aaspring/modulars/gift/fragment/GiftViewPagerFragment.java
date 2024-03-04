package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.ViewPagerUtils;
import com.guochao.faceshow.aaspring.views.HalfHeightViewPager;
import com.guochao.faceshow.views.GCIndicatorView;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class GiftViewPagerFragment extends BaseFragment implements u8.c, com.guochao.faceshow.aaspring.modulars.gift.fragment.c {

    /* renamed from: a  reason: collision with root package name */
    public int f17873a;

    /* renamed from: c  reason: collision with root package name */
    private ResourceCategoryItem f17875c;

    /* renamed from: d  reason: collision with root package name */
    public HalfHeightViewPager f17876d;

    /* renamed from: f  reason: collision with root package name */
    GiftListFragment f17878f;
    @BindView
    GCIndicatorView mPageIndicatorView;

    /* renamed from: b  reason: collision with root package name */
    List<Fragment> f17874b = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    List<List<ResourceListItemBean>> f17877e = new ArrayList();

    /* loaded from: classes3.dex */
    class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
            GiftViewPagerFragment giftViewPagerFragment = GiftViewPagerFragment.this;
            if (giftViewPagerFragment.f17878f == null) {
                Fragment fragmentAt = ViewPagerUtils.getFragmentAt(giftViewPagerFragment.getChildFragmentManager(), GiftViewPagerFragment.this.f17876d, 0);
                if (fragmentAt instanceof GiftListFragment) {
                    GiftViewPagerFragment.this.f17878f = (GiftListFragment) fragmentAt;
                }
            }
            GiftListFragment giftListFragment = GiftViewPagerFragment.this.f17878f;
            if (giftListFragment != null) {
                if (i9 == 0 && f10 == 0.0f) {
                    giftListFragment.m2();
                    GiftViewPagerFragment.this.f17878f.i2();
                    return;
                }
                if (i9 == 0) {
                    giftListFragment.Y1(false);
                }
                GiftViewPagerFragment.this.f17878f.i2();
            }
            GiftViewPagerFragment.this.S1();
            if (GiftViewPagerFragment.this.getParentFragment() instanceof GiftFragment) {
                ((GiftFragment) GiftViewPagerFragment.this.getParentFragment()).giftComboView.reset();
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            if (GiftViewPagerFragment.this.getParentFragment() instanceof GiftFragment) {
                ((GiftFragment) GiftViewPagerFragment.this.getParentFragment()).luckyGiftHeader.setVisibility(8);
            }
            if (i9 < GiftViewPagerFragment.this.f17874b.size()) {
                Fragment fragment = GiftViewPagerFragment.this.f17874b.get(i9);
                if (fragment instanceof GiftListFragment) {
                    GiftViewPagerFragment.this.R1(((GiftListFragment) fragment).getList());
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        ResourceCategoryItem getCategoryItem(int i9);
    }

    /* loaded from: classes3.dex */
    class c extends FragmentPagerAdapter {
        public c(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return GiftViewPagerFragment.this.f17874b.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i9) {
            return GiftViewPagerFragment.this.f17874b.get(i9);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(@NonNull Object obj) {
            return -2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R1(List<ResourceListItemBean> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (ResourceListItemBean resourceListItemBean : list) {
            if (resourceListItemBean.isMVPGift()) {
                if (getCurrentUser().isMvpGift()) {
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_gift_open_role, "0");
                } else {
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.mvp_gift_open_role, "1");
                }
            }
        }
    }

    private ResourceListItemBean T1(List<ResourceListItemBean> list, ResourceListItemBean resourceListItemBean) {
        if (resourceListItemBean == null) {
            return null;
        }
        for (ResourceListItemBean resourceListItemBean2 : list) {
            if (resourceListItemBean2 != null && resourceListItemBean2.getId() == resourceListItemBean.getId()) {
                return resourceListItemBean2;
            }
        }
        return null;
    }

    private void V1(ResourceListItemBean resourceListItemBean) {
        if (this.f17877e.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(resourceListItemBean);
            for (int i9 = 1; i9 < 8; i9++) {
                arrayList.add(null);
            }
            this.f17877e.add(arrayList);
            this.f17874b.add(GiftListFragment.Z1(this.f17877e.size() - 1));
            return;
        }
        this.f17877e.get(0).add(0, resourceListItemBean);
        for (int i10 = 0; i10 < this.f17877e.size(); i10++) {
            if (this.f17877e.get(i10).size() > 8 && i10 < this.f17877e.size() - 1) {
                ResourceListItemBean resourceListItemBean2 = this.f17877e.get(i10).get(this.f17877e.get(i10).size() - 1);
                this.f17877e.get(i10).remove(resourceListItemBean2);
                this.f17877e.get(i10 + 1).add(0, resourceListItemBean2);
            } else if (this.f17877e.get(i10).size() > 8) {
                ResourceListItemBean resourceListItemBean3 = this.f17877e.get(i10).get(this.f17877e.get(i10).size() - 1);
                this.f17877e.get(i10).remove(resourceListItemBean3);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(resourceListItemBean3);
                for (int i11 = 1; i11 < 8; i11++) {
                    arrayList2.add(null);
                }
                this.f17877e.add(arrayList2);
                this.f17874b.add(GiftListFragment.Z1(this.f17877e.size() - 1));
            }
        }
    }

    public static GiftViewPagerFragment Y1(int i9, ResourceCategoryItem resourceCategoryItem) {
        GiftViewPagerFragment giftViewPagerFragment = new GiftViewPagerFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("position", i9);
        giftViewPagerFragment.setArguments(bundle);
        return giftViewPagerFragment;
    }

    private int Z1() {
        int i9 = 0;
        if (this.f17877e.isEmpty()) {
            return 0;
        }
        List<List<ResourceListItemBean>> list = this.f17877e;
        for (ResourceListItemBean resourceListItemBean : list.get(list.size() - 1)) {
            if (resourceListItemBean != null) {
                i9++;
            }
        }
        return i9;
    }

    private boolean a2(List<List<ResourceListItemBean>> list) {
        if (list.isEmpty()) {
            return false;
        }
        for (ResourceListItemBean resourceListItemBean : list.get(list.size() - 1)) {
            if (resourceListItemBean != null) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x005d, code lost:
        if (T1(r0.get(r0.size() - 1), r7) == null) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Q1(com.guochao.faceshow.aaspring.beans.ResourceListItemBean r7) {
        /*
            r6 = this;
            java.util.List<java.util.List<com.guochao.faceshow.aaspring.beans.ResourceListItemBean>> r0 = r6.f17877e
            boolean r0 = r0.isEmpty()
            r1 = 8
            r2 = 0
            if (r0 != 0) goto L2a
            int r0 = r6.Z1()
            int r0 = r0 % r1
            if (r0 != 0) goto L2a
            java.util.List<java.util.List<com.guochao.faceshow.aaspring.beans.ResourceListItemBean>> r0 = r6.f17877e
            int r3 = r0.size()
            int r3 = r3 + (-1)
            java.lang.Object r0 = r0.get(r3)
            java.util.List r0 = (java.util.List) r0
            com.guochao.faceshow.aaspring.beans.ResourceListItemBean r0 = r6.T1(r0, r7)
            if (r0 != 0) goto L2a
            r6.V1(r7)
            goto L92
        L2a:
            java.util.List<java.util.List<com.guochao.faceshow.aaspring.beans.ResourceListItemBean>> r0 = r6.f17877e
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L8f
            com.guochao.faceshow.aaspring.beans.ResourceCategoryItem r0 = r6.f17875c
            java.util.List r0 = r0.getGifList()
            int r0 = r0.size()
            float r0 = (float) r0
            r3 = 1090519040(0x41000000, float:8.0)
            float r0 = r0 / r3
            java.util.List<androidx.fragment.app.Fragment> r3 = r6.f17874b
            int r3 = r3.size()
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto L60
            java.util.List<java.util.List<com.guochao.faceshow.aaspring.beans.ResourceListItemBean>> r0 = r6.f17877e
            int r3 = r0.size()
            int r3 = r3 + (-1)
            java.lang.Object r0 = r0.get(r3)
            java.util.List r0 = (java.util.List) r0
            com.guochao.faceshow.aaspring.beans.ResourceListItemBean r0 = r6.T1(r0, r7)
            if (r0 != 0) goto L60
            goto L8f
        L60:
            r0 = 0
            r3 = 0
        L62:
            java.util.List<java.util.List<com.guochao.faceshow.aaspring.beans.ResourceListItemBean>> r4 = r6.f17877e
            int r4 = r4.size()
            if (r3 >= r4) goto L92
            java.util.List<java.util.List<com.guochao.faceshow.aaspring.beans.ResourceListItemBean>> r4 = r6.f17877e
            java.lang.Object r4 = r4.get(r3)
            java.util.List r4 = (java.util.List) r4
            if (r3 != 0) goto L76
            r5 = r7
            goto L77
        L76:
            r5 = r0
        L77:
            r4.add(r2, r5)
            int r5 = r4.size()
            if (r5 <= r1) goto L8c
            int r0 = r4.size()
            int r0 = r0 + (-1)
            java.lang.Object r0 = r4.remove(r0)
            com.guochao.faceshow.aaspring.beans.ResourceListItemBean r0 = (com.guochao.faceshow.aaspring.beans.ResourceListItemBean) r0
        L8c:
            int r3 = r3 + 1
            goto L62
        L8f:
            r6.V1(r7)
        L92:
            com.guochao.faceshow.aaspring.views.HalfHeightViewPager r7 = r6.f17876d
            androidx.viewpager.widget.PagerAdapter r7 = r7.getAdapter()
            if (r7 == 0) goto La3
            com.guochao.faceshow.aaspring.views.HalfHeightViewPager r7 = r6.f17876d
            androidx.viewpager.widget.PagerAdapter r7 = r7.getAdapter()
            r7.notifyDataSetChanged()
        La3:
            r7 = 0
        La4:
            java.util.List<androidx.fragment.app.Fragment> r0 = r6.f17874b
            int r0 = r0.size()
            if (r7 >= r0) goto Ld5
            java.util.List<java.util.List<com.guochao.faceshow.aaspring.beans.ResourceListItemBean>> r0 = r6.f17877e
            int r0 = r0.size()
            if (r0 > r7) goto Lb5
            return
        Lb5:
            java.util.List<androidx.fragment.app.Fragment> r0 = r6.f17874b
            java.lang.Object r0 = r0.get(r7)
            boolean r0 = r0 instanceof com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftListFragment
            if (r0 == 0) goto Ld2
            java.util.List<androidx.fragment.app.Fragment> r0 = r6.f17874b
            java.lang.Object r0 = r0.get(r7)
            com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftListFragment r0 = (com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftListFragment) r0
            java.util.List<java.util.List<com.guochao.faceshow.aaspring.beans.ResourceListItemBean>> r1 = r6.f17877e
            java.lang.Object r1 = r1.get(r7)
            java.util.List r1 = (java.util.List) r1
            r0.g2(r2, r1)
        Ld2:
            int r7 = r7 + 1
            goto La4
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftViewPagerFragment.Q1(com.guochao.faceshow.aaspring.beans.ResourceListItemBean):void");
    }

    public void S1() {
        for (Fragment fragment : this.f17874b) {
            if (fragment instanceof GiftListFragment) {
                ((GiftListFragment) fragment).W1();
            }
        }
    }

    public void U1() {
        Fragment fragmentAt = ViewPagerUtils.getFragmentAt(getChildFragmentManager(), this.f17876d, 0);
        if (fragmentAt instanceof GiftListFragment) {
            ((GiftListFragment) fragmentAt).Y1(false);
        }
    }

    public void W1() {
        List<Fragment> list = this.f17874b;
        if (list == null || list.size() <= 0) {
            return;
        }
        Fragment fragment = this.f17874b.get(0);
        if (fragment instanceof GiftListFragment) {
            R1(((GiftListFragment) fragment).getList());
        }
    }

    public List<List<ResourceListItemBean>> X1() {
        return this.f17877e;
    }

    public boolean b2() {
        Fragment fragment = this.f17874b.get(this.f17876d.getCurrentItem());
        return (fragment instanceof GiftListFragment) && ((GiftListFragment) fragment).f17853a >= 0;
    }

    public void c2(ResourceListItemBean resourceListItemBean) {
        for (int i9 = 0; i9 < this.f17877e.size(); i9++) {
            List<ResourceListItemBean> list = this.f17877e.get(i9);
            ResourceListItemBean T1 = T1(list, resourceListItemBean);
            if (T1 != null) {
                list.remove(T1);
                if (i9 < this.f17877e.size() - 1) {
                    int i10 = i9 + 1;
                    list.add(this.f17877e.get(i10).remove(0));
                    while (i10 < this.f17877e.size()) {
                        if (i10 < this.f17877e.size() - 1) {
                            this.f17877e.get(i10).add(this.f17877e.get(i10 + 1).remove(0));
                        }
                        i10++;
                    }
                }
            } else if (i9 < this.f17877e.size() - 1 && list.size() < 8) {
                int i11 = i9 + 1;
                list.add(this.f17877e.get(i11).remove(0));
                while (i11 < this.f17877e.size()) {
                    if (i11 < this.f17877e.size() - 1) {
                        this.f17877e.get(i11).add(this.f17877e.get(i11 + 1).remove(0));
                    }
                    i11++;
                }
            }
        }
        if (!this.f17877e.isEmpty() && a2(this.f17877e) && !this.f17874b.isEmpty()) {
            List<Fragment> list2 = this.f17874b;
            Fragment remove = list2.remove(list2.size() - 1);
            Fragment parentFragment = remove.getParentFragment();
            if (parentFragment != null) {
                parentFragment.getChildFragmentManager().beginTransaction().remove(remove).commitAllowingStateLoss();
            }
            List<List<ResourceListItemBean>> list3 = this.f17877e;
            list3.remove(list3.size() - 1);
        }
        this.f17876d.getAdapter().notifyDataSetChanged();
        for (int i12 = 0; i12 < this.f17874b.size() && this.f17877e.size() > i12; i12++) {
            if (this.f17874b.get(i12) instanceof GiftListFragment) {
                ((GiftListFragment) this.f17874b.get(i12)).g2(true, this.f17877e.get(i12));
            }
        }
    }

    public void d2() {
        for (Fragment fragment : this.f17874b) {
            if (fragment instanceof GiftListFragment) {
                ((GiftListFragment) fragment).j2();
                return;
            }
        }
    }

    public void e2() {
        Fragment fragmentAt = ViewPagerUtils.getFragmentAt(getChildFragmentManager(), this.f17876d, 0);
        if ((fragmentAt instanceof GiftListFragment) && fragmentAt.isAdded() && fragmentAt.getUserVisibleHint()) {
            ((GiftListFragment) fragmentAt).m2();
        }
    }

    public void f2(List<ResourceListItemBean> list) {
        List<ResourceListItemBean> list2;
        if (list == null || list.isEmpty()) {
            return;
        }
        int i9 = 0;
        int i10 = 0;
        do {
            if (i9 == 0) {
                list2 = new ArrayList<>();
                this.f17877e.add(list2);
            } else if (i9 % 8 == 0) {
                i10++;
                list2 = new ArrayList<>();
                this.f17877e.add(list2);
            } else {
                list2 = this.f17877e.get(i10);
            }
            list2.add(list.get(i9));
            i9++;
        } while (i9 < list.size());
        for (int i11 = 0; i11 < this.f17877e.size(); i11++) {
            this.f17874b.add(GiftListFragment.Z1(i11));
        }
    }

    @Override // u8.c
    public int getCurrentTheme() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof u8.c) {
            return ((u8.c) parentFragment).getCurrentTheme();
        }
        return 0;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_gift_view_pager;
    }

    public List<Fragment> getList() {
        return this.f17874b;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.f17876d = (HalfHeightViewPager) view.findViewById(R.id.view_pager);
        Fragment parentFragment = getParentFragment();
        if (getArguments() != null) {
            int i9 = getArguments().getInt("position");
            this.f17873a = i9;
            if (parentFragment instanceof b) {
                this.f17875c = ((b) parentFragment).getCategoryItem(i9);
            }
            Boolean valueOf = Boolean.valueOf(FeatureKt.requireFeature(Feature.MVP_CUSTOMER_SERVICE).isAvailable());
            List<ResourceListItemBean> gifList = this.f17875c.getGifList();
            if (gifList != null && gifList.size() > 0) {
                Iterator<ResourceListItemBean> it = gifList.iterator();
                while (it.hasNext()) {
                    ResourceListItemBean next = it.next();
                    if (!valueOf.booleanValue() && next.isMVPGift()) {
                        it.remove();
                    }
                }
            }
            f2(gifList);
            this.f17876d.setId(View.generateViewId());
            this.f17876d.setAdapter(new c(getChildFragmentManager()));
            this.mPageIndicatorView.bindTo(this.f17876d);
            if (this.f17876d.getAdapter().getCount() > 1) {
                this.mPageIndicatorView.setVisibility(0);
            } else {
                this.mPageIndicatorView.setVisibility(4);
            }
        }
        this.f17876d.addOnPageChangeListener(new a());
        this.f17876d.setOffscreenPageLimit(1);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.gift.fragment.c
    public ResourceCategoryItem t0() {
        return this.f17875c;
    }
}
