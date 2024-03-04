package com.guochao.faceshow.ImageBrowse;

import android.net.Uri;
import android.os.Bundle;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.views.HackyViewPager;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class BigImageActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private HackyViewPager f16010a;

    /* renamed from: b  reason: collision with root package name */
    private int f16011b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f16012c;

    /* renamed from: d  reason: collision with root package name */
    private b f16013d;

    /* renamed from: e  reason: collision with root package name */
    private RelativeLayout f16014e;

    /* loaded from: classes3.dex */
    class a implements ViewPager.OnPageChangeListener {
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
            BigImageActivity.this.f16012c.setText(BigImageActivity.this.getString(R.string.viewpager_indicator, new Object[]{Integer.valueOf(i9 + 1), Integer.valueOf(BigImageActivity.this.f16010a.getAdapter().getCount())}));
        }
    }

    /* loaded from: classes3.dex */
    private class b extends FragmentStatePagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        public List<Uri> f16016a;

        public b(FragmentManager fragmentManager, List<Uri> list) {
            super(fragmentManager);
            this.f16016a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<Uri> list = this.f16016a;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i9) {
            return ImageDetailFragment.Z1(this.f16016a.get(i9));
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.image_detail_pager;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        supportFinishAfterTransition();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f16011b = getIntent().getIntExtra("image_index", 0);
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("image_urls");
        this.f16014e = (RelativeLayout) findViewById(R.id.main_layout);
        this.f16010a = (HackyViewPager) findViewById(R.id.pager);
        b bVar = new b(getSupportFragmentManager(), parcelableArrayListExtra);
        this.f16013d = bVar;
        this.f16010a.setAdapter(bVar);
        this.f16012c = (TextView) findViewById(R.id.indicator);
        this.f16012c.setText(getString(R.string.viewpager_indicator, new Object[]{1, Integer.valueOf(this.f16010a.getAdapter().getCount())}));
        this.f16010a.setOnPageChangeListener(new a());
        if (bundle != null) {
            this.f16011b = bundle.getInt("STATE_POSITION");
        }
        this.f16010a.setCurrentItem(this.f16011b);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("STATE_POSITION", this.f16010a.getCurrentItem());
    }
}
