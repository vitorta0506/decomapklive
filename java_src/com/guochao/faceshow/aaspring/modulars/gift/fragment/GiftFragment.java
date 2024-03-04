package com.guochao.faceshow.aaspring.modulars.gift.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import c8.a;
import com.facebook.GraphResponse;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.annotations.SerializedName;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AdsBean;
import com.guochao.faceshow.aaspring.beans.AppResource;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.ResourceCategoryItem;
import com.guochao.faceshow.aaspring.beans.ResourceListItemBean;
import com.guochao.faceshow.aaspring.beans.SendGiftResult;
import com.guochao.faceshow.aaspring.beans.UserVipData;
import com.guochao.faceshow.aaspring.manager.ResourceDownloadManager;
import com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity;
import com.guochao.faceshow.aaspring.modulars.gift.ComboSendGiftAnimator;
import com.guochao.faceshow.aaspring.modulars.gift.SendGiftRequestModel;
import com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftViewPagerFragment;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeManager;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.modulars.live.hello.HelloStarHelp;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.main.ShortVideoTopFansActivity;
import com.guochao.faceshow.aaspring.modulars.push.ThirdPushHelper;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ViewPagerUtils;
import com.guochao.faceshow.aaspring.views.TabLayout;
import com.guochao.faceshow.activity.MainActivity;
import com.guochao.faceshow.bean.BagListBean;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.gift.SendGiftCallBack;
import com.guochao.faceshow.gift.controller.GiftImageViewLocationEvent;
import com.guochao.faceshow.gift.view.GiftComboView;
import com.guochao.faceshow.gift.view.NumCheckSendView;
import com.guochao.faceshow.mine.model.MyWalletBean;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.utils.BagHelper;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.e;
import com.guochao.lib_base.R$style;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p9.a;
/* loaded from: classes3.dex */
public class GiftFragment extends BaseDialogFragment implements u8.c, GiftViewPagerFragment.b, a.e {
    private static final String TAG = "GiftViewPagerFragment";
    private String accountId;
    private String avarUrl;
    @BindView
    View backpackTitle;
    private String broadCaseUserName;
    private String broadCastUserId;
    private o chargeListener;
    @BindView
    View firstCharge;
    @BindView
    View firstRechargeActivity;
    @BindView
    TextView firstRechargeBottomText;
    @BindView
    TextView firstRechargeGet;
    @BindView
    ViewGroup firstRechargeHeader;
    @BindView
    TextView firstRechargeText;
    @BindView
    GiftComboView giftComboView;
    private q giftViewPagerAdapter;
    private boolean interceptClick;
    private boolean isShuijing;
    @BindView
    ImageView ivUserInfo;
    @BindView
    View ivWeight;
    @BindView
    protected View llMultiPlayer;
    @BindView
    ImageView luckyGiftAnimator;
    @BindView
    View luckyGiftHeader;
    @BindView
    TextView luckyGiftRule;
    @Nullable
    @BindView
    ViewGroup mAdsArea;
    @Nullable
    @BindView
    ImageView mAdsTips;
    @Nullable
    @BindView
    ViewGroup mAdsView;
    ResourceListItemBean mCurrentGiftItemData;
    u8.b mGiftItemListener;
    @Nullable
    public HandyGifViewHelper mHandyGifViewHelper;
    @BindView
    NumCheckSendView mNumCheckSendView;
    @BindView
    ImageView mRankList;
    ResourceCategoryItem mResourceCategoryItem;
    @BindView
    View mSelectAllView;
    SendToAllUserGuidPop mSendToAllUserGuidPop;
    @BindView
    TabLayout mTabLayout;
    @BindView
    TextView mTextViewDiamonds;
    String mVideoId;
    @BindView
    ViewPager mViewPager;
    private boolean multiPlayer;
    @BindView
    ImageView myCollection;
    @BindView
    View realContent;
    @BindView
    RecyclerView recyclerView;
    @BindView
    View tabLayout;
    @BindView
    View topSend;
    protected String userId;
    private s userInfoAdapter;
    protected String userName;
    private UserVipData userVipData;
    protected int mTheme = -1;
    int mType = 4;
    protected boolean mSelectAll = false;
    private long showTime = -1;
    private final List<LiveInfoMatchBean> imUsers = new ArrayList();
    private List<Fragment> mFragments = new ArrayList();
    private List<ResourceCategoryItem> mResourceCategoryItems = new ArrayList();
    private boolean firstRechargeShowed = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<BagListBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f17790a;

