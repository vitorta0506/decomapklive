package com.guochao.faceshow.aaspring.modulars.live.area;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseViewPagerActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.LiveRoomPageData;
import com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaActivity;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class LiveAreaActivity extends BaseViewPagerActivity {

    /* renamed from: a  reason: collision with root package name */
    private View f18286a;

    /* renamed from: b  reason: collision with root package name */
    private RecyclerView f18287b;

    /* renamed from: c  reason: collision with root package name */
    private final List<LiveRoomPageData.LiveCountry> f18288c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private LiveRoomPageData.LiveCountry f18289d;

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
            LiveAreaActivity liveAreaActivity = LiveAreaActivity.this;
            liveAreaActivity.setTitle(((LiveRoomPageData.LiveCountry) liveAreaActivity.f18288c.get(i9)).getCountryName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends RecyclerView.Adapter<BaseViewHolder> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(View view) {
            int intValue = ((Integer) view.getTag()).intValue();
            ViewPager viewPager = LiveAreaActivity.this.mViewPager;
            if (viewPager != null) {
                viewPager.setCurrentItem(intValue);
            }
            LiveAreaActivity.this.f18286a.setVisibility(8);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LiveAreaActivity.this.f18288c.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            baseViewHolder.itemView.setTag(Integer.valueOf(i9));
            TextView textView = (TextView) baseViewHolder.itemView.findViewById(R.id.country_name);
            ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.country_select);
            String countryName = ((LiveRoomPageData.LiveCountry) LiveAreaActivity.this.f18288c.get(i9)).getCountryName();
            LiveAreaActivity liveAreaActivity = LiveAreaActivity.this;
            if (liveAreaActivity.mViewPager != null && countryName != null && countryName.equalsIgnoreCase(((LiveRoomPageData.LiveCountry) liveAreaActivity.f18288c.get(LiveAreaActivity.this.mViewPager.getCurrentItem())).getCountryName())) {
                baseViewHolder.itemView.setSelected(true);
                imageView.setVisibility(0);
                textView.setTextColor(ContextCompat.getColor(textView.getContext(), R.color.color_ugc_app_primary_tint));
            } else {
                baseViewHolder.itemView.setSelected(false);
                imageView.setVisibility(8);
                textView.setTextColor(ContextCompat.getColor(textView.getContext(), R.color.color_ugc_text_level_1));
            }
            textView.setText(((LiveRoomPageData.LiveCountry) LiveAreaActivity.this.f18288c.get(i9)).getCountryName());
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            BaseViewHolder baseViewHolder = new BaseViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_country_live, viewGroup, false));
            baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LiveAreaActivity.b.this.b(view);
                }
            });
            return baseViewHolder;
        }
    }

    /* loaded from: classes3.dex */
    class c extends FragmentPagerAdapter {
        c(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return LiveAreaActivity.this.f18288c.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        @NotNull
        public Fragment getItem(int i9) {
            return LiveListFragment.getInstance(1, (LiveRoomPageData.LiveCountry) LiveAreaActivity.this.f18288c.get(i9));
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i9) {
            return ((LiveRoomPageData.LiveCountry) LiveAreaActivity.this.f18288c.get(i9)).getCountryName();
        }
    }

    private void l0(RecyclerView recyclerView) {
        this.f18287b = recyclerView;
        recyclerView.setLayoutManager(new GridLayoutManager((Context) this, 3, 1, false));
        this.f18287b.setAdapter(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0(View view) {
        this.f18286a.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n0(View view) {
        this.f18286a.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o0(View view) {
        this.f18286a.setVisibility(0);
        if (this.f18287b.getAdapter() != null) {
            this.f18287b.getAdapter().notifyDataSetChanged();
        }
    }

    public static void start(Context context, ArrayList<LiveRoomPageData.LiveCountry> arrayList) {
        Intent intent = new Intent(context, LiveAreaActivity.class);
        intent.putParcelableArrayListExtra("countryNames", arrayList);
        context.startActivity(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseViewPagerActivity
    public PagerAdapter b0() {
        return new c(getSupportFragmentManager());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        Intent intent = new Intent();
        intent.setAction(LOCAL_EVENT_MSG.LIVE_FROM_COUNTRY);
        EventBus.getDefault().post(intent);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_live_area;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseViewPagerActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        super.initView();
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.f();
        }
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("countryNames");
        if (parcelableArrayListExtra != null && this.mTabLayout != null) {
            this.f18288c.addAll(parcelableArrayListExtra);
            if (!parcelableArrayListExtra.isEmpty()) {
                LiveRoomPageData.LiveCountry liveCountry = (LiveRoomPageData.LiveCountry) parcelableArrayListExtra.get(0);
                this.f18289d = liveCountry;
                setTitle(liveCountry.getCountryName());
            }
            this.mTabLayout.setupWithViewPager(this.mViewPager);
        }
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null && viewPager.getAdapter() != null) {
            this.mViewPager.getAdapter().notifyDataSetChanged();
            this.mViewPager.addOnPageChangeListener(new a());
        }
        View findViewById = findViewById(R.id.dialog_live_country);
        this.f18286a = findViewById;
        findViewById.findViewById(R.id.bg_view).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveAreaActivity.this.m0(view);
            }
        });
        this.f18286a.findViewById(R.id.country_arrow).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveAreaActivity.this.n0(view);
            }
        });
        l0((RecyclerView) this.f18286a.findViewById(R.id.country_content));
        findViewById(R.id.arrow_more_country).setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.area.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveAreaActivity.this.o0(view);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }
}
