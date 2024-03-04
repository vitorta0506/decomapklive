package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.ShortVideoViewModel;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.VideoTopicFragment;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.views.ExpandableImageTextView;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.aaspring.views.v;
import com.guochao.faceshow.activity.TCVideoRecordActivity;
import com.guochao.faceshow.bean.FirstSixBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes3.dex */
public class VideoTopicsActivity extends BaseActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f22455a;
    @BindView
    ImageView avatarBg;

    /* renamed from: b  reason: collision with root package name */
    private String f22456b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f22457c;

    /* renamed from: d  reason: collision with root package name */
    public String f22458d;

    /* renamed from: e  reason: collision with root package name */
    public String f22459e;

    /* renamed from: f  reason: collision with root package name */
    private FirstSixBean f22460f;

    /* renamed from: g  reason: collision with root package name */
    private eb.b f22461g;
    @BindView
    ExpandableImageTextView mExpandableImageTextView;
    @BindView
    ImageView mImageViewMore;
    @BindView
    TabLayout mTabLayout;
    @BindView
    TextView mTextViewCount;
    @BindView
    TextView mTextViewCreator;
    @BindView
    ViewPager mViewPager;

    /* loaded from: classes3.dex */
    class a extends v.d {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.views.v.d
        public void onFirstIconClick(View view) {
            if (VideoTopicsActivity.this.f22460f != null) {
                VideoTopicsActivity.this.f22461g.G(VideoTopicsActivity.this.f22457c, "It is a becoming a big trend on BuzzCast now! Click here:#" + VideoTopicsActivity.this.f22460f.tname + ".join me and have fun! tap here：", VideoTopicsActivity.this.f22460f.img, VideoTopicsActivity.this.f22460f.share_url);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (VideoTopicsActivity.this.f22460f == null) {
                return;
            }
            Intent intent = new Intent(VideoTopicsActivity.this, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, VideoTopicsActivity.this.f22460f.userId);
            VideoTopicsActivity.this.startActivity(intent);
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (VideoTopicsActivity.this.f22460f == null) {
                return;
            }
            Intent intent = new Intent(VideoTopicsActivity.this, UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, VideoTopicsActivity.this.f22460f.userId);
            VideoTopicsActivity.this.startActivity(intent);
        }
    }

    /* loaded from: classes3.dex */
    class d implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f22465a;

        d(List list) {
            this.f22465a = list;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            if (this.f22465a.size() > i9) {
                EventTrackingV2Utils.INSTANCE.track((String) this.f22465a.get(i9));
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements ExpandableImageTextView.c {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.views.ExpandableImageTextView.c
        public void a() {
            VideoTopicsActivity.this.mImageViewMore.setVisibility(0);
        }

        @Override // com.guochao.faceshow.aaspring.views.ExpandableImageTextView.c
        public void b(String str) {
        }

        @Override // com.guochao.faceshow.aaspring.views.ExpandableImageTextView.c
        public void c(String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements Function1<Response<FirstSixBean>, Unit> {
        f() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Response<FirstSixBean> response) {
            if (response != null && response.getData() != null) {
                VideoTopicsActivity.this.f22460f = response.getData();
                VideoTopicsActivity videoTopicsActivity = VideoTopicsActivity.this;
                videoTopicsActivity.setTitle("#" + VideoTopicsActivity.this.f22460f.tname);
                TextView textView = VideoTopicsActivity.this.mTextViewCreator;
                textView.setText(VideoTopicsActivity.this.f22460f.nickName + "(#" + VideoTopicsActivity.this.getString(R.string.creat_by) + ")");
                VideoTopicsActivity videoTopicsActivity2 = VideoTopicsActivity.this;
                hc.a.d(videoTopicsActivity2.avatarBg, videoTopicsActivity2.f22460f.img);
                if (VideoTopicsActivity.this.f22460f.useNum > 10000) {
                    TextView textView2 = VideoTopicsActivity.this.mTextViewCount;
                    textView2.setText(Formatter.priceFormat(VideoTopicsActivity.this.f22460f.useNum / 10000.0d) + "w " + VideoTopicsActivity.this.getString(R.string.cy_topic_count));
                } else if (VideoTopicsActivity.this.f22460f.useNum > 1000) {
                    TextView textView3 = VideoTopicsActivity.this.mTextViewCount;
                    textView3.setText(Formatter.priceFormat(VideoTopicsActivity.this.f22460f.useNum / 1000.0d) + "K " + VideoTopicsActivity.this.getString(R.string.cy_topic_count));
                } else {
                    TextView textView4 = VideoTopicsActivity.this.mTextViewCount;
                    textView4.setText(VideoTopicsActivity.this.f22460f.useNum + " " + VideoTopicsActivity.this.getString(R.string.cy_topic_count));
                }
                if (!TextUtils.isEmpty(VideoTopicsActivity.this.f22460f.introduction)) {
                    VideoTopicsActivity videoTopicsActivity3 = VideoTopicsActivity.this;
                    videoTopicsActivity3.mExpandableImageTextView.setMeasureText(videoTopicsActivity3.f22460f.introduction);
                }
                return Unit.INSTANCE;
            }
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes3.dex */
    class g extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        List<String> f22469a;

        public g(@NonNull FragmentManager fragmentManager) {
            super(fragmentManager);
            ArrayList arrayList = new ArrayList();
            this.f22469a = arrayList;
            arrayList.add(VideoTopicsActivity.this.getString(R.string.worldhot));
            this.f22469a.add(VideoTopicsActivity.this.getString(R.string.countryhot));
            this.f22469a.add(VideoTopicsActivity.this.getString(R.string.new_video));
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f22469a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        @NonNull
        public Fragment getItem(int i9) {
            return VideoTopicFragment.Q1(i9, VideoTopicsActivity.this.f22456b, VideoTopicsActivity.this.f22455a);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i9) {
            return this.f22469a.get(i9);
        }
    }

    private void l0() {
        ((ShortVideoViewModel) new ViewModelProvider(this).get(ShortVideoViewModel.class)).intoVideoTopic(this.f22456b, new f());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_video_types_new;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        Intent intent = getIntent();
        this.f22455a = intent.getStringExtra("type_id");
        this.f22456b = intent.getStringExtra("topic_id");
        this.f22458d = intent.getStringExtra("titleName");
        this.f22459e = intent.getStringExtra("tyPeName");
        this.f22461g = new eb.b(this);
        this.f22457c = (LinearLayout) findViewById(R.id.main_layout);
        this.avatarBg.setOnClickListener(new b());
        this.mTextViewCreator.setOnClickListener(new c());
        this.mViewPager.setAdapter(new g(getSupportFragmentManager()));
        ArrayList arrayList = new ArrayList();
        arrayList.add(EventTrackingV2Utils.main_video_tipic_global);
        arrayList.add(EventTrackingV2Utils.main_video_tipic_country);
        arrayList.add(EventTrackingV2Utils.main_video_tipic_latest);
        this.mViewPager.addOnPageChangeListener(new d(arrayList));
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        this.mExpandableImageTextView.setOnShowExpand(new e());
    }

    @OnClick
    public void join(View view) {
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_video_topic_join);
        Intent intent = new Intent(this, TCVideoRecordActivity.class);
        intent.putExtra("from", 4);
        intent.putExtra("titleName", this.f22458d);
        intent.putExtra("typeId", this.f22455a);
        intent.putExtra("topic_id", this.f22456b);
        intent.putExtra("tyPeName", this.f22459e);
        startActivity(intent);
        EventBus.getDefault().post("0");
        finish();
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(this.f22458d);
        l0();
        setEndIcon(R.mipmap.video_topic_share);
        v vVar = this.mTitleBarHelper;
        if (vVar != null) {
            vVar.setOnRightIconClickListener(new a());
        }
    }

    @OnClick
    public void showMore(View view) {
        this.mImageViewMore.setVisibility(8);
        this.mExpandableImageTextView.setRealText("sdf 发士大夫撒旦法斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬斯蒂芬阿斯蒂芬气温染色费斯蒂芬斯蒂芬刀锋山");
        FirstSixBean firstSixBean = this.f22460f;
        if (firstSixBean == null || TextUtils.isEmpty(firstSixBean.introduction)) {
            return;
        }
        this.mImageViewMore.setVisibility(8);
        this.mExpandableImageTextView.setRealText(this.f22460f.introduction);
    }
}
