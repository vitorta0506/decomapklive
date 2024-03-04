package com.guochao.faceshow.aaspring.modulars.personal.dressup;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import butterknife.BindView;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.beans.MvpBagBean;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.adapter.TitleTabAdapter;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.BackpackGiftFragment;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.ChatShadingFragment;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.EntranceCarFragment;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.MvpBagFragment;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment.PictureFrameFragment;
import com.guochao.faceshow.aaspring.modulars.personal.dressup.viewmodel.MvpBagModel;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.aaspring.views.v;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class MyDressUpActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private List<Fragment> f21469a;

    /* renamed from: b  reason: collision with root package name */
    private TitleTabAdapter f21470b;

    /* renamed from: c  reason: collision with root package name */
    MvpBagModel f21471c = new MvpBagModel();

    /* renamed from: d  reason: collision with root package name */
    int f21472d;
    @BindView
    RelativeLayout lay_content;
    @BindView
    TabLayout tabs;
    @BindView
    RtlViewPager vpContent;

    /* loaded from: classes3.dex */
    class a implements Observer<List<MvpBagBean>> {
        a() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(List<MvpBagBean> list) {
            if (list != null) {
                MyDressUpActivity.this.f21469a.add(MvpBagFragment.T1());
                ArrayList arrayList = new ArrayList();
                arrayList.add(MyDressUpActivity.this.getString(R.string.vip_avatar_frame));
                arrayList.add(MyDressUpActivity.this.getString(R.string.vip_admission_car));
                arrayList.add(MyDressUpActivity.this.getString(R.string.vip_public_chat_shading));
                arrayList.add(MyDressUpActivity.this.getString(R.string.bag_gift));
                arrayList.add(MyDressUpActivity.this.getString(R.string.mvp_only_for_you_badge));
                MyDressUpActivity myDressUpActivity = MyDressUpActivity.this;
                myDressUpActivity.f21470b = new TitleTabAdapter(myDressUpActivity, arrayList, myDressUpActivity.f21469a, MyDressUpActivity.this.getSupportFragmentManager());
                MyDressUpActivity myDressUpActivity2 = MyDressUpActivity.this;
                myDressUpActivity2.vpContent.setAdapter(myDressUpActivity2.f21470b);
                MyDressUpActivity.this.i0();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Observer<Boolean> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }

        b() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(Boolean bool) {
            if (bool.booleanValue()) {
                return;
            }
            MyDressUpActivity.this.dismissLoading();
            MyDressUpActivity myDressUpActivity = MyDressUpActivity.this;
            myDressUpActivity.showNetErrorView(myDressUpActivity.lay_content, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        TabLayout tabLayout = this.tabs;
        if (tabLayout != null) {
            tabLayout.setupWithViewPager(this.vpContent);
        }
        if (this.f21472d < this.f21470b.getCount()) {
            int i9 = this.f21472d;
            if (i9 == 1) {
                this.vpContent.setCurrentItem(0);
            } else if (i9 == 2) {
                this.vpContent.setCurrentItem(2);
            } else if (i9 == 3) {
                this.vpContent.setCurrentItem(3);
            } else if (i9 != 4) {
                this.vpContent.setCurrentItem(1);
            } else {
                this.vpContent.setCurrentItem(4);
            }
        }
    }

    public static void k0(Context context, int i9) {
        Intent intent = new Intent(context, MyDressUpActivity.class);
        intent.putExtra("dressType", i9);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_my_dress_up;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        this.f21472d = getIntent().getIntExtra("dressType", 0);
        setTitle(getString(R.string.backpack));
        ArrayList arrayList = new ArrayList();
        this.f21469a = arrayList;
        arrayList.add(PictureFrameFragment.V1());
        this.f21469a.add(EntranceCarFragment.W1());
        this.f21469a.add(ChatShadingFragment.V1());
        this.f21469a.add(BackpackGiftFragment.getInstance());
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(getString(R.string.vip_avatar_frame));
        arrayList2.add(getString(R.string.vip_admission_car));
        arrayList2.add(getString(R.string.vip_public_chat_shading));
        arrayList2.add(getString(R.string.bag_gift));
        TitleTabAdapter titleTabAdapter = new TitleTabAdapter(getActivity(), arrayList2, this.f21469a, getSupportFragmentManager());
        this.f21470b = titleTabAdapter;
        this.vpContent.setAdapter(titleTabAdapter);
        i0();
        this.f21471c.loadMvpBagData(false);
        this.f21471c.getMvpLiveData().observe(this, new a());
        v vVar = this.mTitleBarHelper;
        if (vVar != null && (vVar.d() instanceof ImageButton)) {
            ((ImageButton) this.mTitleBarHelper.d()).setImageResource(R.drawable.icon_left_back);
        }
        this.f21471c.getNetLiveData().observe(this, new b());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }
}