        a(List list) {
            this.f17790a = list;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<SparseArray<BagListBean>> aVar) {
            GiftFragment.this.setGiftData(this.f17790a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable SparseArray<BagListBean> sparseArray, @NonNull FaceCastBaseResponse<SparseArray<BagListBean>> faceCastBaseResponse) {
            if (sparseArray != null && sparseArray.size() > 0) {
                BagHelper.INSTANCE.mergeData(sparseArray, this.f17790a);
            } else {
                Iterator it = this.f17790a.iterator();
                while (it.hasNext()) {
                    if ("bag".equals(((ResourceCategoryItem) it.next()).getChildCode())) {
                        it.remove();
                    }
                }
            }
            GiftFragment.this.setGiftData(this.f17790a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ViewPager.OnPageChangeListener {

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Fragment f17793a;

            a(Fragment fragment) {
                this.f17793a = fragment;
            }

            @Override // java.lang.Runnable
            public void run() {
                ((GiftViewPagerFragment) this.f17793a).W1();
            }
        }

        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i9) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i9, float f10, int i10) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i9) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.gift_dialog_switch_tab);
            if (GiftFragment.this.mResourceCategoryItems.size() > i9) {
                GiftFragment giftFragment = GiftFragment.this;
                t8.a.c(giftFragment.mType, ((ResourceCategoryItem) giftFragment.mResourceCategoryItems.get(i9)).getSourctTypeId());
            }
            Fragment fragmentAt = ViewPagerUtils.getFragmentAt(GiftFragment.this.getChildFragmentManager(), GiftFragment.this.mViewPager, 0);
            if (i9 != 0) {
                if (fragmentAt instanceof GiftViewPagerFragment) {
                    ((GiftViewPagerFragment) fragmentAt).U1();
                }
            } else if (fragmentAt instanceof GiftViewPagerFragment) {
                ((GiftViewPagerFragment) fragmentAt).e2();
            }
            for (Fragment fragment : GiftFragment.this.mFragments) {
                if (fragment instanceof GiftViewPagerFragment) {
                    ((GiftViewPagerFragment) fragment).S1();
                }
            }
            ResourceCategoryItem resourceCategoryItem = (ResourceCategoryItem) GiftFragment.this.mResourceCategoryItems.get(i9);
            if ("bag".equals(resourceCategoryItem.getChildCode()) && GiftFragment.this.mFragments.size() > i9 && (GiftFragment.this.mFragments.get(i9) instanceof GiftViewPagerFragment)) {
                ((GiftViewPagerFragment) GiftFragment.this.mFragments.get(i9)).d2();
            }
            GiftFragment.this.checkToItem("1".equals(resourceCategoryItem.getIsToken()));
            GiftFragment.this.giftComboView.reset();
            GiftFragment.this.luckyGiftHeader.setVisibility(8);
            GiftFragment.this.showFirstRecharge(true);
            Fragment fragment2 = (Fragment) GiftFragment.this.mFragments.get(i9);
            if (fragment2 == null || !(fragment2 instanceof GiftViewPagerFragment)) {
                return;
            }
            GiftFragment.this.giftComboView.postDelayed(new a(fragment2), 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17795a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f17796b;

        c(int i9, int i10) {
            this.f17795a = i9;
            this.f17796b = i10;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (z10) {
                if (GiftFragment.this.getActivity() != null) {
                    FragmentActivity activity = GiftFragment.this.getActivity();
                    Intent e02 = MyWalletActivity.e0(GiftFragment.this.getActivity(), this.f17795a, activity instanceof WatchLiveRoomActivity ? com.guochao.faceshow.aaspring.modulars.googlepay.d.X(((WatchLiveRoomActivity) activity).e0().getCurrentLiveRoom().getBroadCasterUserId()) : null);
                    e02.putExtra("interceptClick", GiftFragment.this.interceptClick);
                    e02.putExtra("isToken", String.valueOf(this.f17796b));
                    GiftFragment.this.startActivity(e02);
                } else if (GiftFragment.this.chargeListener != null) {
                    GiftFragment.this.chargeListener.a();
                }
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes3.dex */
    class d implements vh.o<Integer, Object> {
        d() {
        }

        @Override // vh.o
        /* renamed from: a */
        public Object apply(Integer num) throws Exception {
            GiftFragment giftFragment = GiftFragment.this;
            ResourceCategoryItem resourceCategoryItem = giftFragment.mResourceCategoryItem;
            ResourceListItemBean resourceListItemBean = giftFragment.mCurrentGiftItemData;
            if (resourceCategoryItem == null || resourceListItemBean == null || TextUtils.isEmpty(resourceListItemBean.getMp4Url()) || com.guochao.faceshow.aaspring.manager.a.g().r(resourceCategoryItem, resourceListItemBean)) {
                return "";
            }
            ResourceDownloadManager.download(resourceListItemBean.getMp4Url(), GiftFragment.this.getFilePath(resourceListItemBean), new p(), true);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftImageViewLocationEvent f17799a;

        e(GiftImageViewLocationEvent giftImageViewLocationEvent) {
            this.f17799a = giftImageViewLocationEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            GiftFragment giftFragment = GiftFragment.this;
            ComboSendGiftAnimator.animate(giftFragment.giftComboView, this.f17799a, giftFragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<MyWalletBean> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(MyWalletBean myWalletBean, @NonNull FaceCastBaseResponse<MyWalletBean> faceCastBaseResponse) {
            if (myWalletBean == null) {
                return;
            }
            p9.a.g().t(myWalletBean);
            GiftFragment.this.refreshDiamonds();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<MyWalletBean> aVar) {
            LogUtils.e("zune", String.format("%s...%s", Integer.valueOf(aVar.a()), aVar.c()));
        }
    }

    /* loaded from: classes3.dex */
    class g implements NumCheckSendView.h {
        g() {
        }

        @Override // com.guochao.faceshow.gift.view.NumCheckSendView.h
        public void a(String str, int i9) {
            if (GiftFragment.this.sendGiftButtonClick(str)) {
                GiftFragment.this.showComboView();
                HandyGifViewHelper handyGifViewHelper = GiftFragment.this.mHandyGifViewHelper;
                if (handyGifViewHelper != null) {
                    handyGifViewHelper.trackSend();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    class h implements NumCheckSendView.g {
        h() {
        }

        @Override // com.guochao.faceshow.gift.view.NumCheckSendView.g
        public void a(int i9, int i10) {
            y7.p pVar = new y7.p();
            pVar.e(GiftFragment.this.mResourceCategoryItem);
            pVar.g(GiftFragment.this.mCurrentGiftItemData);
            pVar.f(i10);
            EventBus.getDefault().post(pVar);
        }
    }

    /* loaded from: classes3.dex */
    class i implements GiftComboView.ComboViewListener {
        i() {
        }

        @Override // com.guochao.faceshow.gift.view.GiftComboView.ComboViewListener
        public void onCombo(@NonNull GiftComboView giftComboView, int i9) {
            GiftFragment giftFragment = GiftFragment.this;
            if (!giftFragment.sendGiftButtonClick(giftFragment.mNumCheckSendView.f25324h)) {
                GiftFragment.this.giftComboView.reset();
                return;
            }
            HandyGifViewHelper handyGifViewHelper = GiftFragment.this.mHandyGifViewHelper;
            if (handyGifViewHelper != null) {
                handyGifViewHelper.trackSend();
            }
            GiftFragment giftFragment2 = GiftFragment.this;
            giftFragment2.giftImageLocation(new GiftImageViewLocationEvent(new int[]{1, 2}, giftFragment2.mCurrentGiftItemData.getImg()));
        }

        @Override // com.guochao.faceshow.gift.view.GiftComboView.ComboViewListener
        @Deprecated
        public void onComboTimeout(@NonNull GiftComboView giftComboView) {
            GiftFragment.this.mNumCheckSendView.setVisibility(0);
        }

        @Override // com.guochao.faceshow.gift.view.GiftComboView.ComboViewListener
        public void onComboTimeout2(@NonNull GiftComboView giftComboView) {
            ResourceListItemBean resourceListItemBean = GiftFragment.this.mCurrentGiftItemData;
            if (resourceListItemBean == null || !resourceListItemBean.isHandyGift()) {
                return;
            }
            GiftFragment.this.dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements SendGiftCallBack {
        j() {
        }

        @Override // com.guochao.faceshow.gift.SendGiftCallBack
        public void onSendGiftFailure(@NonNull AppResource appResource) {
            GiftFragment giftFragment = GiftFragment.this;
            giftFragment.notifyBackPageGift(giftFragment.mCurrentGiftItemData, appResource);
        }

        @Override // com.guochao.faceshow.gift.SendGiftCallBack
        public void onSendGiftSuccessful() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k implements a.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17806a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f17807b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f17808c;

        k(int i9, List list, int i10) {
            this.f17806a = i9;
            this.f17807b = list;
            this.f17808c = i10;
        }

        @Override // p9.a.f
        public void onCustomRecharge() {
            GiftFragment.this.showChargeDialog(1);
        }

        @Override // p9.a.f
        public void onResponse() {
            p9.a.g().D(p9.a.g().e().getTokenNum() - this.f17806a);
            if (GiftFragment.this.mGiftItemListener != null) {
                Bundle bundle = new Bundle();
                GiftFragment.putType(GiftFragment.this.mType, bundle);
                EventTrackingUtils.getInstance().track(EventTrackingUtils.SEND_GIFT_CLICK, bundle);
                GiftFragment giftFragment = GiftFragment.this;
                giftFragment.mGiftItemListener.onSelectGift(giftFragment, giftFragment.mResourceCategoryItem, giftFragment.mCurrentGiftItemData, this.f17807b, this.f17808c, giftFragment.isShuijing, GiftFragment.this.giftComboView.getCurrentComboId(), null);
            }
            GiftFragment.this.refreshDiamonds();
            GiftFragment giftFragment2 = GiftFragment.this;
            if (giftFragment2.mType == 2) {
                giftFragment2.dismissAllowingStateLoss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l implements a.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f17810a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f17811b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f17812c;

        l(int i9, List list, int i10) {
            this.f17810a = i9;
            this.f17811b = list;
            this.f17812c = i10;
        }

        @Override // p9.a.f
        public void onCustomRecharge() {
            GiftFragment.this.showChargeDialog(0);
        }

        @Override // p9.a.f
        public void onResponse() {
            p9.a.g().B(p9.a.g().e().getDiamond().intValue() - this.f17810a);
            GiftFragment giftFragment = GiftFragment.this;
            u8.b bVar = giftFragment.mGiftItemListener;
            if (bVar != null) {
                bVar.onSelectGift(giftFragment, giftFragment.mResourceCategoryItem, giftFragment.mCurrentGiftItemData, this.f17811b, this.f17812c, giftFragment.isShuijing, GiftFragment.this.giftComboView.getCurrentComboId(), null);
            }
            GiftFragment.this.refreshDiamonds();
            GiftFragment giftFragment2 = GiftFragment.this;
            if (giftFragment2.mType == 2) {
                giftFragment2.dismissAllowingStateLoss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements a.h {
        m() {
        }

        @Override // c8.a.h
        public void a() {
            ImageView imageView;
            if (GiftFragment.this.isDetached() || GiftFragment.this.getActivity() == null || GiftFragment.this.getActivity().isDestroyed() || GiftFragment.this.getActivity().isFinishing() || (imageView = GiftFragment.this.mAdsTips) == null) {
                return;
            }
            imageView.setEnabled(false);
        }

        @Override // c8.a.h
        public void b(AdsBean adsBean) {
            if (GiftFragment.this.isDetached() || GiftFragment.this.getActivity() == null || GiftFragment.this.getActivity().isDestroyed() || GiftFragment.this.getActivity().isFinishing()) {
                return;
            }
            ImageView imageView = GiftFragment.this.mAdsTips;
            if (imageView != null) {
                imageView.setEnabled(true);
            }
            p9.a.g().B(p9.a.g().f() + 1);
            GiftFragment.this.refreshDiamonds();
        }

        @Override // c8.a.h
        public void c(String str) {
            ImageView imageView;
            if (GiftFragment.this.isDetached() || GiftFragment.this.getActivity() == null || GiftFragment.this.getActivity().isDestroyed() || GiftFragment.this.getActivity().isFinishing() || (imageView = GiftFragment.this.mAdsTips) == null) {
                return;
            }
            imageView.setEnabled(true);
        }

        @Override // c8.a.h
        public void onError() {
            if (GiftFragment.this.isDetached() || GiftFragment.this.getActivity() == null || GiftFragment.this.getActivity().isDestroyed() || GiftFragment.this.getActivity().isFinishing()) {
                return;
            }
            ImageView imageView = GiftFragment.this.mAdsTips;
            if (imageView != null) {
                imageView.setEnabled(false);
            }
            ViewGroup viewGroup = GiftFragment.this.mAdsView;
            if (viewGroup != null) {
                viewGroup.setBackgroundResource(R.drawable.shape_gifdialog_adsbg);
                GiftFragment.this.mAdsView.setClickable(false);
            }
        }
    }

    /* loaded from: classes3.dex */
    class n extends com.guochao.faceshow.aaspring.base.http.callback.c<SparseArray<List<ResourceCategoryItem>>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f17816a;

            a(List list) {
                this.f17816a = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                GiftFragment.this.setGiftData(this.f17816a);
            }
        }

        n() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<SparseArray<List<ResourceCategoryItem>>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(SparseArray<List<ResourceCategoryItem>> sparseArray, @NonNull FaceCastBaseResponse<SparseArray<List<ResourceCategoryItem>>> faceCastBaseResponse) {
            GiftFragment.this.mResourceCategoryItems.clear();
            GiftFragment.this.mFragments.clear();
            ArrayList arrayList = new ArrayList(sparseArray.get(GiftFragment.this.mType));
            if (BagHelper.INSTANCE.isShowBag(sparseArray.get(GiftFragment.this.mType))) {
                GiftFragment.this.getBagGiftResource(arrayList);
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if ("bag".equals(((ResourceCategoryItem) it.next()).getChildCode())) {
                    it.remove();
                }
            }
            GiftFragment.this.mViewPager.postDelayed(new a(arrayList), 1L);
        }
    }

    /* loaded from: classes3.dex */
    public interface o {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class p extends com.guochao.faceshow.aaspring.base.http.callback.d<File> {
        p() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<File> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.d
        public void onProgress(long j10, long j11, double d10) {
        }

        public void onResponse(@Nullable File file, @NonNull FaceCastBaseResponse<File> faceCastBaseResponse) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public /* bridge */ /* synthetic */ void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse faceCastBaseResponse) {
            onResponse((File) obj, (FaceCastBaseResponse<File>) faceCastBaseResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class q extends FragmentPagerAdapter {
        public q(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return GiftFragment.this.mFragments.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i9) {
            return (Fragment) GiftFragment.this.mFragments.get(i9);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        @Nullable
        public CharSequence getPageTitle(int i9) {
            String sourceTypeNameLang = ((ResourceCategoryItem) GiftFragment.this.mResourceCategoryItems.get(i9)).getSourceTypeNameLang();
            if (TextUtils.isEmpty(sourceTypeNameLang)) {
                sourceTypeNameLang = ((ResourceCategoryItem) GiftFragment.this.mResourceCategoryItems.get(i9)).getSourceTypeName();
            }
            return sourceTypeNameLang == null ? "" : sourceTypeNameLang.trim();
        }
    }

    /* loaded from: classes3.dex */
    public static class r {
        @SerializedName("uid")

        /* renamed from: a  reason: collision with root package name */
        public String f17819a;
        @SerializedName("unm")

        /* renamed from: b  reason: collision with root package name */
        public String f17820b;
        @SerializedName("userImg")

        /* renamed from: c  reason: collision with root package name */
        public String f17821c;
        @SerializedName("userVipMsg")

        /* renamed from: d  reason: collision with root package name */
        public UserVipData f17822d;

        /* renamed from: e  reason: collision with root package name */
        public String f17823e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class s extends RecyclerView.Adapter<BaseViewHolder> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f17825a;

            a(int i9) {
                this.f17825a = i9;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GiftFragment giftFragment = GiftFragment.this;
                if (giftFragment.mSelectAll) {
                    giftFragment.mSelectAll = false;
                    giftFragment.notifySelectAllChanged();
                    GiftFragment.this.giftComboView.reset();
                }
                GiftFragment.this.setItemState(this.f17825a);
                s.this.notifyDataSetChanged();
            }
        }

        s() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return GiftFragment.this.imUsers.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i9) {
            TextView textView = (TextView) baseViewHolder.getView(R.id.tv_number);
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_number);
            FrameLayout frameLayout = (FrameLayout) baseViewHolder.getView(R.id.iv_number_layout);
            ImageView imageView2 = (ImageView) baseViewHolder.getView(R.id.user_head);
            ImageView imageView3 = (ImageView) baseViewHolder.getView(R.id.iv_hollow_circle);
            ImageView imageView4 = (ImageView) baseViewHolder.getView(R.id.iv_bg);
            ImageView imageView5 = (ImageView) baseViewHolder.getView(R.id.iv_number_bg);
            boolean z10 = ((LiveInfoMatchBean) GiftFragment.this.imUsers.get(i9)).isSelect() || GiftFragment.this.mSelectAll;
            if (((LiveInfoMatchBean) GiftFragment.this.imUsers.get(i9)).getPosition() == 0) {
                textView.setText(String.valueOf(i9 + 1));
            } else {
                textView.setText(String.valueOf(((LiveInfoMatchBean) GiftFragment.this.imUsers.get(i9)).getPosition()));
            }
            if (z10) {
                imageView4.setVisibility(8);
                imageView5.setVisibility(8);
                textView.setBackgroundResource(R.drawable.zz_shape_radius_blue);
                imageView3.setImageResource(R.drawable.bg_hollow_circle);
                textView.setTextColor(ContextCompat.getColor(GiftFragment.this.getActivity(), R.color.white));
                if (GiftFragment.this.broadCastUserId != null && GiftFragment.this.broadCastUserId.equals(((LiveInfoMatchBean) GiftFragment.this.imUsers.get(i9)).getBroadCasterUserId())) {
                    imageView.setImageResource(R.mipmap.live_house_gift_select);
                    frameLayout.setVisibility(0);
                    frameLayout.setBackgroundResource(R.drawable.zz_shape_radius_blue);
                } else {
                    frameLayout.setVisibility(8);
                }
            } else {
                imageView4.setVisibility(0);
                imageView5.setVisibility(0);
                textView.setBackgroundResource(R.drawable.zz_shape_rect_radius_gray);
                imageView3.setImageResource(R.drawable.bg_hollow_circle_no);
                textView.setTextColor(ContextCompat.getColor(GiftFragment.this.getActivity(), R.color.color_ugc_text_level_1));
                if (GiftFragment.this.broadCastUserId != null && GiftFragment.this.broadCastUserId.equals(((LiveInfoMatchBean) GiftFragment.this.imUsers.get(i9)).getBroadCasterUserId())) {
                    imageView.setImageResource(R.mipmap.live_house_gift_normal);
                    frameLayout.setVisibility(0);
                    frameLayout.setBackgroundResource(R.drawable.zz_shape_rect_radius_gray);
                } else {
                    frameLayout.setVisibility(8);
                }
            }
            com.bumptech.glide.c.x(GiftFragment.this.getActivity()).r(((LiveInfoMatchBean) GiftFragment.this.imUsers.get(i9)).getImg()).b0(R.mipmap.default_head).a(com.bumptech.glide.request.h.x0(new com.bumptech.glide.load.resource.bitmap.l())).Q0(imageView2);
            baseViewHolder.itemView.setOnClickListener(new a(i9));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public BaseViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new BaseViewHolder(GiftFragment.this.getLayoutInflater().inflate(R.layout.list_item_live_gift_user_info, viewGroup, false));
        }
    }

    private void checkData() {
        q qVar = new q(getChildFragmentManager());
        this.giftViewPagerAdapter = qVar;
        this.mViewPager.setAdapter(qVar);
        this.mViewPager.setOffscreenPageLimit(1);
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        this.mViewPager.addOnPageChangeListener(new b());
        int a10 = t8.a.a(this.mType);
        for (final int i9 = 0; i9 < this.mFragments.size(); i9++) {
            if (this.mResourceCategoryItems.get(i9).getSourctTypeId() == a10) {
                this.mViewPager.setCurrentItem(i9);
                this.mTabLayout.post(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        GiftFragment.this.lambda$checkData$0(i9);
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getBagGiftResource(List<ResourceCategoryItem> list) {
        com.guochao.faceshow.aaspring.manager.a.g().u(this, new a(list), 14);
    }

    private String getEnterType() {
        if (getActivity() instanceof ChatActivity) {
            return "4";
        }
        if (!(getActivity() instanceof WatchLiveRoomActivity)) {
            return getActivity() instanceof F2fMatchActivity ? "5" : ((getActivity() instanceof MainActivity) && ((MainActivity) getActivity()).k1()) ? "3" : "0";
        }
        LiveRoomModel currentLiveRoom = ((WatchLiveRoomActivity) getActivity()).e0().getCurrentLiveRoom();
        return (currentLiveRoom == null || !currentLiveRoom.isVoiceRoom()) ? (currentLiveRoom == null || !currentLiveRoom.isMultiLiveRoom()) ? "0" : "1" : "2";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getFilePath(ResourceListItemBean resourceListItemBean) {
        File file = new File(FilePathProvider.getNXPathV2(), "/gift_v2/");
        if (!file.exists()) {
            file.mkdirs();
        }
        String mp4Url = resourceListItemBean.getMp4Url();
        String valueOf = String.valueOf(resourceListItemBean.getId());
        return new File(file, valueOf + mp4Url.substring(mp4Url.lastIndexOf("."))).getAbsolutePath();
    }

    public static GiftFragment getInstance(int i9, int i10, boolean z10, String str) {
        GiftFragment giftFragment = new GiftFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("theme", i9);
        bundle.putInt("type", i10);
        bundle.putBoolean("multi", z10);
        bundle.putString("accountId", str);
        giftFragment.setArguments(bundle);
        return giftFragment;
    }

    public static List<String> getNumCheckData() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("1");
        arrayList.add(ThirdPushHelper.TYPE_XIAOMI_CHINA);
        arrayList.add("99");
        arrayList.add("188");
        arrayList.add("999");
        return arrayList;
    }

    private List<r> getUsers() {
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        if (this.mSelectAll) {
            while (i9 < this.imUsers.size()) {
                r rVar = new r();
                rVar.f17819a = this.imUsers.get(i9).getUserId();
                rVar.f17820b = this.imUsers.get(i9).getUserNickName();
                rVar.f17821c = this.imUsers.get(i9).getImg();
                rVar.f17822d = this.imUsers.get(i9).getUserVipMsg();
                arrayList.add(rVar);
                i9++;
            }
        } else {
            while (true) {
                if (i9 >= this.imUsers.size()) {
                    break;
                } else if (Objects.equals(this.accountId, this.imUsers.get(i9).getUserId())) {
                    r rVar2 = new r();
                    rVar2.f17819a = this.imUsers.get(i9).getUserId();
                    rVar2.f17820b = this.imUsers.get(i9).getUserNickName();
                    rVar2.f17821c = this.imUsers.get(i9).getImg();
                    rVar2.f17822d = this.imUsers.get(i9).getUserVipMsg();
                    arrayList.add(rVar2);
                    break;
                } else {
                    i9++;
                }
            }
        }
        return arrayList;
    }

    private void hideEveryThingExceptCombo() {
        this.realContent.setVisibility(4);
        this.llMultiPlayer.setVisibility(4);
        this.firstCharge.setVisibility(4);
        EventBus.getDefault().post("hide_every_thing");
        if (getView() != null) {
            HandyGifViewHelper handyGifViewHelper = this.mHandyGifViewHelper;
            if (handyGifViewHelper != null) {
                handyGifViewHelper.getViewBinding().getRoot().setVisibility(4);
            }
            getView().findViewById(R.id.empty_click).setVisibility(4);
        }
        SendToAllUserGuidPop sendToAllUserGuidPop = this.mSendToAllUserGuidPop;
        if (sendToAllUserGuidPop != null) {
            sendToAllUserGuidPop.hidePop();
        }
    }

    private void initAds() {
        if (this.mAdsArea == null) {
            return;
        }
        if (this.mType == 2 && getCurrentUser().getRiskLevel() <= 1) {
            this.mAdsArea.setVisibility(0);
            ViewGroup.LayoutParams layoutParams = this.firstRechargeHeader.getLayoutParams();
            layoutParams.height = ScreenTools.dip2px(40.0f);
            this.firstRechargeHeader.setLayoutParams(layoutParams);
        } else {
            ViewGroup.LayoutParams layoutParams2 = this.firstRechargeHeader.getLayoutParams();
            layoutParams2.height = ScreenTools.dip2px(28.0f);
            this.firstRechargeHeader.setLayoutParams(layoutParams2);
            this.mAdsArea.setVisibility(8);
        }
        if (getCurrentUser().getRegType() != 2 && c8.a.r().q() != 0) {
            this.mAdsTips.setEnabled(false);
            c8.a.r().w(getActivity(), new m());
            return;
        }
        ViewGroup.LayoutParams layoutParams3 = this.firstRechargeHeader.getLayoutParams();
        layoutParams3.height = ScreenTools.dip2px(28.0f);
        this.firstRechargeHeader.setLayoutParams(layoutParams3);
        this.mAdsArea.setVisibility(8);
    }

    private boolean isInCollectPager(Fragment fragment) {
        if (fragment instanceof GiftViewPagerFragment) {
            return ((GiftViewPagerFragment) fragment).b2();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkData$0(int i9) {
        this.mTabLayout.C(i9, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFirstRecharge$1(View view) {
        if (getActivity() != null && DisableDoubleClickUtils.canClick(view)) {
            FirstRechargeDialog.showDialog(5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0020, code lost:
        if (r0 != 16) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$showFirstRecharge$2(android.view.View r3) {
        /*
            r2 = this;
            androidx.fragment.app.FragmentActivity r0 = r2.getActivity()
            if (r0 != 0) goto L7
            return
        L7:
            boolean r3 = com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils.canClick(r3)
            if (r3 != 0) goto Le
            return
        Le:
            r3 = 0
            int r0 = r2.mType
            r1 = 1
            if (r0 == r1) goto L2a
            r1 = 2
            if (r0 == r1) goto L28
            r1 = 3
            if (r0 == r1) goto L26
            r1 = 13
            if (r0 == r1) goto L23
            r1 = 16
            if (r0 == r1) goto L2a
            goto L2b
        L23:
            r3 = 8
            goto L2b
        L26:
            r3 = 7
            goto L2b
        L28:
            r3 = 6
            goto L2b
        L2a:
            r3 = 4
        L2b:
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDialog.showDialog(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftFragment.lambda$showFirstRecharge$2(android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBackPageGift(ResourceListItemBean resourceListItemBean, AppResource appResource) {
        for (int i9 = 0; i9 < this.mResourceCategoryItems.size(); i9++) {
            if ("bag".equals(this.mResourceCategoryItems.get(i9).getChildCode())) {
                for (Fragment fragment : ((GiftViewPagerFragment) this.giftViewPagerAdapter.getItem(i9)).getList()) {
                    if (fragment instanceof GiftListFragment) {
                        ((GiftListFragment) fragment).e2(resourceListItemBean, appResource, this.mType);
                    }
                }
            }
        }
    }

    private void playLuckyGiftIcon(ResourceListItemBean resourceListItemBean) {
        com.bumptech.glide.c.v(this.luckyGiftAnimator).r(resourceListItemBean.getImg()).b0(R.drawable.shape_lucky_gift_header_bg).Q0(this.luckyGiftAnimator);
        this.luckyGiftRule.setText(getString(R.string.lucky_gift_header_tips, String.valueOf(resourceListItemBean.getMaxMultiple())));
    }

    public static void putType(int i9, Bundle bundle) {
        if (i9 == 1) {
            bundle.putString("from", "liveStream");
        } else if (i9 == 2) {
            bundle.putString("from", "shortVideo");
        } else if (i9 == 3) {
            bundle.putString("from", "1v1");
        } else if (i9 == 4) {
            bundle.putString("from", "IM");
        } else if (i9 == 13) {
            bundle.putString("from", "trtc");
        } else if (i9 != 16) {
        } else {
            bundle.putString("from", "voiceRoom");
        }
    }

    public static void recordSendGiftResult(SendGiftResult sendGiftResult, PostRequest postRequest, int i9) {
        Bundle bundle = new Bundle();
        putType(i9, bundle);
        if (sendGiftResult == null) {
            bundle.putString("code", "-1000");
            bundle.putString("msg", "result is null");
        } else if (!postRequest.t(sendGiftResult.getMd5())) {
            bundle.putString("code", "-1001");
            bundle.putString("msg", "md5 not match");
        } else {
            bundle.putString("code", "1");
            bundle.putString("msg", GraphResponse.SUCCESS_KEY);
        }
        EventTrackingUtils.getInstance().track(EventTrackingUtils.SEND_GIFT_RESULT, bundle);
    }

    private void refreshLocalData(ResourceListItemBean resourceListItemBean, boolean z10) {
        List<ResourceCategoryItem> h10 = com.guochao.faceshow.aaspring.manager.a.g().h(this.mType);
        if (h10 == null || h10.isEmpty() || h10.get(h10.size() - 1) == null || h10.get(h10.size() - 1).getGifList() == null) {
            return;
        }
        for (ResourceCategoryItem resourceCategoryItem : h10) {
            if (resourceCategoryItem.getGifList() != null) {
                Iterator<ResourceListItemBean> it = resourceCategoryItem.getGifList().iterator();
                while (true) {
                    if (it.hasNext()) {
                        ResourceListItemBean next = it.next();
                        if (next.getId() == resourceListItemBean.getId()) {
                            if (resourceCategoryItem.getSourctTypeId() == h10.get(h10.size() - 1).getSourctTypeId() && !z10) {
                                resourceCategoryItem.getGifList().remove(next);
                                break;
                            }
                            next.setIsCollect(z10 ? 1 : 0);
                        }
                    }
                }
            }
        }
        if (!z10 || h10.get(h10.size() - 1).getGifList().contains(resourceListItemBean)) {
            return;
        }
        h10.get(h10.size() - 1).getGifList().add(0, resourceListItemBean);
    }

    private void removeUser() {
        Iterator<LiveInfoMatchBean> it = this.imUsers.iterator();
        while (it.hasNext()) {
            if (Objects.equals(getCurrentUser().getUserId(), it.next().getUserId())) {
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendGiftButtonClick(String str) {
        boolean z10;
        boolean z11;
        if (this.mCurrentGiftItemData == null) {
            return false;
        }
        if (!n7.c.c()) {
            showToast(R.string.Network_Error);
            return false;
        } else if (this.mCurrentGiftItemData.isBagChipsGIft()) {
            return false;
        } else {
            HandyGifViewHelper handyGifViewHelper = this.mHandyGifViewHelper;
            if (handyGifViewHelper == null || !handyGifViewHelper.getViewBinding().handyView.getAnimating()) {
                int parseInt = Integer.parseInt(str);
                int parseInt2 = Integer.parseInt(this.mCurrentGiftItemData.getPrice()) * parseInt;
                ArrayList arrayList = new ArrayList(buildSendUsers());
                if (arrayList.size() == 0) {
                    return false;
                }
                int size = parseInt2 * arrayList.size();
                if (this.mCurrentGiftItemData.getItemType() == 14) {
                    int id2 = this.mCurrentGiftItemData.getId();
                    HelloStarHelp helloStarHelp = HelloStarHelp.INSTANCE;
                    if (id2 == helloStarHelp.getHelloConfigData().getHelloGiftId()) {
                        z10 = !ja.a.b().f("KEY_HELLO_HOUR_SHOW_V2") || helloStarHelp.getHelloConfigData().getRegTime() + 86400000 <= System.currentTimeMillis();
                        z11 = true;
                    } else {
                        z10 = false;
                        z11 = false;
                    }
                    if (this.mSelectAll) {
                        if (z11 && !z10) {
                            if (this.mCurrentGiftItemData.getNumber() - helloStarHelp.getHelloConfigData().getLockNum() < arrayList.size() * parseInt) {
                                showToast(getString(R.string.backpack_gift_inadequate));
                                return false;
                            }
                        } else if (this.mCurrentGiftItemData.getNumber() < arrayList.size() * parseInt) {
                            showToast(getString(R.string.backpack_gift_inadequate));
                            return false;
                        }
                    } else if (z11 && !z10) {
                        if (this.mCurrentGiftItemData.getNumber() - helloStarHelp.getHelloConfigData().getLockNum() < parseInt) {
                            showToast(getString(R.string.backpack_gift_inadequate));
                            return false;
                        }
                    } else if (this.mCurrentGiftItemData.getNumber() < parseInt) {
                        showToast(getString(R.string.backpack_gift_inadequate));
                        return false;
                    }
                    if (this.mSelectAll) {
                        ResourceListItemBean resourceListItemBean = this.mCurrentGiftItemData;
                        resourceListItemBean.setNumber(resourceListItemBean.getNumber() - (arrayList.size() * parseInt));
                    } else {
                        ResourceListItemBean resourceListItemBean2 = this.mCurrentGiftItemData;
                        resourceListItemBean2.setNumber(resourceListItemBean2.getNumber() - parseInt);
                    }
                    notifyBackPageGift(this.mCurrentGiftItemData, null);
                    u8.b bVar = this.mGiftItemListener;
                    if (bVar != null) {
                        bVar.onSelectGift(this, this.mResourceCategoryItem, this.mCurrentGiftItemData, arrayList, parseInt, this.isShuijing, this.giftComboView.getCurrentComboId(), new j());
                    }
                } else if (this.isShuijing) {
                    if (p9.a.g().e().getTokenNum() < size) {
                        p9.a.g().q(this, size, true, true, new k(size, arrayList, parseInt));
                        return false;
                    }
                    p9.a.g().D(p9.a.g().e().getTokenNum() - size);
                    if (this.mGiftItemListener != null) {
                        Bundle bundle = new Bundle();
                        putType(this.mType, bundle);
                        EventTrackingUtils.getInstance().track(EventTrackingUtils.SEND_GIFT_CLICK, bundle);
                        this.mGiftItemListener.onSelectGift(this, this.mResourceCategoryItem, this.mCurrentGiftItemData, arrayList, parseInt, this.isShuijing, this.giftComboView.getCurrentComboId(), null);
                    }
                    refreshDiamonds();
                    if (this.mType == 2) {
                        dismissAllowingStateLoss();
                    }
                } else if (p9.a.g().e().getDiamond().intValue() < size) {
                    p9.a.g().q(this, size, false, true, new l(size, arrayList, parseInt));
                    return false;
                } else {
                    p9.a.g().B(p9.a.g().e().getDiamond().intValue() - size);
                    u8.b bVar2 = this.mGiftItemListener;
                    if (bVar2 != null) {
                        bVar2.onSelectGift(this, this.mResourceCategoryItem, this.mCurrentGiftItemData, arrayList, parseInt, this.isShuijing, this.giftComboView.getCurrentComboId(), null);
                    }
                    refreshDiamonds();
                    if (this.mType == 2) {
                        dismissAllowingStateLoss();
                    }
                }
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGiftData(List<ResourceCategoryItem> list) {
        if (list != null) {
            for (int i9 = 0; i9 < list.size(); i9++) {
                ResourceCategoryItem resourceCategoryItem = list.get(i9);
                if (!"1".equalsIgnoreCase(resourceCategoryItem.getIsToken()) || !"0".equalsIgnoreCase(resourceCategoryItem.getIsTokenShow())) {
                    this.mResourceCategoryItems.add(resourceCategoryItem);
                    if (i9 != list.size() - 1 || (resourceCategoryItem.getGifList() != null && !resourceCategoryItem.getGifList().isEmpty())) {
                        List<Fragment> list2 = this.mFragments;
                        list2.add(GiftViewPagerFragment.Y1(list2.size(), resourceCategoryItem));
                    }
                }
            }
            checkData();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setItemState(int i9) {
        this.accountId = String.valueOf(this.imUsers.get(i9).getUserId());
        this.userId = String.valueOf(this.imUsers.get(i9).getUserId());
        this.userName = this.imUsers.get(i9).getNickName();
        int i10 = 0;
        while (i10 < this.imUsers.size()) {
            this.imUsers.get(i10).setSelect(i9 == i10);
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showChargeDialog(int i9) {
        int i10;
        if (!isAdded() || isDetached()) {
            return;
        }
        int i11 = this.mType;
        int i12 = 0;
        if (i11 == 1) {
            i10 = 2;
            i12 = 1;
        } else if (i11 == 2) {
            i10 = 5;
            i12 = 2;
        } else if (i11 == 3) {
            i10 = 8;
            i12 = 3;
        } else if (i11 == 4) {
            i10 = 4;
            i12 = 5;
        } else if (i11 == 13) {
            i12 = 6;
            i10 = 10;
        } else if (i11 != 16) {
            i10 = 0;
        } else {
            i12 = 9;
            i10 = 11;
        }
        if (i9 == 0) {
            if (getActivity() != null) {
                RechargeDialog.showDialog(getActivity().getSupportFragmentManager(), Integer.valueOf(i12), Integer.valueOf(i10));
                return;
            }
            o oVar = this.chargeListener;
            if (oVar != null) {
                oVar.a();
                return;
            }
            return;
        }
        alert(null, getString(i9 == 1 ? R.string.shuijing_not_enough : R.string.charge_notifi), new c(i12, i9), false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showComboView() {
        if ((getActivity() instanceof BaseLiveActivity) && this.giftComboView.getVisibility() != 0) {
            this.giftComboView.show(this.mCurrentGiftItemData, this.mNumCheckSendView.getCurrentData(), getUsers());
            this.mNumCheckSendView.setVisibility(4);
            if (this.mCurrentGiftItemData.isHandyGift()) {
                hideEveryThingExceptCombo();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFirstRecharge(boolean z10) {
        this.firstRechargeShowed = z10;
        if (!z10) {
            this.firstRechargeHeader.setVisibility(8);
            this.firstRechargeActivity.setVisibility(4);
        } else if (getCurrentUser().getRecharged() != 1 && FirstRechargeManager.INSTANCE.shouldShowFirstRecharge()) {
            int i9 = this.mTheme;
            if (i9 != 2131951629 && i9 >= 0) {
                this.firstRechargeText.setTextColor(ContextCompat.getColor(getContext(), R.color.white));
                this.firstRechargeHeader.setVisibility(0);
                this.firstRechargeText.setSelected(true);
                this.firstRechargeHeader.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        GiftFragment.this.lambda$showFirstRecharge$2(view);
                    }
                });
                return;
            }
            this.firstRechargeHeader.setVisibility(8);
            this.firstRechargeActivity.setVisibility(0);
            this.firstRechargeBottomText.setSelected(true);
            this.ivWeight.setVisibility(8);
            this.firstRechargeActivity.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.gift.fragment.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GiftFragment.this.lambda$showFirstRecharge$1(view);
                }
            });
        } else {
            this.firstRechargeHeader.setVisibility(8);
            this.firstRechargeActivity.setVisibility(4);
        }
    }

    private static boolean showSecondGiftButton() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("510389");
        return arrayList.contains(b8.e.g().getUserId());
    }

    public static void trackEvent(SendGiftRequestModel sendGiftRequestModel, ResourceListItemBean resourceListItemBean) {
        if (resourceListItemBean == null) {
            return;
        }
        if (resourceListItemBean.isMVPGift()) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.send_gift, "5");
        } else if (resourceListItemBean.isLuckyGift()) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.send_gift, "3");
        } else if (resourceListItemBean.isHandyGift()) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.send_gift, "2");
        } else if (GiftLiveMessage.isFaceGift(resourceListItemBean)) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.send_gift, "1");
        } else if (GiftListFragment.a2(resourceListItemBean)) {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.send_gift, MVPActivity.FROM_BAG_BADGE);
        } else {
            EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.send_gift, "0");
        }
    }

    public void addSelectCollectionGift(ResourceListItemBean resourceListItemBean) {
        if (this.mResourceCategoryItems.isEmpty() || resourceListItemBean == null) {
            return;
        }
        List<ResourceCategoryItem> list = this.mResourceCategoryItems;
        ResourceCategoryItem resourceCategoryItem = list.get(list.size() - 1);
        if (!resourceCategoryItem.getGifList().contains(resourceListItemBean)) {
            resourceCategoryItem.getGifList().add(0, resourceListItemBean);
        }
        for (ResourceCategoryItem resourceCategoryItem2 : this.mResourceCategoryItems) {
            for (ResourceListItemBean resourceListItemBean2 : resourceCategoryItem2.getGifList()) {
                if (resourceListItemBean2.getId() == resourceListItemBean.getId()) {
                    resourceListItemBean2.setIsCollect(1);
                }
            }
        }
    }

    protected List<r> buildSendUsers() {
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        if (this.mSelectAll) {
            while (i9 < this.imUsers.size()) {
                r rVar = new r();
                rVar.f17819a = this.imUsers.get(i9).getUserId();
                rVar.f17820b = this.imUsers.get(i9).getUserNickName();
                rVar.f17821c = this.imUsers.get(i9).getImg();
                rVar.f17822d = this.imUsers.get(i9).getUserVipMsg();
                arrayList.add(rVar);
                i9++;
            }
        } else {
            while (true) {
                if (i9 >= this.imUsers.size()) {
                    break;
                } else if (Objects.equals(this.accountId, this.imUsers.get(i9).getUserId())) {
                    r rVar2 = new r();
                    rVar2.f17819a = this.imUsers.get(i9).getUserId();
                    rVar2.f17820b = this.imUsers.get(i9).getUserNickName();
                    rVar2.f17821c = this.imUsers.get(i9).getImg();
                    rVar2.f17822d = this.imUsers.get(i9).getUserVipMsg();
                    arrayList.add(rVar2);
                    break;
                } else {
                    i9++;
                }
            }
        }
        return arrayList;
    }

    public void checkToItem(boolean z10) {
        this.isShuijing = z10;
        if (getView() == null) {
            return;
        }
        refreshDiamonds();
    }

    @OnClick
    public void collectionClick(View view) {
        if (DisableDoubleClickUtils.canClick(view, 1000L) && this.mCurrentGiftItemData != null) {
            view.setSelected(!view.isSelected());
            if (view.isSelected() && this.mFragments.size() < this.mResourceCategoryItems.size()) {
                List<Fragment> list = this.mFragments;
                int size = list.size();
                List<ResourceCategoryItem> list2 = this.mResourceCategoryItems;
                list.add(GiftViewPagerFragment.Y1(size, list2.get(list2.size() - 1)));
                q qVar = this.giftViewPagerAdapter;
                if (qVar != null) {
                    qVar.notifyDataSetChanged();
                    this.mTabLayout.setupWithViewPager(this.mViewPager);
                }
            }
            Fragment fragmentAt = ViewPagerUtils.getFragmentAt(getChildFragmentManager(), this.mViewPager, this.mFragments.size() - 1);
            refreshLocalData(this.mCurrentGiftItemData, view.isSelected());
            if (view.isSelected()) {
                post("tokens/gift/collectGift").y("giftId", Integer.valueOf(this.mCurrentGiftItemData.getId())).L();
                showToast(R.string.collaction_success);
                addSelectCollectionGift(this.mCurrentGiftItemData);
                if (fragmentAt instanceof GiftViewPagerFragment) {
                    ((GiftViewPagerFragment) fragmentAt).Q1(this.mCurrentGiftItemData);
                    return;
                }
                return;
            }
            if (isInCollectPager(fragmentAt) || this.mCurrentGiftItemData.getLevelId() > getCurrentUser().getLevel()) {
                view.setVisibility(8);
            }
            post("tokens/gift/cacalCollectGift").y("giftId", Integer.valueOf(this.mCurrentGiftItemData.getId())).L();
            showToast(R.string.cancel_collaction_success);
            removeSelectCollectionGift(this.mCurrentGiftItemData);
            if (fragmentAt instanceof GiftViewPagerFragment) {
                ((GiftViewPagerFragment) fragmentAt).c2(this.mCurrentGiftItemData);
            }
        }
    }

    @OnClick
    public void dismiss(View view) {
        if (isAdded() && getDialog() != null && getDialog().isShowing()) {
            dismissAllowingStateLoss();
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        if (isDetached() || !isAdded() || System.currentTimeMillis() - this.showTime < 1000) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    @OnClick
    public void fansRank(View view) {
        startActivity(new Intent(getActivity(), ShortVideoTopFansActivity.class).putExtra("data", this.mVideoId));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.gift.fragment.GiftViewPagerFragment.b
    public ResourceCategoryItem getCategoryItem(int i9) {
        if (i9 >= this.mResourceCategoryItems.size()) {
            ResourceCategoryItem resourceCategoryItem = new ResourceCategoryItem();
            resourceCategoryItem.setGifList(new ArrayList());
            return resourceCategoryItem;
        }
        return this.mResourceCategoryItems.get(i9);
    }

    public ResourceCategoryItem getCurrentItem() {
        if (this.mViewPager == null || this.mResourceCategoryItems.size() <= this.mViewPager.getCurrentItem()) {
            return null;
        }
        return this.mResourceCategoryItems.get(this.mViewPager.getCurrentItem());
    }

    @Override // u8.c
    public int getCurrentTheme() {
        return this.mTheme;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.dialog_gift;
    }

    public void getMyDiamonds() {
        HashMap hashMap = new HashMap();
        hashMap.put(Contants.USER_ID, getCurrentUser().getUserId());
        getHttpClient().b(this, Contants.MY_WALLET_DATA, hashMap, new f());
    }

    public void giftImageLocation(GiftImageViewLocationEvent giftImageViewLocationEvent) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getActivity().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i9 = displayMetrics.widthPixels;
        giftImageViewLocationEvent.setLocation(new int[]{(int) (i9 * 0.65d), (int) ((displayMetrics.heightPixels - (i9 * 0.5d)) - DensityUtil.dp2px(200.0f))});
        if (this.mCurrentGiftItemData != null) {
            if (this.mNumCheckSendView.getCurrentData() < 10) {
                ComboSendGiftAnimator.animate(this.giftComboView, giftImageViewLocationEvent, this);
                return;
            }
            for (int i10 = 0; i10 < 5; i10++) {
                this.giftComboView.postDelayed(new e(giftImageViewLocationEvent), i10 * 100);
            }
        }
    }

    @OnClick
    public void gotoCharge(View view) {
        int i9;
        int i10 = this.mType;
        int i11 = 0;
        if (i10 == 1) {
            i9 = 2;
            i11 = 1;
        } else if (i10 == 2) {
            i9 = 5;
            i11 = 2;
        } else if (i10 == 3) {
            i9 = 8;
            i11 = 3;
        } else if (i10 == 4) {
            i9 = 4;
            i11 = 5;
        } else if (i10 == 13) {
            i11 = 6;
            i9 = 10;
        } else if (i10 != 16) {
            i9 = 0;
        } else {
            i11 = 9;
            i9 = 11;
        }
        if (this.isShuijing) {
            FragmentActivity activity = getActivity();
            Intent e02 = MyWalletActivity.e0(getActivity(), i11, activity instanceof WatchLiveRoomActivity ? com.guochao.faceshow.aaspring.modulars.googlepay.d.X(((WatchLiveRoomActivity) activity).e0().getCurrentLiveRoom().getBroadCasterUserId()) : null);
            e02.putExtra("isToken", this.isShuijing ? "1" : "0");
            startActivity(e02);
            return;
        }
        RechargeDialog.showDialog(getChildFragmentManager(), Integer.valueOf(i11), Integer.valueOf(i9), true);
    }

    @OnClick
    public void gotoLuckyDetail() {
        GiftLuckyDetailFragment.newInstance(this.mCurrentGiftItemData).show(getParentFragmentManager(), "gift_detail");
        EventBus.getDefault().post(new y7.g(false));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void handleEvent(y7.f fVar) {
        if (isAdded()) {
            dismiss();
        }
    }

    @Nullable
    @OnClick
    public void initAd(View view) {
        if (DisableDoubleClickUtils.canClick(view)) {
            c8.a.r().y(getActivity());
        }
    }

    public void initRecycleView() {
        this.llMultiPlayer.setVisibility(0);
        s sVar = new s();
        this.userInfoAdapter = sVar;
        this.recyclerView.setAdapter(sVar);
        this.userInfoAdapter.notifyDataSetChanged();
    }

    public void initSelectAll() {
        SendToAllUserGuidPop sendToAllUserGuidPop = new SendToAllUserGuidPop();
        this.mSendToAllUserGuidPop = sendToAllUserGuidPop;
        sendToAllUserGuidPop.showPopupIfNeed(this.mSelectAllView);
        this.mSelectAllView.setSelected(this.mSelectAll);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        ImageView imageView;
        this.topSend.setBackgroundResource(Language.ARABIC.equals(q7.a.e().c()) ? R.drawable.shape_send_button_ar : R.drawable.shape_send_button);
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.gift_dialog, getEnterType());
        if (requireActivity() instanceof BaseLiveActivity) {
            this.mHandyGifViewHelper = new HandyGifViewHelper((ViewStub) view.findViewById(R.id.handy_gift), this);
        }
        initAds();
        if (this.mType == 2) {
            this.mRankList.setVisibility(0);
        }
        if (this.multiPlayer) {
            this.mSelectAllView.setVisibility(this.imUsers.size() >= 2 ? 0 : 8);
            initSelectAll();
            initRecycleView();
        } else {
            this.llMultiPlayer.setVisibility(8);
            this.mSelectAllView.setVisibility(8);
        }
        if (this.mType == 4) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mTabLayout.getLayoutParams();
            marginLayoutParams.setMarginStart(DensityUtil.dp2px(getActivity(), 12.0f));
            marginLayoutParams.setMarginEnd(DensityUtil.dp2px(getActivity(), 12.0f));
            this.mTabLayout.setLayoutParams(marginLayoutParams);
            this.myCollection.setImageResource(R.drawable.icon_im_gift_collection);
            ((ImageView) view.findViewById(R.id.backpack_left_back)).setImageTintList(ContextCompat.getColorStateList(getActivity(), R.color.color_ugc_text_level_1));
            ((ViewGroup.MarginLayoutParams) this.backpackTitle.getLayoutParams()).topMargin = -DensityUtil.dp2px(4.0f);
            try {
                ((TextView) view.findViewById(R.id.empty_backpack)).setTextColor(ContextCompat.getColor(getActivity(), R.color.color_ugc_text_level_1));
                ((TextView) ((ViewGroup) view.findViewById(R.id.gift_backpack_lay)).getChildAt(1)).setTextColor(ContextCompat.getColor(getActivity(), R.color.color_ugc_text_level_3));
            } catch (Exception unused) {
            }
        }
        if (BaseConfig.isChinese() && (imageView = this.mRankList) != null) {
            imageView.setVisibility(8);
        }
        this.mNumCheckSendView.setCheckPopAnchorView(view);
        this.mNumCheckSendView.setData(getNumCheckData());
        this.mNumCheckSendView.setTopSend(this.topSend);
        this.topSend.setVisibility(showSecondGiftButton() ? 0 : 8);
        this.mNumCheckSendView.setSendEnable(false);
        this.mNumCheckSendView.setOnMultiClickListener(new g());
        this.mNumCheckSendView.setOnCountChangedListener(new h());
        refreshDiamonds();
        p9.a.g().c(this);
        this.giftComboView.addLifecycleObserver(this);
        this.giftComboView.setComboListener(new i());
        showFirstRecharge(true);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        refreshDiamond();
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(this.mType);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("language", q7.a.e().c());
            jSONObject.put("typeArr", jSONArray);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        com.guochao.faceshow.aaspring.manager.a.g().w(this, new n(), this.mType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifySelectAllChanged() {
        s sVar = this.userInfoAdapter;
        if (sVar != null) {
            sVar.notifyDataSetChanged();
        }
        this.mSelectAllView.setSelected(this.mSelectAll);
        if (this.mSelectAll) {
            this.ivUserInfo.setVisibility(8);
        } else {
            this.ivUserInfo.setVisibility(0);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof u8.b) {
            this.mGiftItemListener = (u8.b) parentFragment;
        } else if (context instanceof u8.b) {
            this.mGiftItemListener = (u8.b) context;
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            setShowsDialog(getArguments().getBoolean("dialog", true));
            this.mTheme = getArguments().getInt("theme", R$style.AppTheme_Light);
            this.mType = getArguments().getInt("type", 4);
            this.mVideoId = getArguments().getString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
            this.multiPlayer = getArguments().getBoolean("multi");
            this.accountId = getArguments().getString("accountId");
            this.broadCastUserId = getArguments().getString("broadCastUserId");
            this.broadCaseUserName = getArguments().getString("userName");
            this.avarUrl = getArguments().getString("avarUrl");
            this.userVipData = (UserVipData) getArguments().getParcelable("userVipData");
            this.interceptClick = getArguments().getBoolean("interceptClick", false);
            ArrayList<LiveInfoMatchBean> parcelableArrayList = getArguments().getParcelableArrayList("userList");
            if (parcelableArrayList != null) {
                if (!TextUtils.isEmpty(this.accountId)) {
                    for (LiveInfoMatchBean liveInfoMatchBean : parcelableArrayList) {
                        if (this.accountId.equals(liveInfoMatchBean.getUserId())) {
                            liveInfoMatchBean.setSelect(true);
                            this.userId = liveInfoMatchBean.getUserId();
                            this.userName = liveInfoMatchBean.getNickName();
                            this.avarUrl = liveInfoMatchBean.getNickName();
                            this.userVipData = liveInfoMatchBean.getUserVipMsg();
                        } else {
                            liveInfoMatchBean.setSelect(false);
                        }
                    }
                } else {
                    ((LiveInfoMatchBean) parcelableArrayList.get(0)).setSelect(true);
                    this.userName = ((LiveInfoMatchBean) parcelableArrayList.get(0)).getNickName();
                    this.userId = ((LiveInfoMatchBean) parcelableArrayList.get(0)).getUserId();
                    this.avarUrl = ((LiveInfoMatchBean) parcelableArrayList.get(0)).getNickName();
                    this.userVipData = ((LiveInfoMatchBean) parcelableArrayList.get(0)).getUserVipMsg();
                }
                this.imUsers.addAll(parcelableArrayList);
            } else {
                LiveInfoMatchBean liveInfoMatchBean2 = new LiveInfoMatchBean();
                liveInfoMatchBean2.setUserId(this.broadCastUserId);
                liveInfoMatchBean2.setNickName(this.broadCaseUserName);
                liveInfoMatchBean2.setImg(this.avarUrl);
                liveInfoMatchBean2.setUserVipMsg(this.userVipData);
                liveInfoMatchBean2.setSelect(true);
                liveInfoMatchBean2.setPosition(1);
                this.userName = this.broadCaseUserName;
                this.userId = this.broadCastUserId;
                this.imUsers.add(liveInfoMatchBean2);
            }
        }
        if (this.imUsers.size() > 0) {
            removeUser();
        }
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        setParamsHeight(-1);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        if (this.mType == 4) {
            return createBottomDialog(R$style.AppTheme_Light);
        }
        int i9 = this.mTheme;
        if (i9 > 0) {
            i9 = R.style.BottomDialog_FullScreen;
        }
        return createBottomDialog(i9);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        LayoutInflater from;
        if (this.mTheme > 0) {
            from = LayoutInflater.from(new ContextThemeWrapper(getContext(), this.mTheme));
        } else {
            from = LayoutInflater.from(new ContextThemeWrapper(getContext(), (int) R$style.AppTheme_Light));
        }
        return super.onCreateView(from, viewGroup, bundle);
    }

    @Override // p9.a.e
    public void onCrystalsChanged(int i9) {
        if (this.mResourceCategoryItem == null) {
            return;
        }
        checkToItem(this.isShuijing);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        SendToAllUserGuidPop sendToAllUserGuidPop = this.mSendToAllUserGuidPop;
        if (sendToAllUserGuidPop != null) {
            sendToAllUserGuidPop.hidePop();
            this.mSendToAllUserGuidPop = null;
        }
        ComboSendGiftAnimator.cancelAll();
        EventBus.getDefault().unregister(this);
        p9.a.g().r(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        if (this.mAdsArea != null) {
            c8.a.r().z();
        }
    }

    @Override // p9.a.e
    public void onDiamondsChanged(int i9) {
        if (this.mTextViewDiamonds == null) {
            return;
        }
        p9.a.g().C(i9, false);
        TextView textView = this.mTextViewDiamonds;
        if (this.isShuijing) {
            i9 = p9.a.g().e().getTokenNum();
        }
        textView.setText(String.valueOf(i9));
        if (getView() != null && (getView().findViewById(R.id.tvBalance) instanceof ImageView)) {
            ((ImageView) getView().findViewById(R.id.tvBalance)).setImageResource(this.isShuijing ? R.mipmap.gift_shuijing : R.mipmap.zuanshi);
        }
        if (getCurrentUser().getRecharged() == 1 || !FirstRechargeManager.INSTANCE.shouldShowFirstRecharge()) {
            showFirstRecharge(false);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onGiftChange(y7.p pVar) {
        ResourceListItemBean c10 = pVar.c();
        ResourceCategoryItem a10 = pVar.a();
        if (c10 != null && a10 != null) {
            if (this.giftComboView.getVisibility() == 0) {
                this.giftComboView.reset();
            }
            this.mCurrentGiftItemData = c10;
            this.mResourceCategoryItem = a10;
            int b10 = pVar.b();
            if (b10 <= 0) {
                b10 = 1;
            }
            this.mNumCheckSendView.setCurrentData(b10);
            this.mNumCheckSendView.setSendEnable(true);
            this.myCollection.setSelected(c10.getIsCollect() == 1);
            checkToItem("1".equals(c10.getIsToken()));
            if (this.mCurrentGiftItemData.isLuckyGift()) {
                this.luckyGiftHeader.setVisibility(0);
                showFirstRecharge(false);
                playLuckyGiftIcon(this.mCurrentGiftItemData);
            } else {
                this.luckyGiftHeader.setVisibility(8);
                showFirstRecharge(true);
            }
            if (this.mCurrentGiftItemData.isHandyGift()) {
                this.realContent.setBackgroundResource(R.drawable.shape_gift_dark_background_with_corner);
            } else {
                int i9 = this.mTheme;
                if (i9 != 2131951629 && i9 >= 0) {
                    this.realContent.setBackgroundResource(R.drawable.shape_gift_dark_background_with_corner);
                } else {
                    this.realContent.setBackgroundResource(R.drawable.shape_gift_light_background_with_corner);
                }
            }
            HandyGifViewHelper handyGifViewHelper = this.mHandyGifViewHelper;
            if (handyGifViewHelper != null) {
                handyGifViewHelper.setCurrentSelected(c10, a10);
            }
            if (c10.isHandyGift()) {
                boolean z10 = this.firstRechargeShowed;
                showFirstRecharge(false);
                this.firstRechargeShowed = z10;
            } else {
                showFirstRecharge(this.firstRechargeShowed);
            }
            io.reactivex.k.just(1).map(new d()).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe();
            return;
        }
        this.mNumCheckSendView.setSendEnable(false);
        if (pVar.d() != null) {
            this.myCollection.setSelected(pVar.d().getIsCollect() == 1);
            this.mCurrentGiftItemData = pVar.d();
            this.mResourceCategoryItem = a10;
        }
    }

    @OnClick
    public void onViewClicked() {
        if (getParentFragment() != null) {
            if (!TextUtils.isEmpty(this.userId) && !TextUtils.isEmpty(this.userName)) {
                LivePeopleInfoCardFragment.showPeopleInfo(getParentFragment().getFragmentManager(), this.userId, this.userName);
            } else {
                LivePeopleInfoCardFragment.showPeopleInfo(getParentFragment().getFragmentManager(), this.imUsers.get(0).getUserId(), this.imUsers.get(0).getNickName());
            }
        }
    }

    public void refreshDiamond() {
        getMyDiamonds();
    }

    public void refreshDiamonds() {
        int f10 = p9.a.g().f();
        if (f10 <= 0) {
            f10 = 0;
        }
        int tokenNum = p9.a.g().e().getTokenNum();
        int i9 = tokenNum > 0 ? tokenNum : 0;
        TextView textView = this.mTextViewDiamonds;
        if (textView != null) {
            if (this.isShuijing) {
                f10 = i9;
            }
            textView.setText(String.valueOf(f10));
        }
        if (getView() == null || !(getView().findViewById(R.id.tvBalance) instanceof ImageView)) {
            return;
        }
        ((ImageView) getView().findViewById(R.id.tvBalance)).setImageResource(this.isShuijing ? R.mipmap.gift_shuijing : R.mipmap.zuanshi);
    }

    public void removeSelectCollectionGift(ResourceListItemBean resourceListItemBean) {
        if (this.mResourceCategoryItems.isEmpty() || resourceListItemBean == null) {
            return;
        }
        for (ResourceCategoryItem resourceCategoryItem : this.mResourceCategoryItems) {
            for (ResourceListItemBean resourceListItemBean2 : resourceCategoryItem.getGifList()) {
                if (resourceListItemBean2.getId() == resourceListItemBean.getId()) {
                    resourceListItemBean2.setIsCollect(0);
                }
            }
        }
        List<ResourceCategoryItem> list = this.mResourceCategoryItems;
        ResourceCategoryItem resourceCategoryItem2 = list.get(list.size() - 1);
        for (ResourceListItemBean resourceListItemBean3 : resourceCategoryItem2.getGifList()) {
            if (resourceListItemBean3 != null && resourceListItemBean3.getId() == resourceListItemBean.getId()) {
                resourceCategoryItem2.getGifList().remove(resourceListItemBean3);
                return;
            }
        }
    }

    @OnClick
    public void selectAll(View view) {
        this.mSelectAll = !this.mSelectAll;
        SendToAllUserGuidPop sendToAllUserGuidPop = this.mSendToAllUserGuidPop;
        if (sendToAllUserGuidPop != null) {
            sendToAllUserGuidPop.hidePop();
            this.mSendToAllUserGuidPop = null;
        }
        if (!this.mSelectAll) {
            setItemState(0);
        }
        notifySelectAllChanged();
        this.giftComboView.reset();
    }

    public void setOnClickChargeListener(o oVar) {
        this.chargeListener = oVar;
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        if (DisableDoubleClickUtils.canClick(1000000, 1000L)) {
            super.show(fragmentManager, str);
            this.showTime = System.currentTimeMillis();
        }
    }

    public static GiftFragment getInstance(int i9, int i10, boolean z10, String str, String str2, String str3, UserVipData userVipData) {
        GiftFragment giftFragment = new GiftFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("theme", i9);
        bundle.putInt("type", i10);
        bundle.putBoolean("multi", z10);
        bundle.putString("accountId", str);
        bundle.putString("broadCastUserId", str);
        bundle.putString("userName", str2);
        bundle.putString("avarUrl", str3);
        bundle.putParcelable("userVipData", userVipData);
        giftFragment.setArguments(bundle);
        return giftFragment;
    }

    public static void recordSendGiftResult(g7.a<SendGiftResult> aVar, int i9) {
        Bundle bundle = new Bundle();
        putType(i9, bundle);
        if (aVar == null) {
            bundle.putString("code", "-2000");
            bundle.putString("msg", "exception is null");
        } else {
            bundle.putString("code", String.valueOf(aVar.a()));
            bundle.putString("msg", aVar.c());
        }
        EventTrackingUtils.getInstance().track(EventTrackingUtils.SEND_GIFT_RESULT, bundle);
    }

    public static GiftFragment getInstance(int i9, int i10, boolean z10, String str, List<LiveInfoMatchBean> list, String str2, String str3, UserVipData userVipData) {
        GiftFragment giftFragment = new GiftFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("theme", i9);
        bundle.putInt("type", i10);
        bundle.putBoolean("multi", z10);
        bundle.putString("accountId", str);
        bundle.putParcelableArrayList("userList", (ArrayList) list);
        bundle.putString("broadCastUserId", str2);
        bundle.putString("avarUrl", str3);
        bundle.putParcelable("userVipData", userVipData);
        giftFragment.setArguments(bundle);
        return giftFragment;
    }

    public static GiftFragment getInstance(int i9, int i10, String str, boolean z10) {
        GiftFragment giftFragment = new GiftFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("theme", i9);
        bundle.putInt("type", i10);
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, str);
        bundle.putBoolean("interceptClick", z10);
        giftFragment.setArguments(bundle);
        return giftFragment;
    }
}
