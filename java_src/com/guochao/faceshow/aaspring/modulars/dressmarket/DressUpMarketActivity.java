package com.guochao.faceshow.aaspring.modulars.dressmarket;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.modulars.dressmarket.fragment.ChatShadingMarketFragment;
import com.guochao.faceshow.aaspring.modulars.dressmarket.fragment.EntranceCarMarketFragment;
import com.guochao.faceshow.aaspring.modulars.dressmarket.fragment.PendantAvatarMarketFragment;
import com.guochao.faceshow.aaspring.modulars.dressmarket.marquee.FloatMarqueeFragment;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.aaspring.views.TitleBackgroundView;
import com.guochao.faceshow.aaspring.views.v;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class DressUpMarketActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private List<Fragment> f17619a = new ArrayList();
    @BindView
    TabLayout tabs;
    @BindView
    RtlViewPager vpContent;

    /* loaded from: classes3.dex */
    class a extends v.d {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            if (DressUpMarketActivity.this.getActivity() == null || DressUpMarketActivity.this.getActivity().isDestroyed() || DressUpMarketActivity.this.getActivity().isFinishing()) {
                return;
            }
            DressUpMarketActivity.this.startActivity(new Intent(DressUpMarketActivity.this.getActivity(), DressUpRulesActivity.class).putExtra("type", DressUpMarketActivity.this.vpContent.getCurrentItem()));
        }
    }

    /* loaded from: classes3.dex */
    class b extends FragmentPagerAdapter {
        b(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return DressUpMarketActivity.this.f17619a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        @NonNull
        public Fragment getItem(int i9) {
            return (Fragment) DressUpMarketActivity.this.f17619a.get(i9);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i9) {
            if (i9 != 0) {
                if (i9 != 1) {
                    return i9 != 2 ? "" : DressUpMarketActivity.this.getString(R.string.vip_public_chat_shading);
                }
                return DressUpMarketActivity.this.getString(R.string.vip_avatar_frame);
            }
            return DressUpMarketActivity.this.getString(R.string.vip_admission_car);
        }
    }

    /* loaded from: classes3.dex */
    class c implements ViewPager.OnPageChangeListener {
        c() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            com.guochao.faceshow.aaspring.manager.b.f("dress", "DRESS_UP_INDEX" + DressUpMarketActivity.this.getCurrentUser().getUserId(), Integer.valueOf(i9));
        }
    }

    public static void start(Context context) {
        context.startActivity(new Intent(context, DressUpMarketActivity.class));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_market_dress_up;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(getString(R.string.f_dress_up_market));
        Integer num = 0;
        ((TitleBackgroundView) findViewById(R.id.float_title_back)).setBottomEnable(false);
        setEndIcon(R.mipmap.dress_up_helper);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightIconClickListener(new a());
        }
        this.f17619a.add(new EntranceCarMarketFragment());
        this.f17619a.add(new PendantAvatarMarketFragment());
        this.f17619a.add(new ChatShadingMarketFragment());
        this.vpContent.setAdapter(new b(getSupportFragmentManager()));
        TabLayout tabLayout = this.tabs;
        if (tabLayout != null) {
            tabLayout.setupWithViewPager(this.vpContent);
        }
        this.vpContent.addOnPageChangeListener(new c());
        getSupportFragmentManager().beginTransaction().replace(R.id.marquee_text, new FloatMarqueeFragment()).commit();
        Integer num2 = (Integer) com.guochao.faceshow.aaspring.manager.b.a("dress", "DRESS_UP_INDEX" + getCurrentUser().getUserId(), Integer.class);
        if (num2 == null) {
            num2 = num;
        }
        if (getIntent().getData() != null) {
            String queryParameter = getIntent().getData().getQueryParameter("index");
            if (!TextUtils.isEmpty(queryParameter)) {
                try {
                    num = Integer.valueOf(Integer.parseInt(queryParameter));
                } catch (Exception unused) {
                }
            }
            this.vpContent.setCurrentItem(num.intValue());
        }
        num = num2;
        this.vpContent.setCurrentItem(num.intValue());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
