package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.google.android.material.badge.BadgeDrawable;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity;
import com.guochao.faceshow.aaspring.beans.DatingSquare;
import com.guochao.faceshow.aaspring.beans.DatingSquareLanguage;
import com.guochao.faceshow.aaspring.modulars.chat.fragment.BaseFragmentPagerAdapter;
import com.guochao.faceshow.aaspring.modulars.date.activity.DateSettingActivity;
import com.guochao.faceshow.aaspring.modulars.date.activity.VideoCoverRecordActivity;
import com.guochao.faceshow.aaspring.modulars.date.activity.WaitVideoCoverCheckActivity;
import com.guochao.faceshow.aaspring.modulars.date.fragment.DateNoticeFriendFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.DatingSquareFragment;
import com.guochao.faceshow.aaspring.utils.BasePermissionObserver;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.SvgaImageViewUtils;
import com.guochao.faceshow.aaspring.views.DatingSquarePopupWindow;
import com.guochao.faceshow.aaspring.views.GuideDialogFragment;
import com.guochao.faceshow.aaspring.views.SwipeBackViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.PushUtils;
import com.opensource.svgaplayer.SVGAImageView;
import com.opensource.svgaplayer.SVGAParser;
import com.opensource.svgaplayer.SVGAVideoEntity;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes3.dex */
public class DatingSquareActivity extends BaseActivity implements aa.c {

    /* renamed from: n  reason: collision with root package name */
    static final String[] f22145n = {"android.permission.CAMERA", "android.permission.RECORD_AUDIO"};

    /* renamed from: a  reason: collision with root package name */
    private int f22146a;

    /* renamed from: b  reason: collision with root package name */
    private int f22147b;

    /* renamed from: g  reason: collision with root package name */
    private f f22152g;
    @BindView
    ImageView genderSelector;

    /* renamed from: h  reason: collision with root package name */
    private DatingSquarePopupWindow f22153h;

    /* renamed from: i  reason: collision with root package name */
    private int f22154i;
    @BindView
    ImageView ivImage;

    /* renamed from: l  reason: collision with root package name */
    private SVGAParser f22157l;

    /* renamed from: m  reason: collision with root package name */
    private GuideDialogFragment f22158m;
    @BindView
    FrameLayout merge;
    @BindView
    SVGAImageView svImage;
    @BindView
    TabLayout tabs;
    @BindView
    Toolbar toolbar;
    @BindView
    SwipeBackViewPager viewPager;

    /* renamed from: c  reason: collision with root package name */
    private final List<DatingSquareLanguage> f22148c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private List<DatingSquareLanguage> f22149d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final List<BaseFragment> f22150e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final List<BaseFragment> f22151f = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    protected Handler f22155j = new Handler();

    /* renamed from: k  reason: collision with root package name */
    SVGAParser.ParseCompletion f22156k = new a();

    /* loaded from: classes3.dex */
    class a implements SVGAParser.ParseCompletion {

