package com.guochao.faceshow.aaspring.modulars.vip.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.android.billingclient.api.SkuDetails;
import com.android.billingclient.api.m;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.SubSkuDetailsBean;
import com.guochao.faceshow.aaspring.beans.SubStateBean;
import com.guochao.faceshow.aaspring.beans.UserCenterBean;
import com.guochao.faceshow.aaspring.modulars.googlepay.d;
import com.guochao.faceshow.aaspring.modulars.googlepay.f;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BaseBuyVipFragment;
import com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipGuideParentFragment;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.aaspring.utils.ViewPagerUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.HandlerGetter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import y7.r;
/* loaded from: classes3.dex */
public class BuyVipGuideParentFragment extends BaseVipGuideParentFragment implements d.x, BaseBuyVipFragment.h {

    /* renamed from: d  reason: collision with root package name */
    private boolean f23375d = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f23376e = false;

    /* renamed from: f  reason: collision with root package name */
    private Map<String, SubStateBean> f23377f = new HashMap();

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().u0(BuyVipGuideParentFragment.this);
            com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().z0(false, 0);
        }
    }

    /* loaded from: classes3.dex */
    class b implements d.y {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.y
        public void a(Map<String, SubStateBean> map) {
            BuyVipGuideParentFragment.this.f23375d = true;
            BuyVipGuideParentFragment.this.f23377f.putAll(map);
            BuyVipGuideParentFragment.this.Z1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BuyVipContainerDialogFragment f23380a;

        c(BuyVipContainerDialogFragment buyVipContainerDialogFragment) {
            this.f23380a = buyVipContainerDialogFragment;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f23380a.Q1();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* loaded from: classes3.dex */
        class a extends com.guochao.faceshow.aaspring.base.http.callback.c<UserCenterBean> {
            a() {
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            /* renamed from: a */
            public void onResponse(@Nullable UserCenterBean userCenterBean, @NonNull FaceCastBaseResponse<UserCenterBean> faceCastBaseResponse) {
                UserBean currentUser = BuyVipGuideParentFragment.this.getCurrentUser();
                if (userCenterBean != null) {
                    currentUser.img = userCenterBean.getUserImg();
                    currentUser.payPassword = SpUtils.getStr(BuyVipGuideParentFragment.this.getActivity(), Contants.payPassword);
                    currentUser.setUserVipMsg(userCenterBean.getUserVipMsg());
                }
                if (BuyVipGuideParentFragment.this.isDetached() || BuyVipGuideParentFragment.this.getActivity() == null || BuyVipGuideParentFragment.this.getActivity().isFinishing() || BuyVipGuideParentFragment.this.getActivity().isDestroyed()) {
                    return;
                }
                for (Fragment fragment : BuyVipGuideParentFragment.this.getChildFragmentManager().getFragments()) {
                    if (fragment instanceof BuyVipFragment) {
                        BuyVipFragment buyVipFragment = (BuyVipFragment) fragment;
                        buyVipFragment.a2(false);
                        buyVipFragment.updateSubState(new r(currentUser.getUserVipMsg().getIsVip()));
                    }
                }
                com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().z0(false, 0);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NonNull g7.a<UserCenterBean> aVar) {
                BuyVipGuideParentFragment.this.onSubscribeFailed();
            }
        }

        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BuyVipGuideParentFragment.this.isDetached() || BuyVipGuideParentFragment.this.getActivity() == null || BuyVipGuideParentFragment.this.getActivity().isFinishing() || BuyVipGuideParentFragment.this.getActivity().isDestroyed()) {
                return;
            }
            BuyVipGuideParentFragment.this.post(Contants.getInfoDetailV2).M(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements m {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(List list, com.android.billingclient.api.e eVar) {
            if (list == null) {
                if (com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().d0().isEmpty()) {
                    ToastUtils.showToast(BaseApplication.getInstance(), TextUtils.isEmpty(eVar.a()) ? BaseApplication.getInstance().getString(R.string.google_pay_failed) : eVar.a());
                }
            } else if (BuyVipGuideParentFragment.this.getActivity() == null || BuyVipGuideParentFragment.this.getActivity().isDestroyed() || BuyVipGuideParentFragment.this.getActivity().isFinishing()) {
            } else {
                BuyVipGuideParentFragment.this.f23376e = true;
                com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().w0(list);
                BuyVipGuideParentFragment.this.Z1();
            }
        }

        @Override // com.android.billingclient.api.m
        public void a(@NonNull final com.android.billingclient.api.e eVar, @Nullable final List<SkuDetails> list) {
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.vip.fragment.a
                @Override // java.lang.Runnable
                public final void run() {
                    BuyVipGuideParentFragment.e.this.c(list, eVar);
                }
            });
        }
    }

    private boolean V1(SkuDetails skuDetails) {
        SubStateBean subStateBean;
        for (String str : this.f23377f.keySet()) {
            String str2 = null;
            try {
                str2 = skuDetails.f();
            } catch (Exception unused) {
            }
            if (str.equals(str2) && (subStateBean = this.f23377f.get(str)) != null && subStateBean.getSubType() != null && subStateBean.getSubType().intValue() == 0 && !getCurrentUser().getUserId().equals(subStateBean.getUserId())) {
                return true;
            }
        }
        return false;
    }

    public static BuyVipGuideParentFragment X1(int i9, int i10) {
        BuyVipGuideParentFragment buyVipGuideParentFragment = new BuyVipGuideParentFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("mode", i9);
        bundle.putInt("from", i10);
        buyVipGuideParentFragment.setArguments(bundle);
        return buyVipGuideParentFragment;
    }

    private void Y1() {
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().W(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1() {
        FragmentPagerAdapter fragmentPagerAdapter;
        FragmentPagerAdapter fragmentPagerAdapter2;
        String str;
        String str2;
        if (this.f23375d && this.f23376e) {
            List<SkuDetails> d02 = com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().d0();
            LogUtils.i(com.guochao.faceshow.aaspring.modulars.googlepay.d.class.getSimpleName(), "list = " + GsonGetter.getGson().toJson(d02));
            List<SubSkuDetailsBean> arrayList = new ArrayList<>();
            List<SubSkuDetailsBean> arrayList2 = new ArrayList<>();
            for (int i9 = 0; i9 < d02.size(); i9++) {
                SkuDetails skuDetails = d02.get(i9);
                try {
                    String f10 = skuDetails.f();
                    if (f10.startsWith("vip")) {
                        int i10 = 0;
                        while (true) {
                            if (i10 >= arrayList.size()) {
                                i10 = -1;
                                break;
                            }
                            try {
                                str2 = arrayList.get(i10).getSkuDetails().f();
                            } catch (Exception unused) {
                                str2 = null;
                            }
                            if (com.guochao.faceshow.aaspring.modulars.googlepay.d.e0(str2).equals(com.guochao.faceshow.aaspring.modulars.googlepay.d.e0(f10))) {
                                break;
                            }
                            i10++;
                        }
                        if (i10 > -1) {
                            SubSkuDetailsBean subSkuDetailsBean = arrayList.get(i10);
                            if (subSkuDetailsBean.isDisable()) {
                                arrayList.remove(subSkuDetailsBean);
                                arrayList.add(new SubSkuDetailsBean(skuDetails, V1(skuDetails)));
                            }
                        } else {
                            arrayList.add(new SubSkuDetailsBean(skuDetails, V1(skuDetails)));
                        }
                    } else if (f10.startsWith("vvip")) {
                        int i11 = 0;
                        while (true) {
                            if (i11 >= arrayList2.size()) {
                                i11 = -1;
                                break;
                            }
                            try {
                                str = arrayList2.get(i11).getSkuDetails().f();
                            } catch (Exception unused2) {
                                str = null;
                            }
                            if (com.guochao.faceshow.aaspring.modulars.googlepay.d.e0(str).equals(com.guochao.faceshow.aaspring.modulars.googlepay.d.e0(f10))) {
                                break;
                            }
                            i11++;
                        }
                        if (i11 > -1) {
                            SubSkuDetailsBean subSkuDetailsBean2 = arrayList2.get(i11);
                            if (subSkuDetailsBean2.isDisable()) {
                                arrayList2.remove(subSkuDetailsBean2);
                                arrayList2.add(new SubSkuDetailsBean(skuDetails, V1(skuDetails)));
                            }
                        } else {
                            arrayList2.add(new SubSkuDetailsBean(skuDetails, V1(skuDetails)));
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (getActivity() == null || getActivity().isDestroyed() || getActivity().isFinishing()) {
                return;
            }
            BuyVipFragment buyVipFragment = (BuyVipFragment) ViewPagerUtils.getFragmentAt(getChildFragmentManager(), this.mViewPager2, 0);
            if (buyVipFragment == null && (fragmentPagerAdapter2 = (FragmentPagerAdapter) this.mViewPager2.getAdapter()) != null) {
                buyVipFragment = (BuyVipFragment) fragmentPagerAdapter2.getItem(0);
            }
            if (buyVipFragment != null) {
                buyVipFragment.d2(arrayList);
            }
            BuyVipFragment buyVipFragment2 = (BuyVipFragment) ViewPagerUtils.getFragmentAt(getChildFragmentManager(), this.mViewPager2, 1);
            if (buyVipFragment2 == null && (fragmentPagerAdapter = (FragmentPagerAdapter) this.mViewPager2.getAdapter()) != null) {
                buyVipFragment2 = (BuyVipFragment) fragmentPagerAdapter.getItem(1);
            }
            if (buyVipFragment2 != null) {
                buyVipFragment2.d2(arrayList2);
            }
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.vip_load_success);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0063, code lost:
        if (r5 == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0069, code lost:
        if (r5.startsWith(r12) == false) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006b, code lost:
        if (r7 == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
        if (r7.getSubType() == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007b, code lost:
        if (r7.getSubType().intValue() != 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0085, code lost:
        if (com.guochao.faceshow.aaspring.modulars.googlepay.d.h0() != r5.contains("_")) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0087, code lost:
        r4 = r4 + 1;
     */
    @Override // com.guochao.faceshow.aaspring.modulars.vip.fragment.BaseBuyVipFragment.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void B1(java.lang.String r11, java.lang.String r12) {
        /*
            r10 = this;
            java.util.Map<java.lang.String, com.guochao.faceshow.aaspring.beans.SubStateBean> r0 = r10.f23377f
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r1 = 1
            r2 = 0
            r3 = 0
            r4 = 1
        Le:
            boolean r5 = r0.hasNext()
            java.lang.String r6 = "_"
            if (r5 == 0) goto L8a
            java.lang.Object r5 = r0.next()
            java.lang.String r5 = (java.lang.String) r5
            java.util.Map<java.lang.String, com.guochao.faceshow.aaspring.beans.SubStateBean> r7 = r10.f23377f
            java.lang.Object r7 = r7.get(r5)
            com.guochao.faceshow.aaspring.beans.SubStateBean r7 = (com.guochao.faceshow.aaspring.beans.SubStateBean) r7
            if (r5 == 0) goto L32
            boolean r8 = r5.equals(r11)
            if (r8 == 0) goto L32
            if (r7 == 0) goto L32
            java.lang.String r2 = r7.getPurchaseToken()
        L32:
            if (r5 == 0) goto L61
            boolean r8 = r5.startsWith(r12)
            if (r8 == 0) goto L61
            if (r7 == 0) goto L61
            com.guochao.faceshow.bean.UserBean r8 = r10.getCurrentUser()
            java.lang.String r8 = r8.getUserId()
            java.lang.String r9 = r7.getUserId()
            boolean r8 = r8.equals(r9)
            if (r8 == 0) goto L61
            java.lang.String r5 = r7.getSign()     // Catch: java.lang.Exception -> L5c
            java.lang.String r5 = com.guochao.faceshow.aaspring.modulars.googlepay.d.a0(r5)     // Catch: java.lang.Exception -> L5c
            int r4 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Exception -> L5c
            r3 = 1
            goto Le
        L5c:
            r5 = move-exception
            r5.printStackTrace()
            goto Le
        L61:
            if (r3 != 0) goto Le
            if (r5 == 0) goto Le
            boolean r8 = r5.startsWith(r12)
            if (r8 == 0) goto Le
            if (r7 == 0) goto Le
            java.lang.Integer r8 = r7.getSubType()
            if (r8 == 0) goto Le
            java.lang.Integer r7 = r7.getSubType()
            int r7 = r7.intValue()
            if (r7 != 0) goto Le
            boolean r7 = com.guochao.faceshow.aaspring.modulars.googlepay.d.h0()
            boolean r5 = r5.contains(r6)
            if (r7 != r5) goto Le
            int r4 = r4 + 1
            goto Le
        L8a:
            com.guochao.faceshow.aaspring.modulars.googlepay.d r0 = com.guochao.faceshow.aaspring.modulars.googlepay.d.Z()
            int r0 = r0.f0()
            if (r4 <= r0) goto La7
            android.content.Context r11 = r10.getContext()
            com.guochao.faceshow.BaseApplication r12 = com.guochao.faceshow.BaseApplication.getInstance()
            r0 = 2131888656(0x7f120a10, float:1.9411953E38)
            java.lang.String r12 = r12.getString(r0)
            com.guochao.faceshow.aaspring.utils.ToastUtils.showToast(r11, r12)
            return
        La7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r12)
            boolean r12 = com.guochao.faceshow.aaspring.modulars.googlepay.d.h0()
            if (r12 == 0) goto Lc5
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            r12.append(r6)
            r12.append(r4)
            java.lang.String r12 = r12.toString()
            goto Lc9
        Lc5:
            java.lang.Integer r12 = java.lang.Integer.valueOf(r4)
        Lc9:
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            androidx.fragment.app.FragmentActivity r0 = r10.getActivity()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "(仅测试)升级的目标subjectId是："
            r1.append(r3)
            r1.append(r12)
            java.lang.String r1 = r1.toString()
            com.guochao.faceshow.aaspring.utils.ToastUtils.debugToast(r0, r1)
            com.guochao.faceshow.aaspring.modulars.googlepay.d r0 = com.guochao.faceshow.aaspring.modulars.googlepay.d.Z()
            int r1 = r10.f23344b
            r0.D0(r12, r11, r2, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.vip.fragment.BuyVipGuideParentFragment.B1(java.lang.String, java.lang.String):void");
    }

    public boolean W1(BuyVipContainerDialogFragment buyVipContainerDialogFragment) {
        if (!isDetached() && isAdded()) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            ViewPager viewPager = this.mViewPager2;
            Fragment fragmentAt = ViewPagerUtils.getFragmentAt(childFragmentManager, viewPager, viewPager.getCurrentItem());
            if (fragmentAt != null && (fragmentAt instanceof BuyVipFragment)) {
                BuyVipFragment buyVipFragment = (BuyVipFragment) fragmentAt;
                if (buyVipFragment.mAnimTop == null) {
                    return false;
                }
                TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, -1.0f);
                translateAnimation.setDuration(300L);
                buyVipFragment.mAnimTop.startAnimation(translateAnimation);
                translateAnimation.setAnimationListener(new c(buyVipContainerDialogFragment));
                return true;
            }
        }
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.vip.fragment.BaseBuyVipFragment.h
    public void b(View view, String str, int i9) {
        FragmentActivity activity = getActivity();
        ToastUtils.debugToast(activity, "开通的目标subjectId是：" + str);
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().C0(str, this.f23344b);
        EventTrackingV2Utils.INSTANCE.track(i9 == 1 ? EventTrackingV2Utils.start_buy_vip : EventTrackingV2Utils.start_buy_svip);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.vip.fragment.BaseVipGuideParentFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        int i9 = this.f23344b;
        if (i9 == 1) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.vip_dialog, "3");
        } else if (i9 == 3) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.vip_dialog, "2");
        } else if (i9 != 4) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.vip_dialog, "0");
        } else {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.vip_dialog, "1");
        }
        this.mViewPager2.post(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    protected void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* synthetic */ void onConsumeResponse() {
        f.a(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().o0(this);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().I0(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* synthetic */ void onPayError(Throwable th2) {
        f.b(this, th2);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public /* synthetic */ void onPayResponse() {
        f.c(this);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public void onSetupResponse(boolean z10) {
        if (z10) {
            Y1();
            com.guochao.faceshow.aaspring.modulars.googlepay.d.Z().K(new b());
            return;
        }
        ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(R.string.google_pay_failed));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public void onSubscribeFailed() {
        if (isDetached() || getActivity() == null || getActivity().isFinishing() || getActivity().isDestroyed() || (getParentFragment() instanceof BuyVipContainerDialogFragment)) {
            return;
        }
        for (Fragment fragment : getChildFragmentManager().getFragments()) {
            if (fragment instanceof BuyVipFragment) {
                ((BuyVipFragment) fragment).a2(false);
            }
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public void onSubscribeSuccess() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof BuyVipContainerDialogFragment) {
            W1((BuyVipContainerDialogFragment) parentFragment);
        } else {
            HandlerGetter.getMainHandler().postDelayed(new d(), 1000L);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.googlepay.d.x
    public void startSubscribe() {
        if (getParentFragment() instanceof BuyVipContainerDialogFragment) {
            return;
        }
        for (Fragment fragment : getChildFragmentManager().getFragments()) {
            if (fragment instanceof BuyVipFragment) {
                ((BuyVipFragment) fragment).a2(true);
            }
        }
    }
}
