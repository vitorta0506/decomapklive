package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.appsflyer.AppsFlyerProperties;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomListFragment;
import com.guochao.component.voiceliveroom.fragment.VoiceRoomMyRoomListFragment;
import com.guochao.component.voiceliveroom.helper.VoiceRoomMiniHelper;
import com.guochao.component.voiceliveroom.model.VoiceRoomMyRoomListModel;
import com.guochao.component.voiceliveroom.viewmodel.VoiceRoomListViewModel;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.fragment.BaseFragment;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.BannerBeanData;
import com.guochao.faceshow.aaspring.beans.FirstRechargeBean;
import com.guochao.faceshow.aaspring.manager.PrivateLiveInviteManager;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeManager;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.GCEventUtils;
import com.guochao.faceshow.aaspring.utils.NotificationsUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.ViewPagerUtils;
import com.guochao.faceshow.aaspring.utils.listener.VoiceRoomInviteMessageViewModel;
import com.guochao.faceshow.aaspring.views.NoScrollViewPager;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.SvgaImageViewV2;
import com.guochao.lib_core.feature.Feature;
import com.guochao.lib_core.feature.FeatureKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import p9.a;
/* loaded from: classes3.dex */
public class LiveViewPagerFragment extends BaseFragment implements p7.f, PrivateLiveInviteManager.a, ViewPager.OnPageChangeListener, a.e {

    /* renamed from: o  reason: collision with root package name */
    public static final SparseIntArray f19284o;

    /* renamed from: a  reason: collision with root package name */
    private VoiceRoomListViewModel f19285a;

    /* renamed from: c  reason: collision with root package name */
    private VoiceRoomInviteMessageViewModel f19287c;

    /* renamed from: d  reason: collision with root package name */
    private int f19288d;
    @BindView
    SvgaImageViewV2 firstRecharge;

    /* renamed from: g  reason: collision with root package name */
    NoScrollViewPager f19291g;

    /* renamed from: k  reason: collision with root package name */
    h f19295k;

    /* renamed from: m  reason: collision with root package name */
    ObjectAnimator f19297m;
    @BindView
    public TabLayout mTabLayout;
    @BindView
    View myRoomTips;
    @BindView
    View myRoomsBtn;

    /* renamed from: n  reason: collision with root package name */
    View f19298n;
    @BindView
    SvgaImageViewV2 svgaImageViewV2;

    /* renamed from: b  reason: collision with root package name */
    private boolean f19286b = false;

    /* renamed from: e  reason: collision with root package name */
    private SparseArray<String> f19289e = new SparseArray<>();

    /* renamed from: f  reason: collision with root package name */
    SparseArray<String> f19290f = new SparseArray<>();

    /* renamed from: h  reason: collision with root package name */
    private List<String> f19292h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private int f19293i = 1;

