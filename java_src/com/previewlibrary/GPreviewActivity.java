package com.previewlibrary;

import android.os.Bundle;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.previewlibrary.GPreviewBuilder;
import com.previewlibrary.enitity.IThumbViewInfo;
import com.previewlibrary.view.BasePhotoFragment;
import com.previewlibrary.wight.BezierBannerView;
import com.previewlibrary.wight.PhotoViewPager;
import com.previewlibrary.wight.SmoothImageView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class GPreviewActivity extends FragmentActivity {
    private static final String TAG = "com.previewlibrary.GPreviewActivity";
    private BezierBannerView bezierBannerView;
    protected int currentIndex;
    private List<IThumbViewInfo> imgUrls;
    private TextView ltAddDot;
    private GPreviewBuilder.IndicatorType type;
    private PhotoViewPager viewPager;
    protected boolean isTransformOut = false;
    private List<BasePhotoFragment> fragments = new ArrayList();
    private boolean isShow = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            if (GPreviewActivity.this.ltAddDot != null) {
                GPreviewActivity.this.ltAddDot.setText(GPreviewActivity.this.getString(R$string.string_count, new Object[]{Integer.valueOf(i9 + 1), Integer.valueOf(GPreviewActivity.this.imgUrls.size())}));
            }
            GPreviewActivity gPreviewActivity = GPreviewActivity.this;
            gPreviewActivity.currentIndex = i9;
            gPreviewActivity.viewPager.setCurrentItem(GPreviewActivity.this.currentIndex, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            GPreviewActivity.this.viewPager.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            ((BasePhotoFragment) GPreviewActivity.this.fragments.get(GPreviewActivity.this.currentIndex)).V1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements SmoothImageView.j {
        c() {
        }

        @Override // com.previewlibrary.wight.SmoothImageView.j
        public void a(SmoothImageView.Status status) {
            GPreviewActivity.this.getViewPager().setEnabled(true);
            GPreviewActivity.this.exit();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class d extends FragmentStatePagerAdapter {
        d(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            if (GPreviewActivity.this.fragments == null) {
                return 0;
            }
            return GPreviewActivity.this.fragments.size();
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i9) {
            return (Fragment) GPreviewActivity.this.fragments.get(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exit() {
        finish();
        overridePendingTransition(0, 0);
    }

    private void initData() {
        this.imgUrls = getIntent().getParcelableArrayListExtra("imagePaths");
        this.currentIndex = getIntent().getIntExtra("position", -1);
        this.type = (GPreviewBuilder.IndicatorType) getIntent().getSerializableExtra("type");
        this.isShow = getIntent().getBooleanExtra("isShow", true);
        int intExtra = getIntent().getIntExtra("duration", 300);
        boolean booleanExtra = getIntent().getBooleanExtra("isFullscreen", false);
        boolean booleanExtra2 = getIntent().getBooleanExtra("isScale", false);
        SmoothImageView.setFullscreen(booleanExtra);
        SmoothImageView.setIsScale(booleanExtra2);
        if (booleanExtra) {
            setTheme(16973841);
        }
        try {
            SmoothImageView.setDuration(intExtra);
            iniFragment(this.imgUrls, this.currentIndex, (Class) getIntent().getSerializableExtra("className"));
        } catch (Exception unused) {
            iniFragment(this.imgUrls, this.currentIndex, BasePhotoFragment.class);
        }
    }

    private void initView() {
        this.viewPager = (PhotoViewPager) findViewById(R$id.viewPager);
        this.viewPager.setAdapter(new d(getSupportFragmentManager()));
        this.viewPager.setCurrentItem(this.currentIndex);
        this.viewPager.setOffscreenPageLimit(3);
        this.bezierBannerView = (BezierBannerView) findViewById(R$id.bezierBannerView);
        TextView textView = (TextView) findViewById(R$id.ltAddDot);
        this.ltAddDot = textView;
        if (this.type == GPreviewBuilder.IndicatorType.Dot) {
            this.bezierBannerView.setVisibility(0);
            this.bezierBannerView.a(this.viewPager);
        } else {
            textView.setVisibility(0);
            this.ltAddDot.setText(getString(R$string.string_count, new Object[]{Integer.valueOf(this.currentIndex + 1), Integer.valueOf(this.imgUrls.size())}));
            this.viewPager.addOnPageChangeListener(new a());
        }
        if (this.fragments.size() == 1 && !this.isShow) {
            this.bezierBannerView.setVisibility(8);
            this.ltAddDot.setVisibility(8);
        }
        this.viewPager.getViewTreeObserver().addOnGlobalLayoutListener(new b());
    }

    @Override // android.app.Activity
    public void finish() {
        BasePhotoFragment.f28903h = null;
        super.finish();
    }

    public List<BasePhotoFragment> getFragments() {
        return this.fragments;
    }

    public PhotoViewPager getViewPager() {
        return this.viewPager;
    }

    protected void iniFragment(List<IThumbViewInfo> list, int i9, Class<? extends BasePhotoFragment> cls) {
        if (list != null) {
            int size = list.size();
            int i10 = 0;
            while (i10 < size) {
                this.fragments.add(BasePhotoFragment.S1(cls, list.get(i10), i9 == i10, getIntent().getBooleanExtra("isSingleFling", false), getIntent().getBooleanExtra("isDrag", false), getIntent().getFloatExtra("sensitivity", 0.5f)));
                i10++;
            }
            return;
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        this.isTransformOut = false;
        transformOut();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @CallSuper
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initData();
        if (setContentLayout() == 0) {
            setContentView(R$layout.activity_image_preview_photo);
        } else {
            setContentView(setContentLayout());
        }
        initView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.previewlibrary.a.a().b().a(this);
        PhotoViewPager photoViewPager = this.viewPager;
        if (photoViewPager != null) {
            photoViewPager.setAdapter(null);
            this.viewPager.clearOnPageChangeListeners();
            this.viewPager.removeAllViews();
            this.viewPager = null;
        }
        List<BasePhotoFragment> list = this.fragments;
        if (list != null) {
            list.clear();
            this.fragments = null;
        }
        List<IThumbViewInfo> list2 = this.imgUrls;
        if (list2 != null) {
            list2.clear();
            this.imgUrls = null;
        }
        super.onDestroy();
    }

    public int setContentLayout() {
        return 0;
    }

    public void transformOut() {
        if (this.isTransformOut) {
            return;
        }
        getViewPager().setEnabled(false);
        this.isTransformOut = true;
        int currentItem = this.viewPager.getCurrentItem();
        if (currentItem < this.imgUrls.size()) {
            BasePhotoFragment basePhotoFragment = this.fragments.get(currentItem);
            TextView textView = this.ltAddDot;
            if (textView != null) {
                textView.setVisibility(8);
            } else {
                this.bezierBannerView.setVisibility(8);
            }
            basePhotoFragment.Q1(0);
            basePhotoFragment.W1(new c());
            return;
        }
        exit();
    }
}
