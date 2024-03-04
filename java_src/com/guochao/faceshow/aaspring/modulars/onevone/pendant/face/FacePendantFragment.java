package com.guochao.faceshow.aaspring.modulars.onevone.pendant.face;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import butterknife.BindView;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.callback.c;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.BeautyItemCache;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.manager.BeautyItemCacheManager;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePlayerProvider;
import com.guochao.faceshow.aaspring.views.TabLayout;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes3.dex */
public class FacePendantFragment extends BaseFragment implements q9.a {

    /* renamed from: b  reason: collision with root package name */
    private List<Fragment> f21023b;

    /* renamed from: d  reason: collision with root package name */
    private int f21025d;

    /* renamed from: f  reason: collision with root package name */
    private boolean f21027f;
    @BindView
    ViewGroup tabLay;
    @BindView
    TabLayout tabs;
    @BindView
    RtlViewPager vpContent;

    /* renamed from: a  reason: collision with root package name */
    private List<String> f21022a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final List<ResourceCategoryItem> f21024c = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private boolean f21026e = true;

    /* loaded from: classes3.dex */
    class a extends c<SparseArray<List<ResourceCategoryItem>>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.onevone.pendant.face.FacePendantFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0207a extends FragmentPagerAdapter {
            C0207a(FragmentManager fragmentManager) {
                super(fragmentManager);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            public int getCount() {
                return FacePendantFragment.this.f21023b.size();
            }

            @Override // androidx.fragment.app.FragmentPagerAdapter
            public Fragment getItem(int i9) {
                return (Fragment) FacePendantFragment.this.f21023b.get(i9);
            }

            @Override // androidx.viewpager.widget.PagerAdapter
            @Nullable
            public CharSequence getPageTitle(int i9) {
                return (CharSequence) FacePendantFragment.this.f21022a.get(i9);
            }
        }

        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<SparseArray<List<ResourceCategoryItem>>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(SparseArray<List<ResourceCategoryItem>> sparseArray, @NonNull FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> faceCastBaseResponse) {
            if (FacePendantFragment.this.isDetached() || FacePendantFragment.this.getActivity() == null || !FacePendantFragment.this.isAdded() || sparseArray.get(FacePendantFragment.this.f21025d) == null) {
                return;
            }
            FacePendantFragment.this.f21024c.addAll(sparseArray.get(FacePendantFragment.this.f21025d));
            FacePendantFragment.this.f21023b = new ArrayList();
            if (FacePendantFragment.this.f21026e) {
                FacePendantFragment.this.Z1();
            } else {
                FacePendantFragment.this.Y1();
            }
            FacePendantFragment facePendantFragment = FacePendantFragment.this;
            facePendantFragment.vpContent.setAdapter(new C0207a(facePendantFragment.getChildFragmentManager()));
            FacePendantFragment facePendantFragment2 = FacePendantFragment.this;
            facePendantFragment2.tabs.setupWithViewPager(facePendantFragment2.vpContent);
        }
    }

    private Bundle X1(ResourceCategoryItem resourceCategoryItem) {
        Bundle bundle = new Bundle();
        bundle.putInt("type", this.f21025d);
        bundle.putParcelable(TypedValues.MotionType.NAME, resourceCategoryItem);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1() {
        if (this.f21025d == 8) {
            this.tabLay.setVisibility(4);
        } else {
            this.tabLay.setVisibility(8);
        }
        this.f21022a.add("");
        HashSet hashSet = new HashSet();
        ResourceCategoryItem resourceCategoryItem = new ResourceCategoryItem();
        for (int i9 = 0; i9 < this.f21024c.size(); i9++) {
            if (i9 == 0) {
                resourceCategoryItem = this.f21024c.get(i9);
            }
            hashSet.addAll(this.f21024c.get(i9).getGifList());
        }
        resourceCategoryItem.setGifList(new ArrayList(hashSet));
        FacePendantCategoryFragment facePendantCategoryFragment = new FacePendantCategoryFragment();
        facePendantCategoryFragment.setArguments(X1(this.f21024c.get(0)));
        this.f21023b.add(facePendantCategoryFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1() {
        String trim;
        this.tabLay.setVisibility(0);
        int size = this.f21024c.size();
        for (int i9 = 0; i9 < size; i9++) {
            List<String> list = this.f21022a;
            if (!TextUtils.isEmpty(this.f21024c.get(i9).getSourceTypeNameLang()) && !TextUtils.isEmpty(this.f21024c.get(i9).getSourceTypeNameLang().trim())) {
                trim = this.f21024c.get(i9).getSourceTypeNameLang().trim();
            } else {
                trim = (TextUtils.isEmpty(this.f21024c.get(i9).getSourceTypeName()) ? "" : this.f21024c.get(i9).getSourceTypeName()).trim();
            }
            list.add(trim);
        }
        for (int i10 = 0; i10 < size; i10++) {
            FacePendantCategoryFragment facePendantCategoryFragment = new FacePendantCategoryFragment();
            facePendantCategoryFragment.setArguments(X1(this.f21024c.get(i10)));
            this.f21023b.add(facePendantCategoryFragment);
        }
    }

    public void a2() {
        if (this.f21023b != null) {
            for (int i9 = 0; i9 < this.f21023b.size(); i9++) {
                Fragment fragment = this.f21023b.get(i9);
                if (fragment instanceof FacePendantCategoryFragment) {
                    ((FacePendantCategoryFragment) fragment).Z1();
                }
            }
        }
        BeautyItemCache last = BeautyItemCacheManager.getLast(this.f21025d);
        last.setLastFaceMotion(null);
        BeautyItemCacheManager.saveLast(this.f21025d, last);
        LivePlayerProvider.beautyManager().setMotionTmpl(null);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_face_pendant;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        this.f21025d = arguments.getInt("type");
        this.f21027f = arguments.getBoolean("isTrtc");
        com.guochao.faceshow.aaspring.manager.a g10 = com.guochao.faceshow.aaspring.manager.a.g();
        a aVar = new a();
        int i9 = this.f21025d;
        if (i9 == 100) {
            i9 = 6;
        }
        g10.w(null, aVar, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // q9.a
    public void t1(BeautyItemCache beautyItemCache) {
        if (getParentFragment() instanceof q9.a) {
            ((q9.a) getParentFragment()).t1(beautyItemCache);
        }
    }
}