    /* renamed from: j  reason: collision with root package name */
    private final List<BannerBeanData> f19294j = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    private boolean f19296l = false;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FeatureKt.requireFeature(Feature.VOICE_ROOM_SWITCH).isAvailable()) {
                LiveViewPagerFragment.this.mTabLayout.H(5, R.mipmap.icon_zb_follow_suo);
            } else {
                LiveViewPagerFragment.this.mTabLayout.H(4, R.mipmap.icon_zb_follow_suo);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (FeatureKt.requireFeature(Feature.VOICE_ROOM_SWITCH).isAvailable()) {
                LiveViewPagerFragment.this.mTabLayout.D(5);
            } else {
                LiveViewPagerFragment.this.mTabLayout.D(4);
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VoiceRoomMyRoomListFragment.newInstance().show(LiveViewPagerFragment.this.getParentFragmentManager(), "my_rooms");
            Context context = LiveViewPagerFragment.this.getContext();
            SpUtils.setBool(context, "voice_room_my_room_tips" + UserSessionViewModel.instance().current().getUserId(), true);
            LiveViewPagerFragment.this.myRoomTips.setVisibility(8);
            ((ViewGroup.MarginLayoutParams) LiveViewPagerFragment.this.firstRecharge.getLayoutParams()).bottomMargin = DensityUtil.dp2px(154.0f);
        }
    }

    /* loaded from: classes3.dex */
    class d implements Function1<Feature, Unit> {
        d() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Feature feature) {
            LiveViewPagerFragment.this.e2();
            return Unit.INSTANCE;
        }
    }

    /* loaded from: classes3.dex */
    class e implements Function1<Feature, Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements GCRequestJava.d<FirstRechargeBean> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Feature f19304a;

            a(Feature feature) {
                this.f19304a = feature;
            }

            @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
            public void a(@NonNull Response<FirstRechargeBean> response) {
                if (response != null && response.getData() != null && response.getData().getGiftList() != null && !response.getData().getGiftList().isEmpty()) {
                    LiveViewPagerFragment.this.firstRecharge.setVisibility(0);
                    LiveViewPagerFragment.this.firstRecharge.playRaw(R.raw.icon_first_recharge_livepage);
                    return;
                }
                LiveViewPagerFragment.this.firstRecharge.setVisibility(8);
                this.f19304a.setAvailable(false);
            }
        }

        e() {
        }

        @Override // kotlin.jvm.functions.Function1
        /* renamed from: a */
        public Unit invoke(Feature feature) {
            if (feature.isAvailable()) {
                new GCRequestJava("api/token/promotion/firstpay/list").putBody(AppsFlyerProperties.CURRENCY_CODE, "").j(new a(feature)).request();
                return null;
            }
            LiveViewPagerFragment.this.firstRecharge.setVisibility(8);
            return null;
        }
    }

    /* loaded from: classes3.dex */
    class f implements Observer<Boolean> {
        f() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(Boolean bool) {
            if (LiveViewPagerFragment.this.f19296l) {
                if (bool.booleanValue()) {
                    LiveViewPagerFragment liveViewPagerFragment = LiveViewPagerFragment.this;
                    if (liveViewPagerFragment.mTabLayout == null || liveViewPagerFragment.f19288d == 2) {
                        return;
                    }
                    LiveViewPagerFragment.this.mTabLayout.F(2, bool.booleanValue());
                    return;
                }
                LiveViewPagerFragment.this.mTabLayout.F(2, false);
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements Observer<VoiceRoomMyRoomListModel> {
        g() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void onChanged(VoiceRoomMyRoomListModel voiceRoomMyRoomListModel) {
            if (LiveViewPagerFragment.this.f19296l) {
                if (voiceRoomMyRoomListModel != null && voiceRoomMyRoomListModel.getList() != null && voiceRoomMyRoomListModel.getList().size() > 0) {
                    LiveViewPagerFragment.this.f19286b = true;
                    LiveViewPagerFragment liveViewPagerFragment = LiveViewPagerFragment.this;
                    liveViewPagerFragment.g2(liveViewPagerFragment.f19288d);
                    VoiceRoomMiniHelper.INSTANCE.setHasRoom(true);
                    return;
                }
                LiveViewPagerFragment.this.f19286b = false;
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface h {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class i extends FragmentPagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private List<String> f19308a;

        /* renamed from: b  reason: collision with root package name */
        private Fragment f19309b;

        /* renamed from: c  reason: collision with root package name */
        final SparseIntArray f19310c;

        public i(Context context, FragmentManager fragmentManager, boolean z10) {
            super(fragmentManager);
            SparseIntArray sparseIntArray = new SparseIntArray();
            this.f19310c = sparseIntArray;
            ArrayList arrayList = new ArrayList();
            this.f19308a = arrayList;
            arrayList.add(context.getString(R.string.live_popular));
            this.f19308a.add(context.getString(R.string.Friend_Party));
            if (z10) {
                this.f19308a.add(context.getString(R.string.voice_room_label));
                sparseIntArray.put(0, 1);
                sparseIntArray.put(1, 2);
                sparseIntArray.put(2, 7);
                sparseIntArray.put(3, 3);
                sparseIntArray.put(4, 5);
                sparseIntArray.put(5, 4);
            } else {
                sparseIntArray.put(0, 1);
                sparseIntArray.put(1, 2);
                sparseIntArray.put(2, 3);
                sparseIntArray.put(3, 5);
                sparseIntArray.put(4, 4);
            }
            this.f19308a.add(context.getString(R.string.NearBy));
            this.f19308a.add(context.getString(R.string.live_discovery));
            this.f19308a.add(context.getString(R.string.focus));
        }

        public Fragment a() {
            return this.f19309b;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f19308a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i9) {
            int i10 = this.f19310c.get(i9);
            if (i10 == 2) {
                return new MultiLiveListFragment();
            }
            if (i10 == 7) {
                return VoiceRoomListFragment.newInstance();
            }
            return LiveListFragment.getInstance(i10, null);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i9) {
            return this.f19308a.get(i9);
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i9, @NonNull Object obj) {
            this.f19309b = (Fragment) obj;
            super.setPrimaryItem(viewGroup, i9, obj);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f19284o = sparseIntArray;
        sparseIntArray.put(0, 1);
        sparseIntArray.put(1, 2);
        sparseIntArray.put(2, 7);
        sparseIntArray.put(3, 3);
        sparseIntArray.put(4, 5);
        sparseIntArray.put(5, 4);
    }

    private void Z1() {
        this.f19285a.loadMyRoomList(1);
    }

    private VoiceRoomInviteMessageViewModel a2() {
        if (this.f19287c == null) {
            this.f19287c = (VoiceRoomInviteMessageViewModel) new ViewModelProvider(requireActivity()).get(VoiceRoomInviteMessageViewModel.class);
        }
        return this.f19287c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b2(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            FirstRechargeDialog.showDialog(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2() {
        NoScrollViewPager noScrollViewPager = this.f19291g;
        if (noScrollViewPager == null || !(noScrollViewPager.getAdapter() instanceof i)) {
            return;
        }
        Fragment a10 = ((i) this.f19291g.getAdapter()).a();
        if (a10 instanceof LiveListFragment) {
            ((LiveListFragment) a10).checkDynamicLive(false);
        }
    }

    private void d2(View view) {
        if (ja.a.b().f("KEY_OPEN_LIVE")) {
            if (this.f19297m == null) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, 15.0f);
                this.f19297m = ofFloat;
                ofFloat.setDuration(500L);
                this.f19297m.setRepeatCount(-1);
                this.f19297m.setRepeatMode(2);
            }
            if (this.f19297m.isRunning()) {
                return;
            }
            this.f19297m.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e2() {
        if (this.mTabLayout == null) {
            return;
        }
        boolean isAvailable = FeatureKt.requireFeature(Feature.VOICE_ROOM_SWITCH).isAvailable();
        PagerAdapter adapter = this.f19291g.getAdapter();
        if ((isAvailable ? 6 : 5) == (adapter != null ? adapter.getCount() : 0)) {
            return;
        }
        this.f19296l = isAvailable;
        i iVar = new i(getActivity(), getChildFragmentManager(), isAvailable);
        this.mTabLayout.E();
        SparseArray sparseArray = new SparseArray();
        sparseArray.clear();
        this.f19290f.clear();
        if (isAvailable) {
            this.f19290f.put(1, GCEventUtils.CLICK_PARTY);
            this.f19290f.put(3, GCEventUtils.CLICK_NEARBY);
            this.f19290f.put(4, GCEventUtils.CLICK_FIND);
            this.f19290f.put(5, GCEventUtils.CLICK_ATTENTION);
            sparseArray.put(0, EventTrackingUtils.HOME_LIVE_POPULAR_CLICK);
            sparseArray.put(1, EventTrackingUtils.HOME_LIVE_PARTY_CLICK);
            sparseArray.put(2, EventTrackingUtils.HOME_LIVE_VOICE_ROOM_CLICK);
            sparseArray.put(3, EventTrackingUtils.HOME_LIVE_NEAR_BY_CLICK);
            sparseArray.put(4, EventTrackingUtils.LIVE_HOME_DISCOVERY);
            sparseArray.put(5, EventTrackingUtils.HOME_LIVE_FOLLOWING_CLICK);
        } else {
            this.f19290f.put(1, GCEventUtils.CLICK_PARTY);
            this.f19290f.put(2, GCEventUtils.CLICK_NEARBY);
            this.f19290f.put(3, GCEventUtils.CLICK_FIND);
            this.f19290f.put(4, GCEventUtils.CLICK_ATTENTION);
            sparseArray.put(0, EventTrackingUtils.HOME_LIVE_POPULAR_CLICK);
            sparseArray.put(1, EventTrackingUtils.HOME_LIVE_PARTY_CLICK);
            sparseArray.put(2, EventTrackingUtils.HOME_LIVE_NEAR_BY_CLICK);
            sparseArray.put(3, EventTrackingUtils.LIVE_HOME_DISCOVERY);
            sparseArray.put(4, EventTrackingUtils.HOME_LIVE_FOLLOWING_CLICK);
        }
        this.f19291g.setId(View.generateViewId());
        this.f19291g.setAdapter(iVar);
        this.mTabLayout.setupWithViewPager(this.f19291g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g2(int i9) {
        if (i9 == 2 && this.f19286b) {
            this.myRoomsBtn.setVisibility(0);
            this.svgaImageViewV2.playRaw(R.raw.voice_room_my_room_svga);
            Context context = getContext();
            if (!SpUtils.getBool(context, "voice_room_my_room_tips" + UserSessionViewModel.instance().current().getUserId(), false)) {
                this.myRoomTips.setVisibility(0);
                ((ViewGroup.MarginLayoutParams) this.firstRecharge.getLayoutParams()).bottomMargin = DensityUtil.dp2px(190.0f);
                return;
            }
            this.myRoomTips.setVisibility(8);
            ((ViewGroup.MarginLayoutParams) this.firstRecharge.getLayoutParams()).bottomMargin = DensityUtil.dp2px(154.0f);
            return;
        }
        ((ViewGroup.MarginLayoutParams) this.firstRecharge.getLayoutParams()).bottomMargin = DensityUtil.dp2px(102.0f);
        this.myRoomsBtn.setVisibility(8);
        this.myRoomTips.setVisibility(8);
    }

    public void W1() {
        ViewStub viewStub;
        if (getView() == null) {
            return;
        }
        if (this.f19298n == null && (viewStub = (ViewStub) getView().findViewById(R.id.user_guide)) != null) {
            View inflate = viewStub.inflate();
            this.f19298n = inflate;
            ((TextView) inflate.findViewById(R.id.text)).setText(R.string.user_guide_click_to_go_live);
        }
        this.f19298n.setVisibility(0);
        d2(this.f19298n);
    }

    public Fragment X1() {
        if (this.f19291g.getAdapter() instanceof i) {
            return ((i) this.f19291g.getAdapter()).a();
        }
        return ViewPagerUtils.getCurrent(getChildFragmentManager(), this.f19291g);
    }

    public int Y1() {
        return this.f19291g.getCurrentItem();
    }

    @Override // com.guochao.faceshow.aaspring.manager.PrivateLiveInviteManager.a
    public void d0() {
        TabLayout tabLayout = this.mTabLayout;
        if (tabLayout != null) {
            tabLayout.post(new b());
        }
    }

    public void f2() {
        View view = this.f19298n;
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        this.f19298n = null;
        ja.a.b().e("KEY_OPEN_LIVE");
        ObjectAnimator objectAnimator = this.f19297m;
        if (objectAnimator == null || !objectAnimator.isRunning()) {
            return;
        }
        this.f19297m.end();
        this.f19297m = null;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_layout_live_view_pager;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        view.findViewById(R.id.rl_content).setPadding(0, StatusBarHelper.getStatusbarHeight(view.getContext()), 0, DensityUtil.dp2px(45.0f));
        NoScrollViewPager noScrollViewPager = (NoScrollViewPager) view.findViewWithTag("view_pager");
        this.f19291g = noScrollViewPager;
        noScrollViewPager.addOnPageChangeListener(this);
        PrivateLiveInviteManager.c().registerOnInviteStatusListener(this);
        onPageSelected(0);
        this.myRoomsBtn.setOnClickListener(new c());
        e2();
        FeatureKt.requireFeatureOnLifecycle(getViewLifecycleOwner(), Feature.VOICE_ROOM_SWITCH, new d());
        if (getCurrentUser().getRecharged() == 0) {
            FeatureKt.requireFeatureOnLifecycle(this, Feature.FIRST_RECHARGE, new e());
        } else {
            this.firstRecharge.setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
        Z1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        if (i9 == 0) {
            FragmentActivity activity = getActivity();
            if (CustomNameCacheUtils.getInt(activity, CustomNameCacheUtils.MODULE_NOTIFICATION, getCurrentUser().getCurrentUserId() + "KEY_NOTIFICATION_STATE") != 1) {
                if (NotificationsUtils.isNotificationEnabled(getActivity())) {
                    return;
                }
                new NotificationsDialogFragment().show(getActivity().getSupportFragmentManager(), NotificationsDialogFragment.class.getSimpleName());
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.notice_permission_dialog);
                return;
            }
        }
        if (i9 == 178 && NotificationsUtils.isNotificationEnabled(getActivity())) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.notice_permission_change_open);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof h) {
            this.f19295k = (h) parentFragment;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f19285a = (VoiceRoomListViewModel) new ViewModelProvider(this).get(VoiceRoomListViewModel.class);
        p9.a.g().c(this);
    }

    @Override // p9.a.e
    public /* synthetic */ void onCrystalsChanged(int i9) {
        p9.b.a(this, i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ObjectAnimator objectAnimator = this.f19297m;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.f19297m.end();
            this.f19297m = null;
        }
        PrivateLiveInviteManager.c().unregisterOnInviteStatusListener(this);
        p9.a.g().r(this);
    }

    @Override // p9.a.e
    public void onDiamondsChanged(int i9) {
        SvgaImageViewV2 svgaImageViewV2;
        if ((getCurrentUser().getRecharged() == 1 || !FirstRechargeManager.INSTANCE.shouldShowFirstRecharge()) && (svgaImageViewV2 = this.firstRecharge) != null) {
            svgaImageViewV2.setVisibility(8);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i9) {
        if (i9 == 0) {
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.l
                @Override // java.lang.Runnable
                public final void run() {
                    LiveViewPagerFragment.this.c2();
                }
            });
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i9, float f10, int i10) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i9) {
        if (LiveListFragment.sShowedLiveTips) {
            ja.a.b().e("KEY_LIVE_CLICK_TIPS");
        }
        String str = this.f19289e.get(i9) == null ? "" : this.f19289e.get(i9);
        String str2 = this.f19290f.get(i9);
        if (!TextUtils.isEmpty(str2)) {
            GCEventUtils.track(str2);
        }
        char c10 = 65535;
        int i10 = 5;
        switch (str.hashCode()) {
            case -1834138788:
                if (str.equals(EventTrackingUtils.HOME_LIVE_PARTY_CLICK)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1466466053:
                if (str.equals(EventTrackingUtils.HOME_LIVE_NEAR_BY_CLICK)) {
                    c10 = 2;
                    break;
                }
                break;
            case -1348487703:
                if (str.equals(EventTrackingUtils.LIVE_HOME_DISCOVERY)) {
                    c10 = 3;
                    break;
                }
                break;
            case 449212487:
                if (str.equals(EventTrackingUtils.HOME_LIVE_FOLLOWING_CLICK)) {
                    c10 = 4;
                    break;
                }
                break;
            case 501723599:
                if (str.equals(EventTrackingUtils.HOME_LIVE_POPULAR_CLICK)) {
                    c10 = 5;
                    break;
                }
                break;
            case 1404629508:
                if (str.equals(EventTrackingUtils.HOME_LIVE_VOICE_ROOM_CLICK)) {
                    c10 = 1;
                    break;
                }
                break;
        }
        if (c10 == 0) {
            i10 = 1;
        } else if (c10 == 1) {
            i10 = 2;
        } else if (c10 == 2) {
            i10 = 3;
        } else if (c10 == 3) {
            i10 = 4;
        } else if (c10 != 4) {
            i10 = 0;
        }
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.live_tab_click, String.valueOf(i10));
        if (!TextUtils.isEmpty(str)) {
            EventTrackingUtils.getInstance().track(str);
        }
        if (i9 == 2) {
            Z1();
            TabLayout tabLayout = this.mTabLayout;
            if (tabLayout != null) {
                tabLayout.F(2, false);
            }
        }
        g2(i9);
        this.f19288d = i9;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        StatusBarHelper.showStatusBar(getActivity(), true);
        c2();
        Z1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        a2().getNewInvite().observe(getViewLifecycleOwner(), new f());
        this.f19285a.getMyRoomList().observe(getViewLifecycleOwner(), new g());
        this.firstRecharge.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.live.fragment.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LiveViewPagerFragment.b2(view2);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.manager.PrivateLiveInviteManager.a
    public void q1() {
        TabLayout tabLayout = this.mTabLayout;
        if (tabLayout != null) {
            tabLayout.post(new a());
        }
    }

    @Override // p7.f
    public void reload() {
        Fragment current = ViewPagerUtils.getCurrent(getChildFragmentManager(), this.f19291g);
        if (current instanceof p7.f) {
            ((p7.f) current).reload();
        }
    }
}