        /* renamed from: com.guochao.faceshow.aaspring.modulars.ugc.activity.DatingSquareActivity$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0220a implements Runnable {
            RunnableC0220a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DatingSquareActivity.this.f22155j.removeCallbacks(this);
                GCCoreActivity activity = DatingSquareActivity.this.getActivity();
                CustomNameCacheUtils.setBool(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, DatingSquareActivity.this.getCurrentUser().getCurrentUserId() + "KEY_DATING_SQUARE_FIRST", true);
                SVGAImageView sVGAImageView = DatingSquareActivity.this.svImage;
                if (sVGAImageView != null) {
                    sVGAImageView.setVisibility(8);
                }
                ImageView imageView = DatingSquareActivity.this.ivImage;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    DatingSquareActivity.this.ivImage.setImageResource(R.mipmap.appointment_opening);
                }
            }
        }

        a() {
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onComplete(@NotNull SVGAVideoEntity sVGAVideoEntity) {
            SVGAImageView sVGAImageView = DatingSquareActivity.this.svImage;
            if (sVGAImageView != null) {
                sVGAImageView.setVideoItem(sVGAVideoEntity);
                DatingSquareActivity.this.svImage.startAnimation();
                DatingSquareActivity.this.f22155j.postDelayed(new RunnableC0220a(), 2000L);
            }
        }

        @Override // com.opensource.svgaplayer.SVGAParser.ParseCompletion
        public void onError() {
        }
    }

    /* loaded from: classes3.dex */
    class b extends TypeToken<List<DatingSquareLanguage>> {
        b() {
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
            BaseFragment baseFragment = (BaseFragment) DatingSquareActivity.this.f22150e.get(i9);
            if (baseFragment == null || !(baseFragment instanceof aa.g)) {
                return;
            }
            ((aa.g) baseFragment).onGenderChanged(DatingSquareActivity.this.f22147b % 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends BasePermissionObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f22163a;

        d(int i9) {
            this.f22163a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            GCCoreActivity activity = DatingSquareActivity.this.getActivity();
            CustomNameCacheUtils.setBool(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, DatingSquareActivity.this.getCurrentUser().getCurrentUserId() + "KEY_DATING_SQUARE_TITLE", true);
            DatingSquareActivity.this.startActivity(new Intent(DatingSquareActivity.this.getActivity(), VideoCoverRecordActivity.class).putExtra(Contants.USER_APPOINT_STATE, this.f22163a));
            DatingSquareActivity.this.overridePendingTransition(R.anim.enter_up, R.anim.do_nothing);
        }
    }

    /* loaded from: classes3.dex */
    class e extends com.guochao.faceshow.aaspring.base.http.callback.c<List<DatingSquareLanguage>> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<DatingSquareLanguage>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<DatingSquareLanguage> list, @NonNull FaceCastBaseResponse<List<DatingSquareLanguage>> faceCastBaseResponse) {
            DatingSquareActivity.this.tabs.E();
            DatingSquareActivity.this.f22148c.clear();
            DatingSquareActivity datingSquareActivity = DatingSquareActivity.this;
            datingSquareActivity.q0(datingSquareActivity.f22148c);
            if (list != null && list.size() > 0) {
                for (int i9 = 0; i9 < list.size(); i9++) {
                    if (list.get(i9) != null) {
                        DatingSquareActivity.this.f22148c.add(list.get(i9));
                    }
                }
            }
            for (int i10 = 0; i10 < DatingSquareActivity.this.f22150e.size(); i10++) {
                if (i10 != 0) {
                    DatingSquareActivity.this.f22151f.add((BaseFragment) DatingSquareActivity.this.f22150e.get(i10));
                }
            }
            if (DatingSquareActivity.this.f22151f.size() > 0) {
                DatingSquareActivity.this.f22150e.removeAll(DatingSquareActivity.this.f22151f);
                DatingSquareActivity.this.f22151f.clear();
            }
            com.guochao.faceshow.aaspring.manager.b.e("DatingSquareLanguage", list);
            for (int i11 = 0; i11 < DatingSquareActivity.this.f22148c.size(); i11++) {
                if (i11 != 0) {
                    DatingSquareActivity.this.f22150e.add((DatingSquareFragment) DatingSquareFragment.V1(i11, ((DatingSquareLanguage) DatingSquareActivity.this.f22148c.get(i11)).getKey()));
                }
            }
            DatingSquareActivity.this.f22152g.notifyDataSetChanged();
            DatingSquareActivity.this.o0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends BaseFragmentPagerAdapter {

        /* renamed from: e  reason: collision with root package name */
        public Fragment f22166e;

        public f(FragmentManager fragmentManager, List<BaseFragment> list) {
            super(fragmentManager, list);
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.BaseFragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return DatingSquareActivity.this.f22150e.size();
        }

        @Override // com.guochao.faceshow.aaspring.modulars.chat.fragment.BaseFragmentPagerAdapter, androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i9) {
            if (DatingSquareActivity.this.f22150e != null && DatingSquareActivity.this.f22150e.size() > 0) {
                return (Fragment) DatingSquareActivity.this.f22150e.get(i9);
            }
            return DatingSquareFragment.V1(i9, PushUtils.CHAT_PUSH_TYPE);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i9) {
            return ((DatingSquareLanguage) DatingSquareActivity.this.f22148c.get(i9)).getLanguage();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i9, @NonNull Object obj) {
            this.f22166e = (Fragment) obj;
            super.setPrimaryItem(viewGroup, i9, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o0() {
        if (this.f22152g == null) {
            this.f22152g = new f(getSupportFragmentManager(), this.f22150e);
        }
        this.viewPager.setAdapter(this.f22152g);
        List<BaseFragment> list = this.f22150e;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.tabs.setupWithViewPager(this.viewPager);
    }

    private void p0() {
        if (getCurrentUser().getAppointState() == 0) {
            GCCoreActivity activity = getActivity();
            if (!CustomNameCacheUtils.getBool(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, getCurrentUser().getCurrentUserId() + "KEY_DATING_SQUARE_FIRST")) {
                this.svImage.setVisibility(0);
                this.ivImage.setVisibility(8);
                if (this.f22157l == null) {
                    SVGAParser parser = SvgaImageViewUtils.getParser();
                    this.f22157l = parser;
                    parser.decodeFromInputStream(getResources().openRawResource(R.raw.opening_date), "opening_date", this.f22156k, true);
                    return;
                }
                return;
            }
        }
        if (getCurrentUser().getAppointState() == 3) {
            this.svImage.setVisibility(8);
            this.ivImage.setVisibility(0);
            this.ivImage.setImageResource(R.mipmap.appointment_appointment_setup);
            return;
        }
        this.svImage.setVisibility(8);
        this.ivImage.setVisibility(0);
        this.ivImage.setImageResource(R.mipmap.appointment_opening);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0(List<DatingSquareLanguage> list) {
        DatingSquareLanguage datingSquareLanguage = new DatingSquareLanguage();
        datingSquareLanguage.setId(PushUtils.CHAT_PUSH_TYPE);
        datingSquareLanguage.setKey(PushUtils.CHAT_PUSH_TYPE);
        datingSquareLanguage.setLanguage(getString(R.string.recommend_follow));
        list.add(datingSquareLanguage);
    }

    private void refreshGenderIcon(int i9) {
        if (i9 == 0) {
            this.genderSelector.setImageResource(R.mipmap.icon_ugc_gender_female);
        } else if (i9 == 1) {
            this.genderSelector.setImageResource(R.mipmap.icon_ugc_gender_male);
        } else {
            this.genderSelector.setImageResource(R.mipmap.icon_ugc_gender_male_female);
        }
    }

    private void u0(int i9) {
        if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
            showToast(R.string.one_v_one_is_matching);
        } else {
            new com.tbruyelle.rxpermissions2.a(this).p(f22145n).subscribe(new d(i9));
        }
    }

    @Override // aa.c
    public void P(int i9, List<DatingSquare> list) {
        this.genderSelector.setEnabled(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_dating_square;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        setTitle(R.string.video_call_during_date_friends);
        this.f22149d = (List) com.guochao.faceshow.aaspring.manager.b.b("DatingSquareLanguage", new b().getType());
        q0(this.f22148c);
        List<DatingSquareLanguage> list = this.f22149d;
        if (list != null && list.size() > 0) {
            this.f22148c.addAll(this.f22149d);
        }
        List<DatingSquareLanguage> list2 = this.f22148c;
        if (list2 != null && list2.size() > 0) {
            for (int i9 = 0; i9 < this.f22148c.size(); i9++) {
                if (this.f22148c.get(i9) != null && !TextUtils.isEmpty(this.f22148c.get(i9).getKey())) {
                    this.f22150e.add((DatingSquareFragment) DatingSquareFragment.V1(i9, this.f22148c.get(i9).getKey()));
                }
            }
        }
        GCCoreActivity activity = getActivity();
        this.f22147b = CustomNameCacheUtils.getInt(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, "last_data_square_" + getCurrentUser().getUserId(), 2);
        o0();
        refreshGenderIcon(this.f22147b);
        this.viewPager.addOnPageChangeListener(new c());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
        String c10 = q7.a.e().c() != null ? q7.a.e().c() : "en";
        if (Language.INDONESIA.equalsIgnoreCase(c10)) {
            c10 = "id";
        }
        get("tokens/appoint/findLanguageByTrans").D("phone_lang", c10).M(new e());
    }

    public int m0() {
        return this.f22147b;
    }

    public void n0() {
        DatingSquarePopupWindow datingSquarePopupWindow = this.f22153h;
        if (datingSquarePopupWindow != null) {
            this.merge.removeView(datingSquarePopupWindow);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        p0();
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.gender_selector) {
            int gender = getCurrentUser().getGender();
            int i9 = this.f22147b;
            if (i9 == 2) {
                if (gender == 0) {
                    this.f22147b = 1;
                } else {
                    this.f22147b = 0;
                }
            } else if (i9 == gender) {
                this.f22147b = 2;
            } else if (i9 == 0) {
                this.f22147b = 1;
            } else {
                this.f22147b = 0;
            }
            int i10 = this.f22147b % 3;
            refreshGenderIcon(i10);
            GCCoreActivity activity = getActivity();
            CustomNameCacheUtils.setInt(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, "last_data_square_" + getCurrentUser().getUserId(), i10);
            f fVar = this.f22152g;
            if (fVar != null) {
                Fragment fragment = fVar.f22166e;
                if (fragment instanceof aa.g) {
                    ((aa.g) fragment).onGenderChanged(i10);
                }
            }
            this.genderSelector.setEnabled(false);
        } else if (id2 != R.id.iv_image) {
            if (id2 != R.id.sv_image) {
                return;
            }
            u0(0);
        } else {
            GCCoreActivity activity2 = getActivity();
            CustomNameCacheUtils.setBool(activity2, CustomNameCacheUtils.MODULE_NOTIFICATION, getCurrentUser().getCurrentUserId() + "KEY_DATING_SQUARE_TITLE", true);
            if (getCurrentUser().getAppointState() != 0 && getCurrentUser().getAppointState() != 1) {
                if (getCurrentUser().getAppointState() == 2) {
                    startActivity(new Intent(getActivity(), WaitVideoCoverCheckActivity.class));
                    return;
                } else if (getCurrentUser().getAppointState() == 3 || getCurrentUser().getAppointState() == 4) {
                    GCCoreActivity activity3 = getActivity();
                    CustomNameCacheUtils.setBool(activity3, CustomNameCacheUtils.MODULE_NOTIFICATION, getCurrentUser().getCurrentUserId() + "KEY_DATING_SQUARE_TITLE", true);
                    startActivity(new Intent(getActivity(), DateSettingActivity.class).putExtra("fromType", 1));
                    overridePendingTransition(R.anim.enter_up, R.anim.do_nothing);
                    return;
                } else {
                    return;
                }
            }
            u0(getCurrentUser().getAppointState());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        GCCoreActivity activity = getActivity();
        if (!CustomNameCacheUtils.getBool(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, getCurrentUser().getCurrentUserId() + "KEY_DATING_SQUARE_TITLE")) {
            this.f22154i = this.toolbar.getMeasuredHeight();
            s0();
            return;
        }
        n0();
    }

    public void r0() {
        new DateNoticeFriendFragment().show(getSupportFragmentManager(), "DateNoticeFriendFragment");
    }

    public void s0() {
        FrameLayout.LayoutParams layoutParams;
        DatingSquarePopupWindow datingSquarePopupWindow = this.f22153h;
        if (datingSquarePopupWindow == null) {
            this.f22153h = new DatingSquarePopupWindow(getActivity());
            layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = BadgeDrawable.TOP_END;
            layoutParams.setMarginEnd(DensityUtil.dp2px(16.0f));
            layoutParams.setMarginStart(DensityUtil.dp2px(16.0f));
            this.merge.addView(this.f22153h, layoutParams);
        } else {
            layoutParams = (FrameLayout.LayoutParams) datingSquarePopupWindow.getLayoutParams();
        }
        layoutParams.topMargin = (this.f22154i / 2) + DensityUtil.dp2px(18.0f);
        this.f22153h.setLayoutParams(layoutParams);
    }

    public void t0() {
        this.f22154i = this.toolbar.getMeasuredHeight();
        int i9 = getResources().getDisplayMetrics().widthPixels / 2;
        this.f22146a = i9;
        int dp2px = i9 - DensityUtil.dp2px(12.0f);
        int dp2px2 = (DensityUtil.dp2px(8.0f) + dp2px) - DensityUtil.dp2px(77.0f);
        int dp2px3 = this.f22154i + DensityUtil.dp2px(50.0f) + (dp2px - DensityUtil.dp2px(52.0f));
        if (this.f22158m == null) {
            this.f22158m = GuideDialogFragment.P1(getSupportFragmentManager(), dp2px2, dp2px3);
        }
    }
}
