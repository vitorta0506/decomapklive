package com.guochao.faceshow.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.ViewModelProvider;
import butterknife.BindView;
import com.airbnb.lottie.LottieAnimationView;
import com.guochao.faceshow.BaseAppContext;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.a;
import com.guochao.faceshow.aaspring.beans.DynamicBean;
import com.guochao.faceshow.aaspring.beans.EventMainActivityDestroy;
import com.guochao.faceshow.aaspring.beans.PushBean;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LiveListFragment;
import com.guochao.faceshow.aaspring.modulars.live.fragment.LiveViewPagerFragment;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.login.utils.j;
import com.guochao.faceshow.aaspring.modulars.main.BaseMainActivity;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MessageAndFriendFragment;
import com.guochao.faceshow.aaspring.modulars.main.fragment.ReviewDialog;
import com.guochao.faceshow.aaspring.modulars.main.fragment.TIMMessageHelperFragment;
import com.guochao.faceshow.aaspring.modulars.main.viewmodel.EmailRecallViewModel;
import com.guochao.faceshow.aaspring.modulars.ugc.base.BaseDynamicViewHolder;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.NewestDynamicListFragment;
import com.guochao.faceshow.aaspring.modulars.ugc.fragment.UgcAndShortVideoFragment;
import com.guochao.faceshow.aaspring.modulars.user.UserFragment;
import com.guochao.faceshow.aaspring.utils.AppManager;
import com.guochao.faceshow.aaspring.utils.AutoCleanManager;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.GCEventUtils;
import com.guochao.faceshow.aaspring.utils.MemoryCache;
import com.guochao.faceshow.aaspring.utils.ScreenshotsUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.UserStateHolder;
import com.guochao.faceshow.aaspring.utils.listener.BaseSoundEffectListener;
import com.guochao.faceshow.aaspring.utils.listener.OnBackButtonPressedHandler;
import com.guochao.faceshow.aaspring.views.LoginAnimationView;
import com.guochao.faceshow.mine.view.SettingActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.Tools;
import com.guochao.faceshow.views.e;
import java.io.File;
import java.util.HashMap;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import y7.i;
import y7.o;
import y7.q;
import y7.t;
/* loaded from: classes3.dex */
public class MainActivity extends BaseMainActivity implements NewestDynamicListFragment.d, MainMenuDialogFragment.e {

    /* renamed from: w  reason: collision with root package name */
    public static boolean f24551w = false;

    /* renamed from: x  reason: collision with root package name */
    public static final Class[] f24552x = {LiveViewPagerFragment.class, UgcAndShortVideoFragment.class, Fragment.class, MessageAndFriendFragment.class, UserFragment.class};
    @BindView
    ViewGroup mTabs;

    /* renamed from: p  reason: collision with root package name */
    View[] f24554p;

    /* renamed from: s  reason: collision with root package name */
    private SparseArray<String> f24557s;

    /* renamed from: t  reason: collision with root package name */
    Runnable f24558t;

    /* renamed from: u  reason: collision with root package name */
    private long f24559u;

    /* renamed from: v  reason: collision with root package name */
    boolean f24560v;

    /* renamed from: o  reason: collision with root package name */
    private long f24553o = 0;

    /* renamed from: q  reason: collision with root package name */
    private final HashMap<String, Fragment> f24555q = new HashMap<>();

    /* renamed from: r  reason: collision with root package name */
    private int f24556r = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LottieAnimationView f24561a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImageView f24562b;

