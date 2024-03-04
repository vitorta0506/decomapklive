package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewStub;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.IMFaceFragment;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import com.rd.PageIndicatorView;
import com.rd.draw.data.RtlMode;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class IMFaceViewPagerFragment extends BaseFragment implements IMFaceFragment.a {

    /* renamed from: a  reason: collision with root package name */
    int f16960a = 9;

    /* renamed from: b  reason: collision with root package name */
    List<ResourceCategoryItem> f16961b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    List<List<ResourceListItemBean>> f16962c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    View f16963d;
    @BindView
    PageIndicatorView mPageIndicatorView;
    @BindView
    ViewPager2 mViewPager;
    @Nullable
    @BindView
    ViewStub mViewStub;

    /* loaded from: classes3.dex */
    class a extends ViewPager2.OnPageChangeCallback {
        a() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i9) {
            IMFaceViewPagerFragment.this.mPageIndicatorView.onPageScrollStateChanged(i9);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i9, float f10, int i10) {
            IMFaceViewPagerFragment.this.mPageIndicatorView.onPageScrolled(i9, f10, i10);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i9) {
            IMFaceViewPagerFragment.this.mPageIndicatorView.onPageSelected(i9);
        }
    }

    /* loaded from: classes3.dex */
    class b extends com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<ResourceCategoryItem>>> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<SparseArray<List<ResourceCategoryItem>>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(SparseArray<List<ResourceCategoryItem>> sparseArray, @NonNull FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> faceCastBaseResponse) {
            List<ResourceCategoryItem> list = sparseArray.get(IMFaceViewPagerFragment.this.f16960a);
            if (list != null) {
                IMFaceViewPagerFragment.this.f16961b.clear();
                IMFaceViewPagerFragment.this.f16961b.addAll(list);
                IMFaceViewPagerFragment.this.checkData();
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements SVGAParser.ParseCompletion {
        c() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SVGAImageView sVGAImageView = (SVGAImageView) IMFaceViewPagerFragment.this.f16963d.findViewById(R.id.svga);
            sVGAImageView.setVideoItem(sVGAVideoEntity);
            SvgaImageViewUtils.fitImageView(sVGAVideoEntity, sVGAImageView);
            sVGAImageView.startAnimation();
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IMFaceViewPagerFragment.this.f16963d.setVisibility(8);
            ja.a.b().e("KEY_IM_FACE_GUIDE");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class e extends FragmentStateAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final List<List<ResourceListItemBean>> f16968a;

        public e(Fragment fragment, List<List<ResourceListItemBean>> list) {
            super(fragment);
            this.f16968a = list;
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        public Fragment createFragment(int i9) {
            return IMFaceFragment.R1(i9);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f16968a.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkData() {
        this.f16962c.clear();
        for (int i9 = 0; i9 < this.f16961b.size(); i9++) {
            this.f16962c.add(this.f16961b.get(i9).getGifList());
        }
        this.mViewPager.setAdapter(new e(this, this.f16962c));
        this.mPageIndicatorView.setCount(this.f16962c.size());
        this.mPageIndicatorView.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_imemoji_view_pager;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        ViewStub viewStub;
        if (ja.a.b().f("KEY_IM_FACE_GUIDE") && this.f16963d == null && (viewStub = this.mViewStub) != null) {
            View inflate = viewStub.inflate();
            this.f16963d = inflate;
            inflate.setOnClickListener(new d());
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.IMFaceFragment.a
    public List<ResourceListItemBean> j(int i9) {
        if (i9 < this.f16962c.size()) {
            return this.f16962c.get(i9);
        }
        return new ArrayList();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        this.mViewPager.setSaveEnabled(false);
        this.mViewPager.registerOnPageChangeCallback(new a());
        this.mPageIndicatorView.setRtlMode(q7.a.e().j() ? RtlMode.On : RtlMode.Off);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        com.guochao.faceshow.aaspring.manager.a.g().w(this, new b(), this.f16960a);
        if (this.f16963d != null) {
            SvgaImageViewUtils.decodeRaw(R.raw.user_guide_slide_to_see_more_live_room, "slied_sdf", new c());
        }
    }
}
