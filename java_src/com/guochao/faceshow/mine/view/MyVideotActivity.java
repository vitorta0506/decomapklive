package com.guochao.faceshow.mine.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.adapter.ViewPagerAdapter;
import com.guochao.faceshow.fragment.MyVideoFragment;
import com.guochao.faceshow.fragment.OpenVideoFragment;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class MyVideotActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private TabLayout f25635a;

    /* renamed from: b  reason: collision with root package name */
    private ViewPager f25636b;

    /* renamed from: c  reason: collision with root package name */
    private String f25637c;

    /* renamed from: d  reason: collision with root package name */
    List<String> f25638d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    List<Fragment> f25639e = new ArrayList();

    public static void start(Context context, String str) {
        Intent intent = new Intent(context, MyVideotActivity.class);
        intent.setType(str);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_video;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f25635a = (TabLayout) findViewById(R.id.tablayout);
        this.f25636b = (ViewPager) findViewById(R.id.viewpager);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String type = getIntent().getType();
        this.f25637c = getString(R.string.my_videos);
        this.f25638d.add(getString(R.string.open_video));
        this.f25638d.add(getString(R.string.private_video));
        OpenVideoFragment openVideoFragment = new OpenVideoFragment();
        MyVideoFragment myVideoFragment = new MyVideoFragment();
        this.f25639e.add(openVideoFragment);
        this.f25639e.add(myVideoFragment);
        setTitle(this.f25637c);
        this.f25636b.setAdapter(new ViewPagerAdapter(getSupportFragmentManager(), this.f25639e, this.f25638d));
        this.f25635a.setupWithViewPager(this.f25636b);
        if ("my_point_praises".equals(type)) {
            this.f25635a.setVisibility(8);
        } else {
            this.f25635a.setVisibility(0);
        }
        this.mTitleBarHelper.f();
    }
}