        a(LottieAnimationView lottieAnimationView, ImageView imageView) {
            this.f24561a = lottieAnimationView;
            this.f24562b = imageView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            super.onAnimationCancel(animator);
            ImageView imageView = this.f24562b;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            this.f24561a.setVisibility(4);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            ImageView imageView = this.f24562b;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            this.f24561a.setVisibility(4);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f24561a.setVisibility(0);
            ImageView imageView = this.f24562b;
            if (imageView != null) {
                imageView.setVisibility(4);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MainActivity.this.getActivity() == null || MainActivity.this.getActivity().isFinishing()) {
                return;
            }
            MainActivity.this.F0(false);
            PushBean pushBean = (PushBean) MemoryCache.getInstance().get(PushBean.class);
            if (pushBean != null) {
                pushBean.withEmptyChat = false;
            }
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ScreenshotsUtils.INSTANCE.initDisplayListener(MainActivity.this);
        }
    }

    /* loaded from: classes3.dex */
    class d extends BaseSoundEffectListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f24566a;

        d(int i9) {
            this.f24566a = i9;
        }

        @Override // com.guochao.faceshow.aaspring.utils.listener.BaseSoundEffectListener
        public void doClick(View view) {
            MainActivity.this.q1(this.f24566a);
            int i9 = this.f24566a;
            if (i9 == 0) {
                GCEventUtils.track(GCEventUtils.CLICK_RANKING);
            } else if (i9 == 1) {
                GCEventUtils.track(GCEventUtils.CLICK_FRIENDRING);
            } else if (i9 == 3) {
                GCEventUtils.track(GCEventUtils.CLICK_IM);
            } else if (i9 != 4) {
            } else {
                GCEventUtils.track(GCEventUtils.CLICK_MINE);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DisableDoubleClickUtils.canClick(view)) {
                AppManager.getInstance().killActivity(TCVideoRecordActivity.class);
                MainMenuDialogFragment.T1(MainActivity.this);
                MainActivity.this.m1(R.id.ht_photo, null);
                MainActivity.this.m1(R.id.ht_live, null);
            }
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    class g implements e.a {
        g() {
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            if (z10) {
                dialog.dismiss();
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    public MainActivity() {
        SparseArray<String> sparseArray = new SparseArray<>();
        this.f24557s = sparseArray;
        sparseArray.put(0, EventTrackingV2Utils.main_home_tab_click);
        this.f24557s.put(1, EventTrackingV2Utils.main_ugc_tab_click);
        this.f24557s.put(3, EventTrackingV2Utils.main_im_tab_click);
        this.f24560v = false;
    }

    private ImageView d1(View view) {
        return (ImageView) view.findViewWithTag("tab_icon");
    }

    private LottieAnimationView g1(View view) {
        return (LottieAnimationView) view.findViewWithTag("lottie");
    }

    private void h1() {
        for (int i9 = 0; i9 < 5; i9++) {
            LottieAnimationView g12 = g1(this.f24554p[i9]);
            ImageView d12 = d1(this.f24554p[i9]);
            if (g12 != null) {
                g12.setVisibility(4);
                g12.e(new a(g12, d12));
            }
            if (d12 != null) {
                d12.setVisibility(0);
            }
            if (i9 == 0) {
                g12.setImageAssetsFolder("tab_anim/bottom_index1/");
                g12.setAnimation("tab_anim/icon01_index.json");
            } else if (i9 == 1) {
                g12.setImageAssetsFolder("tab_anim/bottom_index2/");
                g12.setAnimation("tab_anim/icon02_index.json");
            } else if (i9 == 3) {
                g12.setImageAssetsFolder("tab_anim/bottom_index3/");
                g12.setAnimation("tab_anim/icon03_index.json");
            } else if (i9 == 4) {
                try {
                    g12.setImageAssetsFolder("tab_anim/bottom_index4/");
                    g12.setAnimation("tab_anim/icon04_index.json");
                } catch (Exception unused) {
                }
            }
        }
    }

    private void o1(int i9) {
        int i10 = 0;
        while (i10 < 5) {
            LottieAnimationView g12 = g1(this.f24554p[i10]);
            ImageView d12 = d1(this.f24554p[i10]);
            if (i10 == 0) {
                d12.setImageResource(i10 != i9 ? R.mipmap.main_icon01_unselected : R.mipmap.main_icon01_selected);
            } else if (i10 == 1) {
                d12.setImageResource(i10 != i9 ? R.mipmap.main_icon02_unselected : R.mipmap.main_icon02_selected);
            } else if (i10 == 3) {
                d12.setImageResource(i10 != i9 ? R.mipmap.main_icon03_unselected : R.mipmap.main_icon03_selected);
            } else if (i10 == 4) {
                d12.setImageResource(i10 != i9 ? R.mipmap.main_icon04_unselected : R.mipmap.main_icon04_selected);
            }
            if (i10 != i9) {
                if (g12 != null) {
                    g12.setVisibility(4);
                }
                if (d12 != null) {
                    d12.setVisibility(0);
                }
            } else if (g12 != null) {
                g12.setVisibility(0);
                g12.q();
            }
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q1(int i9) {
        if (this.f24556r == i9) {
            if (System.currentTimeMillis() - this.f24559u < 2000) {
                return;
            }
            this.f24559u = System.currentTimeMillis();
            Fragment findFragmentById = getSupportFragmentManager().findFragmentById(16908305);
            if (findFragmentById instanceof p7.f) {
                ((p7.f) findFragmentById).reload();
                return;
            }
            return;
        }
        this.f24556r = i9;
        String str = this.f24557s.get(i9);
        if (!TextUtils.isEmpty(str)) {
            EventTrackingV2Utils.INSTANCE.track(str);
        }
        if (i9 != 0 && LiveListFragment.sShowedLiveTips) {
            ja.a.b().e("KEY_LIVE_CLICK_TIPS");
        }
        AutoCleanManager.cleanIfNeeded();
        int i10 = 0;
        while (true) {
            View[] viewArr = this.f24554p;
            if (i10 >= viewArr.length) {
                break;
            }
            viewArr[i10].setSelected(i9 == i10);
            i10++;
        }
        r1(i9);
        Class[] clsArr = f24552x;
        String name = clsArr[i9].getName();
        Fragment fragment = this.f24555q.get(name);
        Fragment findFragmentById2 = getSupportFragmentManager().findFragmentById(16908305);
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        if (findFragmentById2 != null) {
            beginTransaction.detach(findFragmentById2);
        }
        if (fragment == null) {
            Fragment instantiate = Fragment.instantiate(getActivity(), clsArr[i9].getName());
            beginTransaction.add(16908305, instantiate, name);
            this.f24555q.put(name, instantiate);
        } else {
            beginTransaction.attach(fragment);
        }
        if (i9 == 0) {
            x1();
        }
        o1(i9);
        beginTransaction.commitNowAllowingStateLoss();
    }

    private void x1() {
        if (this.f24560v) {
            ReviewDialog.Q1(this);
            this.f24560v = false;
        }
    }

    @Override // com.guochao.faceshow.utils.LiveRandomGo.GoRandomLiveListener
    public void addRewardDiamond(int i9) {
        p9.a.g().B(p9.a.g().f() + i9);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.BaseMainActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public com.guochao.faceshow.aaspring.base.activity.a getActivityConfig() {
        return new a.C0147a(this).b(true).c(true).a();
    }

    public int getCurrentIndex() {
        return this.f24556r;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.BaseMainActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_main;
    }

    @Override // com.guochao.faceshow.utils.LiveRandomGo.GoRandomLiveListener
    public void gotoUgc() {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof FragmentActivity) {
            currTopActivity.startActivity(new Intent(getActivity(), MainActivity.class).addFlags(608174080));
        }
        q1(1);
    }

    public boolean i1() {
        return getSupportFragmentManager().findFragmentById(16908305) instanceof MessageAndFriendFragment;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void initView() {
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        getSupportFragmentManager().beginTransaction().add(new TIMMessageHelperFragment(), "tim").commitAllowingStateLoss();
        this.f24554p = new View[this.mTabs.getChildCount()];
        int i9 = 0;
        while (true) {
            View[] viewArr = this.f24554p;
            if (i9 < viewArr.length) {
                viewArr[i9] = this.mTabs.getChildAt(i9);
                if (i9 != 2) {
                    this.f24554p[i9].setSoundEffectsEnabled(false);
                    this.f24554p[i9].setOnClickListener(new d(i9));
                }
                i9++;
            } else {
                findViewById(R.id.main_tabs).setOnClickListener(new e());
                this.mTabs.setOnClickListener(new f());
                HelloStarHelp.INSTANCE.checkHelloGift24HourGiftDialog(this);
                return;
            }
        }
    }

    public boolean k1() {
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(16908305);
        return (findFragmentById instanceof UgcAndShortVideoFragment) && ((UgcAndShortVideoFragment) findFragmentById).currentIndex() == 1;
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity
    public void loadData() {
    }

    public void m1(int i9, View view) {
        if (i9 == R.id.ht_live) {
            Fragment findFragmentByTag = getSupportFragmentManager().findFragmentByTag(LiveViewPagerFragment.class.getName());
            if (findFragmentByTag instanceof LiveViewPagerFragment) {
                ((LiveViewPagerFragment) findFragmentByTag).f2();
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.ugc.fragment.NewestDynamicListFragment.d
    public void n(int i9, BaseDynamicViewHolder baseDynamicViewHolder) {
        getCurrentIndex();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.BaseMainActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i9, int i10, @Nullable Intent intent) {
        super.onActivityResult(i9, i10, intent);
        LiveViewPagerFragment liveViewPagerFragment = (LiveViewPagerFragment) this.f24555q.get(LiveViewPagerFragment.class.getName());
        if (liveViewPagerFragment != null) {
            liveViewPagerFragment.onActivityResult(i9, i10, intent);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
            getSupportFragmentManager().popBackStack();
            return;
        }
        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(16908305);
        if ((findFragmentById instanceof OnBackButtonPressedHandler) && ((OnBackButtonPressedHandler) findFragmentById).onBack()) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        Tools.deleteDirWihtFile(new File(FilePathProvider.getPrivateRootPathV2("Music")));
        if (currentTimeMillis - this.f24553o < 2000) {
            this.f20607m = false;
            try {
                moveTaskToBack(true);
                return;
            } catch (Exception unused) {
                finish();
                return;
            }
        }
        ToastUtils.showToast(getActivity(), (int) R.string.quit_app);
        this.f24553o = System.currentTimeMillis();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.BaseMainActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        LoginAnimationView.a();
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.main_page);
        UserStateHolder.reset();
        k8.a.c().d(this);
        super.onCreate(bundle);
        h1();
        q1(SpUtils.getInt(getActivity(), Contants.LAST_PAGE, 0));
        if (BaseAppContext.isChange) {
            startActivity(new Intent(this, SettingActivity.class));
            BaseAppContext.isChange = false;
            this.f20607m = true;
            return;
        }
        j.e().p();
        HandlerGetter.getMainHandler().postDelayed(new b(), 300L);
        HandlerGetter.getMainHandler().postDelayed(new c(), 500L);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.BaseMainActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.base.mvvm.activity.GCCoreActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        bb.a.e().i();
        EventBus.getDefault().post(new EventMainActivityDestroy());
        EventBus.getDefault().unregister(this);
        if (this.f24558t != null) {
            HandlerGetter.getMainHandler().removeCallbacks(this.f24558t);
        }
        ScreenshotsUtils.INSTANCE.removeDisplayListener(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onHelloGiftEvent(String str) {
        if (TextUtils.isEmpty(str) || !"Check_hello_gift".equals(str)) {
            return;
        }
        HelloStarHelp.INSTANCE.checkHelloGift24HourGiftDialog(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onJumpEvent(i iVar) {
        if (iVar.a() == 0) {
            SpUtils.setInt(getActivity(), Contants.LAST_PAGE_HOME, iVar.b());
        }
        q1(iVar.a());
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (WatchLiveRoomActivity.L4) {
            startActivity(new Intent(this, WatchLiveRoomActivity.class).putExtra("from_float", 1).addFlags(603979776));
            WatchLiveRoomActivity.L4 = false;
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.BaseMainActivity, com.guochao.faceshow.aaspring.base.activity.BaseActivity, com.guochao.faceshow.aaspring.manager.i.InterfaceC0154i
    public void onServerConfigChanged(ServerConfig serverConfig, ServerConfig serverConfig2) {
        super.onServerConfigChanged(serverConfig, serverConfig2);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onShowReviewEvent(q qVar) {
        if (this.f24556r == 0) {
            if (((LiveViewPagerFragment) getSupportFragmentManager().findFragmentByTag(LiveViewPagerFragment.class.getName())) != null) {
                ReviewDialog.Q1(this);
                return;
            }
            return;
        }
        this.f24560v = true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onUgcPublishEvent(o oVar) {
        if (oVar.a() != null) {
            DynamicBean a10 = oVar.a();
            q1(1);
            UgcAndShortVideoFragment ugcAndShortVideoFragment = (UgcAndShortVideoFragment) this.f24555q.get(UgcAndShortVideoFragment.class.getName());
            if (ugcAndShortVideoFragment != null) {
                MemoryCache.getInstance().put(a10);
                ugcAndShortVideoFragment.ugcEvent();
            }
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onVersionDismissEvent(t tVar) {
        y0();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        if (z10) {
            ((EmailRecallViewModel) new ViewModelProvider(this).get(EmailRecallViewModel.class)).checkEmailRecall(this);
        }
    }

    public void r1(int i9) {
        SpUtils.setInt(this, Contants.LAST_PAGE, i9);
    }

    @Override // com.guochao.faceshow.utils.LiveRandomGo.GoRandomLiveListener
    public void sendLiveGift() {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof WatchLiveRoomActivity) {
            d9.g e02 = ((WatchLiveRoomActivity) currTopActivity).e0();
            if (e02 instanceof WatcherLiveRoomFragment) {
                ((WatcherLiveRoomFragment) e02).showGiftDialog();
                return;
            }
            return;
        }
        P0(1);
    }

    @Override // com.guochao.faceshow.utils.LiveRandomGo.GoRandomLiveListener
    public void sendLiveMsg() {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof WatchLiveRoomActivity) {
            d9.g e02 = ((WatchLiveRoomActivity) currTopActivity).e0();
            if (e02 instanceof WatcherLiveRoomFragment) {
                ((WatcherLiveRoomFragment) e02).F5();
                return;
            }
            return;
        }
        P0(2);
    }

    @Override // com.guochao.faceshow.utils.LiveRandomGo.GoRandomLiveListener
    public void showRechargeDialog() {
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity instanceof FragmentActivity) {
            RechargeDialog.showDialog(((FragmentActivity) currTopActivity).getSupportFragmentManager(), 0, 1, true);
        }
    }

    public void t1(String str) {
        alert(str, null, new g(), true).show();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.main.BaseMainActivity
    protected void y0() {
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().M(true);
    }
}
