package com.guochao.faceshow.aaspring.modulars.ugc.fragment;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.material.appbar.AppBarLayout;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.fragment.BaseRecyclerViewFragment;
import com.guochao.faceshow.aaspring.base.navigator.ARouterNavigator;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.modulars.onevone.face2face.FaceToFaceFloatWindowManager;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.DatingSquareActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.FindYouActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PeopleNearbyActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.PlantActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.ScanActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.UgcSearchActivity;
import com.guochao.faceshow.aaspring.utils.BasePermissionObserver;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.PerMissionsUtils;
import com.guochao.faceshow.aaspring.utils.PhoneUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.UgcGroupSwitchHelper;
import com.guochao.faceshow.aaspring.utils.ViewPagerUtils;
import com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler;
import com.guochao.faceshow.aaspring.views.SwipeBackViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.aaspring.views.q;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.meizu.cloud.pushsdk.util.MzSystemUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3.dex */
public class UgcGroundFragment extends BaseFragment implements aa.a, aa.f, p7.f, OnBackButtonPressedHandler {

    /* renamed from: a  reason: collision with root package name */
    private DynamicBean f22816a;

    /* renamed from: d  reason: collision with root package name */
    g f22819d;

    /* renamed from: f  reason: collision with root package name */
    AppBarLayout.OnOffsetChangedListener f22821f;

    /* renamed from: h  reason: collision with root package name */
    ObjectAnimator f22823h;

    /* renamed from: i  reason: collision with root package name */
    ObjectAnimator f22824i;

    /* renamed from: j  reason: collision with root package name */
    ObjectAnimator f22825j;
    @BindView
    LinearLayout lay_sendDynamic;
    @BindView
    ImageView m1v1Bg;
    @BindView
    AppBarLayout mAppBarLayout;
    @BindView
    CardView mDatingSquare;
    @BindView
    CardView mFindYou;
    @BindView
    ImageView mGenderSelector;
    @BindView
    ImageView mImageViewBackButton;
    @BindView
    CardView mPeopleNearby;
    @BindView
    CardView mPlanet;
    @BindView
    ImageView mScan;
    @BindView
    View mSearch;
    @BindView
    SvgaImageViewV2 mSvgaImageViewV2;
    @BindView
    TabLayout mTabLayout;
    @BindView
    SwipeBackViewPager mViewPager;
    @BindView
    ImageView sendDynamic;
    @BindView
    TextView sendTip;
    @BindView
    LinearLayout ugcModuleTopLL;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f22817b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private List<Integer> f22818c = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private int f22820e = 2;

    /* renamed from: g  reason: collision with root package name */
    private boolean f22822g = false;

    /* loaded from: classes3.dex */
    class a implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f22826a;

