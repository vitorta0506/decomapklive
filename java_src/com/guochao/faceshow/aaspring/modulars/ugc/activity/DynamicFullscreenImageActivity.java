package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.beans.DynamicFile;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.DynamicFullscreenImageFragment;
import com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class DynamicFullscreenImageActivity extends BaseActivity implements ViewPager.OnPageChangeListener {

    /* renamed from: a  reason: collision with root package name */
    List<DynamicFile> f22193a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    ColorDrawable f22194b = new ColorDrawable(Color.parseColor("#000000"));
    @BindView
    FullScreenScrollToExitViewV2 mFullScreenScrollToExitView;
    @BindView
    ViewPager mViewPager;

    /* loaded from: classes3.dex */
    class a implements FullScreenScrollToExitViewV2.b {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2.b
        public void onCancel() {
        }

        @Override // com.guochao.faceshow.aaspring.views.FullScreenScrollToExitViewV2.b
        public void onDragPercent(int i9) {
            DynamicFullscreenImageActivity.this.f22194b.setAlpha(255 - i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        Fragment f22196a;

        public b(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return DynamicFullscreenImageActivity.this.f22193a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i9) {
            DynamicFullscreenImageFragment a22 = DynamicFullscreenImageFragment.a2(null, DynamicFullscreenImageActivity.this.f22193a.get(i9), true, i9);
            a22.d2(DynamicFullscreenImageActivity.this.mFullScreenScrollToExitView);
            return a22;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i9, @NonNull Object obj) {
            super.setPrimaryItem(viewGroup, i9, obj);
            this.f22196a = (Fragment) obj;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_dynamic_fullscreen;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        getWindow().setBackgroundDrawable(this.f22194b);
        this.mViewPager.setTransitionName(getIntent().getStringExtra("transitionName"));
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("data");
        this.mFullScreenScrollToExitView.setOnDragListener(new a());
        if (parcelableArrayListExtra != null) {
            this.f22193a.addAll(parcelableArrayListExtra);
        }
        int intExtra = getIntent().getIntExtra("position", -1);
        this.mViewPager.setAdapter(new b(getSupportFragmentManager()));
        if (intExtra > 0) {
            this.mViewPager.setCurrentItem(intExtra);
        }
        if (intExtra < 0) {
            intExtra = 0;
        }
        onPageSelected(intExtra);
        this.mViewPager.addOnPageChangeListener(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        supportFinishAfterTransition();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i9, float f10, int i10) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
        Fragment fragment;
        setTextViewText(R.id.indicator, getString(R.string.viewpager_indicator, new Object[]{Integer.valueOf(i9 + 1), Integer.valueOf(this.f22193a.size())}));
        b bVar = (b) this.mViewPager.getAdapter();
        if (bVar == null || (fragment = bVar.f22196a) == null || !(fragment instanceof DynamicFullscreenImageFragment)) {
            return;
        }
        this.mFullScreenScrollToExitView.setGestureEnabled(!((DynamicFullscreenImageFragment) fragment).scaled());
    }
}
