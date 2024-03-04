package com.guochao.faceshow.aaspring.modulars.rank.activity;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseViewPagerActivity;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.modulars.rank.fragment.RankListFragment;
import com.guochao.faceshow.aaspring.views.v;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class RankListActivity extends BaseViewPagerActivity {

    /* renamed from: a  reason: collision with root package name */
    private TextView[] f21669a;

    /* renamed from: b  reason: collision with root package name */
    private String[] f21670b;
    @Nullable
    @BindView
    public ImageView backIV;

    /* renamed from: c  reason: collision with root package name */
    private String[] f21671c;

    /* renamed from: d  reason: collision with root package name */
    private List<RankListFragment> f21672d = new ArrayList();

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
            RankListActivity.this.m0(i9);
            RankListActivity.this.l0(i9);
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankListActivity.this.finish();
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f21675a;

        c(int i9) {
            this.f21675a = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (RankListActivity.this.i0()) {
                return;
            }
            RankListActivity.this.k0(this.f21675a);
            RankListFragment rankListFragment = (RankListFragment) RankListActivity.this.f21672d.get(RankListActivity.this.mViewPager.getCurrentItem());
            int i9 = this.f21675a;
            int i10 = 1;
            if (i9 != 0) {
                if (i9 != 1) {
                    if (i9 == 2) {
                        i10 = RankListActivity.this.mViewPager.getCurrentItem() == 2 ? 2 : 99;
                    }
                }
                rankListFragment.j2(i10);
                rankListFragment.reload();
            }
            i10 = 0;
            rankListFragment.j2(i10);
            rankListFragment.reload();
        }
    }

    /* loaded from: classes3.dex */
    private class d extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        String[] f21677a;

        public d(FragmentManager fragmentManager) {
            super(fragmentManager);
            String[] strArr = new String[3];
            this.f21677a = strArr;
            strArr[0] = RankListActivity.this.getString(R.string.rich_rank);
            this.f21677a[1] = RankListActivity.this.getString(R.string.star_rank);
            this.f21677a[2] = RankListActivity.this.getString(R.string.live_time_rank);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f21677a.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i9) {
            return (Fragment) RankListActivity.this.f21672d.get(i9);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i9) {
            return this.f21677a[i9];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i0() {
        for (int i9 = 0; i9 < this.f21672d.size(); i9++) {
            if (this.f21672d.get(i9).isProgressLoading()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(int i9) {
        RankListFragment rankListFragment = this.f21672d.get(i9);
        if (rankListFragment != null) {
            int a22 = rankListFragment.a2();
            if (a22 == 0) {
                k0(0);
            } else if (a22 == 1) {
                k0(1);
            } else {
                k0(2);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseViewPagerActivity
    public PagerAdapter b0() {
        return new d(getSupportFragmentManager());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        a.C0147a c0147a = new a.C0147a(this);
        c0147a.b(true);
        return c0147a.a();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_rank_list;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseViewPagerActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        TextView[] textViewArr = new TextView[3];
        this.f21669a = textViewArr;
        textViewArr[0] = (TextView) findViewById(R.id.tv_day);
        this.f21669a[1] = (TextView) findViewById(R.id.tv_week);
        this.f21669a[2] = (TextView) findViewById(R.id.tv_sub);
        String[] strArr = new String[3];
        this.f21670b = strArr;
        strArr[0] = getString(R.string.day_rank);
        this.f21670b[1] = getString(R.string.week_rank);
        this.f21670b[2] = getString(R.string.sub_rank);
        String[] strArr2 = new String[3];
        this.f21671c = strArr2;
        strArr2[0] = getString(R.string.day_rank);
        this.f21671c[1] = getString(R.string.week_rank);
        this.f21671c[2] = getString(R.string.month_rank);
        this.f21672d.add(RankListFragment.b2(1));
        this.f21672d.add(RankListFragment.b2(2));
        this.f21672d.add(RankListFragment.b2(3));
        this.mViewPager.addOnPageChangeListener(new a());
        this.backIV.setOnClickListener(new b());
        int i9 = 0;
        while (true) {
            TextView[] textViewArr2 = this.f21669a;
            if (i9 >= textViewArr2.length) {
                break;
            }
            textViewArr2[i9].setOnClickListener(new c(i9));
            i9++;
        }
        m0(0);
        l0(0);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            ((ImageButton) vVar.d()).setImageResource(R.drawable.icon_left_back_sign_center);
        }
    }

    public void k0(int i9) {
        int i10 = 0;
        while (true) {
            TextView[] textViewArr = this.f21669a;
            if (i10 >= textViewArr.length) {
                return;
            }
            textViewArr[i10].setSelected(i9 == i10);
            i10++;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    public void m0(int i9) {
        int i10 = 0;
        if (i9 == 2) {
            while (true) {
                TextView[] textViewArr = this.f21669a;
                if (i10 >= textViewArr.length) {
                    return;
                }
                textViewArr[i10].setText(this.f21671c[i10]);
                i10++;
            }
        } else {
            while (true) {
                TextView[] textViewArr2 = this.f21669a;
                if (i10 >= textViewArr2.length) {
                    return;
                }
                textViewArr2[i10].setText(this.f21670b[i10]);
                i10++;
            }
        }
    }
}