        a(List list) {
            this.f22826a = list;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            SpUtils.setInt(UgcGroundFragment.this.getActivity(), Contants.LAST_PAGE_DYNAMIC, i9);
            Fragment findFragmentByTag = UgcGroundFragment.this.getChildFragmentManager().findFragmentByTag(UgcGroundFragment.e2(UgcGroundFragment.this.mViewPager.getId(), i9));
            if (findFragmentByTag != null && (findFragmentByTag instanceof aa.g)) {
                ((aa.g) findFragmentByTag).onGenderChanged(UgcGroundFragment.this.k());
            }
            try {
                EventTrackingV2Utils.INSTANCE.track((String) this.f22826a.get(i9));
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements AppBarLayout.BaseOnOffsetChangedListener {
        b() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i9) {
            UgcGroundFragment.this.mTabLayout.getLocationInWindow(new int[2]);
            if (Math.abs(i9) == appBarLayout.getTotalScrollRange()) {
                UgcGroundFragment.this.mImageViewBackButton.setVisibility(0);
                if (!UgcGroundFragment.this.f22822g) {
                    UgcGroundFragment ugcGroundFragment = UgcGroundFragment.this;
                    ugcGroundFragment.f2(ugcGroundFragment.lay_sendDynamic);
                }
            } else {
                UgcGroundFragment.this.mImageViewBackButton.setVisibility(8);
                if (UgcGroundFragment.this.f22822g) {
                    UgcGroundFragment ugcGroundFragment2 = UgcGroundFragment.this;
                    ugcGroundFragment2.g2(ugcGroundFragment2.lay_sendDynamic);
                }
            }
            Fragment current = ViewPagerUtils.getCurrent(UgcGroundFragment.this.getChildFragmentManager(), UgcGroundFragment.this.mViewPager);
            if (current instanceof AppBarLayout.OnOffsetChangedListener) {
                ((AppBarLayout.OnOffsetChangedListener) current).onOffsetChanged(UgcGroundFragment.this.mAppBarLayout, i9);
            }
            AppBarLayout.OnOffsetChangedListener onOffsetChangedListener = UgcGroundFragment.this.f22821f;
            if (onOffsetChangedListener != null) {
                onOffsetChangedListener.onOffsetChanged(appBarLayout, i9);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements SwipeBackViewPager.a {
        c() {
        }

        @Override // com.guochao.faceshow.aaspring.views.SwipeBackViewPager.a
        public void a(SwipeBackViewPager swipeBackViewPager) {
            if (UgcGroundFragment.this.mImageViewBackButton.getVisibility() == 0) {
                UgcGroundFragment.this.mImageViewBackButton.callOnClick();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends BasePermissionObserver {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onDenied(te.a aVar) {
            super.onDenied(aVar);
            if (UgcGroundFragment.this.getContext() == null) {
                return;
            }
            MainMenuDialogFragment.Q1(UgcGroundFragment.this.getContext(), 101, Arrays.asList(MainMenuDialogFragment.f20736c), false);
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onGranted(te.a aVar) {
            if (UgcGroundFragment.this.getContext() == null) {
                return;
            }
            if (Build.VERSION.SDK_INT == 23 && MzSystemUtils.isMeizu(UgcGroundFragment.this.getContext()) && !PhoneUtils.isCameraCanUse(UgcGroundFragment.this.getContext())) {
                MainMenuDialogFragment.S1(UgcGroundFragment.this.getContext(), UgcGroundFragment.this.getContext().getString(R.string.check_camera));
            } else if (UgcGroundFragment.this.getActivity() != null) {
                EventTrackingUtils.getInstance().track(EventTrackingUtils.UGC_1V1);
                new ARouterNavigator(UgcGroundFragment.this.requireActivity(), RouterPath.ROUTER_F2F_MATCH).go();
                VoiceRoomMiniHelper.releaseAll();
            }
        }

        @Override // com.guochao.faceshow.aaspring.utils.BasePermissionObserver
        public void onShouldShowRequestPermissionRationale(te.a aVar) {
            super.onShouldShowRequestPermissionRationale(aVar);
            if (UgcGroundFragment.this.getContext() == null) {
                return;
            }
            MainMenuDialogFragment.Q1(UgcGroundFragment.this.getContext(), 101, Arrays.asList(MainMenuDialogFragment.f20736c), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends AnimatorListenerAdapter {
        e() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            UgcGroundFragment ugcGroundFragment = UgcGroundFragment.this;
            ugcGroundFragment.h2(ugcGroundFragment.sendTip);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        public Fragment f22833a;

        public g(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return UgcGroundFragment.this.f22817b.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i9) {
            int intValue = ((Integer) UgcGroundFragment.this.f22818c.get(i9)).intValue();
            if (intValue == 4) {
                return NearbyDynamicListFragment.X1();
            }
            if (intValue == 2) {
                return NewestDynamicListFragment.W1();
            }
            if (intValue == 3) {
                return HotDynamicListFragment.getInstance();
            }
            return UgcDynamicListFragment.getInstance(intValue, i9);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i9) {
            return (CharSequence) UgcGroundFragment.this.f22817b.get(i9);
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i9, @NonNull Object obj) {
            this.f22833a = (Fragment) obj;
            super.setPrimaryItem(viewGroup, i9, obj);
        }
    }

    private void Z1() {
        for (Fragment parentFragment = getParentFragment(); parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
            if (parentFragment instanceof AppBarLayout.OnOffsetChangedListener) {
                this.f22821f = (AppBarLayout.OnOffsetChangedListener) parentFragment;
                return;
            }
        }
    }

    private void a2() {
        new com.tbruyelle.rxpermissions2.a(this).o("android.permission.CAMERA").subscribe(new vh.g() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.w
            @Override // vh.g
            public final void accept(Object obj) {
                UgcGroundFragment.this.c2((te.a) obj);
            }
        });
    }

    private void b2() {
        com.guochao.faceshow.aaspring.views.q.c(new q.a() { // from class: com.guochao.faceshow.aaspring.modulars.ugc.fragment.v
            @Override // com.guochao.faceshow.aaspring.views.q.a
            public final void a(Object obj) {
                UgcGroundFragment.this.d2((View) obj);
            }
        }, this.mPeopleNearby, this.mFindYou, this.mScan, this.mSearch, this.mDatingSquare, this.mPlanet, this.m1v1Bg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c2(te.a aVar) throws Exception {
        if (aVar.f58133b) {
            ScanActivity.m0(getActivity());
            LogUtils.d("PeopleNearbyActivity", aVar.f58132a + " is granted.");
        } else if (aVar.f58134c) {
            LogUtils.d("PeopleNearbyActivity", aVar.f58132a + " is denied. More info should be provided.");
        } else {
            PerMissionsUtils.checkPermission(getActivity());
            LogUtils.d("PeopleNearbyActivity", aVar.f58132a + " is denied.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d2(View view) {
        int id2 = view.getId();
        if (id2 == R.id.bg_1v1) {
            if (getActivity() == null || com.guochao.faceshow.aaspring.modulars.live.common.i.b(getActivity())) {
                return;
            }
            if (FaceToFaceFloatWindowManager.getInstance().isFaceToFaceFloatShowing()) {
                FaceToFaceFloatWindowManager.getInstance().openFaceToFaceActivity(getContext());
            } else {
                new com.tbruyelle.rxpermissions2.a(getActivity()).p(MainMenuDialogFragment.f20736c).subscribe(new d());
            }
        } else if (id2 == R.id.il_search) {
            startActivity(new Intent(getActivity(), UgcSearchActivity.class));
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_search);
        } else if (id2 != R.id.scan) {
            switch (id2) {
                case R.id.cv_dating_square /* 2131362445 */:
                    startActivity(new Intent(getActivity(), DatingSquareActivity.class));
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.UGC_DATING_CLICK);
                    return;
                case R.id.cv_find_you /* 2131362446 */:
                    startActivity(new Intent(getActivity(), FindYouActivity.class));
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.UGC_MEET_ME_CLICK);
                    return;
                case R.id.cv_people_nearby /* 2131362447 */:
                    startActivityForResult(new Intent(getActivity(), PeopleNearbyActivity.class), 1002);
                    EventTrackingUtils.getInstance().track(EventTrackingUtils.UGC_NEAR_BY_CLICK);
                    return;
                case R.id.cv_planet /* 2131362448 */:
                    startActivity(new Intent(getActivity(), PlantActivity.class));
                    EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_plant_click);
                    return;
                default:
                    return;
            }
        } else if (PerMissionsUtils.lacksPermissions(getActivity(), "android.permission.CAMERA")) {
            a2();
        } else {
            ScanActivity.m0(getActivity());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e2(int i9, long j10) {
        return "android:switcher:" + i9 + CertificateUtil.DELIMITER + j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f2(View view) {
        this.f22822g = true;
        this.lay_sendDynamic.setVisibility(0);
        if (this.f22823h == null) {
            float[] fArr = new float[2];
            fArr[0] = view.getMeasuredWidth() * (q7.a.e().j() ? -1 : 1);
            fArr[1] = 0.0f;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", fArr);
            this.f22823h = ofFloat;
            ofFloat.setDuration(500L);
            this.f22823h.setRepeatCount(0);
            this.f22823h.setRepeatMode(2);
            this.f22823h.addListener(new e());
        }
        ObjectAnimator objectAnimator = this.f22824i;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.f22824i.end();
        }
        if (this.f22823h.isRunning()) {
            return;
        }
        this.f22823h.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g2(View view) {
        this.f22822g = false;
        if (this.f22824i == null) {
            this.lay_sendDynamic.setVisibility(0);
            boolean j10 = q7.a.e().j();
            float[] fArr = new float[2];
            fArr[0] = 0.0f;
            fArr[1] = view.getMeasuredWidth() * (j10 ? -1 : 1);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", fArr);
            this.f22824i = ofFloat;
            ofFloat.setDuration(500L);
            this.f22824i.setRepeatCount(0);
            this.f22824i.addListener(new f());
        }
        ObjectAnimator objectAnimator = this.f22823h;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.f22823h.end();
        }
        if (this.f22824i.isRunning()) {
            return;
        }
        this.f22824i.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h2(View view) {
        if (!ja.a.b().f("KEY_SEND_DYNAMIC")) {
            this.sendTip.setVisibility(8);
            return;
        }
        this.sendTip.setVisibility(0);
        if (this.f22825j == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", 0.0f, 15.0f);
            this.f22825j = ofFloat;
            ofFloat.setDuration(500L);
            this.f22825j.setRepeatCount(-1);
            this.f22825j.setRepeatMode(2);
        }
        if (this.f22825j.isRunning()) {
            return;
        }
        this.f22825j.start();
    }

    private void i2(int i9) {
        if (i9 == 0) {
            this.mGenderSelector.setImageResource(R.mipmap.icon_ugc_gender_female);
        } else if (i9 == 1) {
            this.mGenderSelector.setImageResource(R.mipmap.icon_ugc_gender_male);
        } else {
            this.mGenderSelector.setImageResource(R.mipmap.icon_ugc_gender_male_female);
        }
    }

    public void Y1(boolean z10) {
        TabLayout tabLayout = this.mTabLayout;
        if (tabLayout != null) {
            tabLayout.F(0, z10);
        }
    }

    @OnClick
    public void click(View view) {
        int id2 = view.getId();
        if (id2 != R.id.back_button) {
            if (id2 == R.id.sendDynamic && (getParentFragment() instanceof UgcAndShortVideoFragment)) {
                ja.a.b().e("KEY_SEND_DYNAMIC");
                this.sendTip.setVisibility(8);
                ObjectAnimator objectAnimator = this.f22825j;
                if (objectAnimator != null && objectAnimator.isRunning()) {
                    this.f22825j.end();
                    this.f22825j = null;
                }
                ((UgcAndShortVideoFragment) getParentFragment()).goPublish();
                return;
            }
            return;
        }
        view.setVisibility(4);
        this.mAppBarLayout.setExpanded(true, true);
        Fragment findFragmentByTag = getChildFragmentManager().findFragmentByTag(e2(this.mViewPager.getId(), this.mViewPager.getCurrentItem()));
        if (findFragmentByTag == null || !(findFragmentByTag instanceof BaseRecyclerViewFragment)) {
            return;
        }
        ((BaseRecyclerViewFragment) findFragmentByTag).getRecyclerView().scrollToPosition(0);
    }

    @Override // aa.f
    public void g0(int i9, List<DynamicBean> list) {
        this.mTabLayout.F(i9, false);
        if (i9 == 0) {
            com.guochao.faceshow.aaspring.manager.i.u().s().setIsFriendNew(0);
            com.guochao.faceshow.aaspring.manager.i.u().z();
        }
        ImageView imageView = this.mGenderSelector;
        if (imageView != null) {
            imageView.setEnabled(true);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_ugc_ground;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        UgcGroupSwitchHelper.INSTANCE.observeFeatures(this);
        FragmentActivity activity = getActivity();
        int i9 = SpUtils.getInt(activity, "last_gender_dy_" + getCurrentUser().getUserId(), -1);
        if (i9 == -1) {
            if (getCurrentUser().getGender() == 0) {
                this.f22820e = 1;
            } else {
                this.f22820e = 0;
            }
        } else {
            this.f22820e = i9;
        }
        i2(this.f22820e);
        this.f22817b.add(getString(R.string.focus));
        this.f22817b.add(getString(R.string.new_video));
        this.f22817b.add(getString(R.string.ugc_hot));
        this.f22818c.add(1);
        this.f22818c.add(2);
        this.f22818c.add(3);
        this.f22817b.add(getString(R.string.NearBy));
        this.f22818c.add(4);
        int i10 = SpUtils.getInt(getActivity(), Contants.LAST_PAGE_DYNAMIC, 1);
        SwipeBackViewPager swipeBackViewPager = this.mViewPager;
        g gVar = new g(getChildFragmentManager());
        this.f22819d = gVar;
        swipeBackViewPager.setAdapter(gVar);
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        this.mViewPager.setCurrentItem(i10);
        Y1(com.guochao.faceshow.aaspring.manager.i.u().s().getIsFriendNew() == 1);
        ArrayList arrayList = new ArrayList();
        arrayList.add(EventTrackingV2Utils.ugc_follow_click);
        arrayList.add(EventTrackingV2Utils.ugc_latest_click);
        arrayList.add(EventTrackingV2Utils.ugc_hot_click);
        arrayList.add(EventTrackingV2Utils.ugc_nearby_click);
        try {
            EventTrackingV2Utils.INSTANCE.track((String) arrayList.get(i10));
        } catch (Exception unused) {
        }
        this.mViewPager.addOnPageChangeListener(new a(arrayList));
        if (this.f22816a != null) {
            this.mViewPager.setCurrentItem(1);
        }
        this.mAppBarLayout.addOnOffsetChangedListener(new b());
        this.mViewPager.setOnSwipeBackListener(new c());
        b2();
    }

    public void j2(int i9) {
        DynamicBean dynamicBean = (DynamicBean) MemoryCache.getInstance().clear(DynamicBean.class);
        SwipeBackViewPager swipeBackViewPager = this.mViewPager;
        if (swipeBackViewPager != null && this.f22819d != null) {
            swipeBackViewPager.setCurrentItem(i9);
        } else {
            this.f22816a = dynamicBean;
        }
    }

    @Override // aa.a
    public int k() {
        return this.f22820e % 3;
    }

    public void k2(boolean z10, boolean z11) {
        this.ugcModuleTopLL.removeAllViews();
        if (z10 && z11) {
            LayoutInflater.from(getContext()).inflate(R.layout.layout_ugc_header_all, (ViewGroup) this.ugcModuleTopLL, true);
        } else if (z10) {
            LayoutInflater.from(getContext()).inflate(R.layout.layout_ugc_header_video, (ViewGroup) this.ugcModuleTopLL, true);
        } else if (z11) {
            LayoutInflater.from(getContext()).inflate(R.layout.layout_ugc_header_planet, (ViewGroup) this.ugcModuleTopLL, true);
        } else {
            LayoutInflater.from(getContext()).inflate(R.layout.layout_ugc_header_no, (ViewGroup) this.ugcModuleTopLL, true);
        }
        this.mPeopleNearby = (CardView) this.ugcModuleTopLL.findViewById(R.id.cv_people_nearby);
        this.mDatingSquare = (CardView) this.ugcModuleTopLL.findViewById(R.id.cv_dating_square);
        this.mFindYou = (CardView) this.ugcModuleTopLL.findViewById(R.id.cv_find_you);
        this.mPlanet = (CardView) this.ugcModuleTopLL.findViewById(R.id.cv_planet);
        this.m1v1Bg = (ImageView) this.ugcModuleTopLL.findViewById(R.id.bg_1v1);
        b2();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 != 1001 || intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("codedContent");
        String personalInformationScan = com.guochao.faceshow.aaspring.manager.i.u().s().getPersonalInformationScan();
        if (stringExtra.contains(personalInformationScan)) {
            Intent intent2 = new Intent(getActivity(), UserHomePageAct.class);
            intent2.putExtra(Contants.USER_ID, stringExtra.replace(personalInformationScan, ""));
            startActivity(intent2);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        Z1();
    }

    @Override // com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler
    public boolean onBack() {
        if (this.mImageViewBackButton.getVisibility() == 0) {
            this.mImageViewBackButton.callOnClick();
            return true;
        }
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ObjectAnimator objectAnimator = this.f22825j;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            return;
        }
        this.f22825j.end();
        this.f22825j = null;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.manager.i.InterfaceC0154i
    public void onServerConfigChanged(ServerConfig serverConfig, ServerConfig serverConfig2) {
        super.onServerConfigChanged(serverConfig, serverConfig2);
        if (serverConfig2 != null) {
            Y1(serverConfig2.getIsFriendNew() == 1);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        int gender = getCurrentUser().getGender();
        int i9 = this.f22820e;
        if (i9 == 2) {
            this.f22820e = gender;
        } else if (i9 != gender) {
            this.f22820e = 2;
        } else if (gender == 0) {
            this.f22820e = 1;
        } else {
            this.f22820e = 0;
        }
        int i10 = this.f22820e % 3;
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.ugc_filter_sex, String.valueOf(i10));
        i2(i10);
        FragmentActivity activity = getActivity();
        SpUtils.setInt(activity, "last_gender_dy_" + getCurrentUser().getUserId(), i10);
        g gVar = this.f22819d;
        if (gVar != null) {
            Fragment fragment = gVar.f22833a;
            if (fragment instanceof aa.g) {
                ((aa.g) fragment).onGenderChanged(i10);
            }
        }
        view.setEnabled(false);
    }

    @Override // p7.f
    public void reload() {
        Fragment current = ViewPagerUtils.getCurrent(getChildFragmentManager(), this.mViewPager);
        if (current instanceof p7.f) {
            ((p7.f) current).reload();
        }
    }
}
