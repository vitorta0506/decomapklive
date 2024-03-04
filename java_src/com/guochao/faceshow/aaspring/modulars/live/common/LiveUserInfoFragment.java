package com.guochao.faceshow.aaspring.modulars.live.common;

import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import com.guochao.component.liveroom.model.GCLiveRoomUserInfo;
import com.guochao.component.liveroomcommon.interfaces.LiveRoomTopInfoController;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AudienceInformation;
import com.guochao.faceshow.aaspring.beans.KitEvent;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.beans.LiveInfoResult;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.live.activity.ContributionListActivity;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.adapter.UserInfoAdapter;
import com.guochao.faceshow.aaspring.modulars.live.broadcaster.BroadCastFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.u;
import com.guochao.faceshow.aaspring.modulars.live.model.AudienceListInfoMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.BaseLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.BroadCasterLiveModel;
import com.guochao.faceshow.aaspring.modulars.live.model.GiftLiveMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveActivityMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.watcher.liveactivity.LiveActivityView;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.Language;
import com.guochao.faceshow.aaspring.utils.LiveMessageModelFactory;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.InnerRecyclerView;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.HourRankTextView;
import com.guochao.faceshow.views.SvgaImageViewV2;
import d9.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes3.dex */
public class LiveUserInfoFragment extends BaseLiveInfoFragment implements LiveRoomTopInfoController {
    @Nullable
    @BindView
    public View backToLast;
    private long fBNumber;
    @BindView
    ImageView focusBtn;
    @BindView
    View focusSVGA;
    private boolean isSlidingEndWard;
    @Nullable
    @BindView
    ImageView ivMotion;
    @Nullable
    @BindView
    ImageView littleAvatar;
    @Nullable
    LiveActivityView liveActivityView;
    @Nullable
    @BindView
    TextView liveFbCount;
    @Nullable
    @BindView
    TextView liveLikeCount;
    @Nullable
    @BindView
    LinearLayout llFb;
    @Nullable
    @BindView
    LinearLayout llLikeCount;
    @BindView
    LinearLayout llLocation;
    @Nullable
    @BindView
    LinearLayout llLocationAndName;
    @Nullable
    @BindView
    HeadPortraitView mAvatarView;
    private long mLastUserEnterIn;
    private long mLikeNum;
    @Nullable
    @BindView
    View mLiveFCoinAndLike;
    @BindView
    protected InnerRecyclerView mRecyclerViewUsers;
    private List<AudienceInformation> mTIMUserProfiles;
    private LiveRoomTopInfoController.ViewHolder mViewHolder;
    @BindView
    TextView masterName;
    @Nullable
    @BindView
    LinearLayout nameLy;
    @Nullable
    @BindView
    TextView onlineCountText;
    @Nullable
    @BindView
    ViewGroup rankListMulti;
    @Nullable
    @BindView
    ViewGroup rankListSingle;
    @BindView
    TextView tvLiveLocation;
    @BindView
    TextView tvLiveName;
    private UserInfoAdapter userInfoAdapter;
    private int pageNo = 1;
    private final List<AudienceInformation> mPendingUser = new ArrayList();
    Runnable focusBtnRunnable = new i();
    private RecyclerView.OnScrollListener mLoadMoreListener = new k();
    private LiveInfoResult lastResult = null;
    private boolean showLast = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewSwitcher.ViewFactory {
        a() {
        }

        @Override // android.widget.ViewSwitcher.ViewFactory
        public View makeView() {
            AppCompatTextView appCompatTextView = new AppCompatTextView(LiveUserInfoFragment.this.requireContext());
            appCompatTextView.setTextColor(-1);
            appCompatTextView.setTextSize(10.0f);
            appCompatTextView.setSingleLine(true);
            return appCompatTextView;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements HourRankTextView.ScrollListener {
        b() {
        }

        @Override // com.guochao.faceshow.views.HourRankTextView.ScrollListener
        public void onScrollToEnd(@NonNull HourRankTextView hourRankTextView) {
            if (LiveUserInfoFragment.this.isAdded()) {
                hourRankTextView.reStartScroll();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements HourRankTextView.ScrollListener {
        c() {
        }

        @Override // com.guochao.faceshow.views.HourRankTextView.ScrollListener
        public void onScrollToEnd(@NonNull HourRankTextView hourRankTextView) {
            if (LiveUserInfoFragment.this.isAdded()) {
                hourRankTextView.reStartScroll();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements HourRankTextView.ScrollListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f18836a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewGroup f18837b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f18838c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f18839d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f18840e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ boolean f18841f;

        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ HourRankTextView f18843a;

            a(HourRankTextView hourRankTextView) {
                this.f18843a = hourRankTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (LiveUserInfoFragment.this.isAdded()) {
                    this.f18843a.reStartScroll();
                }
            }
        }

        d(int i9, ViewGroup viewGroup, boolean z10, String str, int i10, boolean z11) {
            this.f18836a = i9;
            this.f18837b = viewGroup;
            this.f18838c = z10;
            this.f18839d = str;
            this.f18840e = i10;
            this.f18841f = z11;
        }

        @Override // com.guochao.faceshow.views.HourRankTextView.ScrollListener
        public void onScrollToEnd(@NonNull HourRankTextView hourRankTextView) {
            if (LiveUserInfoFragment.this.isAdded()) {
                LiveUserInfoFragment liveUserInfoFragment = LiveUserInfoFragment.this;
                liveUserInfoFragment.showLast = !liveUserInfoFragment.showLast;
                if (LiveUserInfoFragment.this.showLast) {
                    if (this.f18836a <= 0) {
                        this.f18837b.setTag(0);
                        hourRankTextView.setText(LiveUserInfoFragment.this.getString(R.string.hour_rank_title));
                    } else {
                        this.f18837b.setTag(Integer.valueOf(!this.f18838c ? 1 : 0));
                        LiveUserInfoFragment liveUserInfoFragment2 = LiveUserInfoFragment.this;
                        Object[] objArr = new Object[2];
                        objArr[0] = this.f18838c ? this.f18839d : liveUserInfoFragment2.getCurrentLiveRoom().getCountry();
                        objArr[1] = this.f18836a + "";
                        hourRankTextView.setText(liveUserInfoFragment2.getString(R.string.hour_rank_title_last_country, objArr));
                    }
                } else if (this.f18840e <= 0) {
                    hourRankTextView.setText(LiveUserInfoFragment.this.getString(R.string.hour_rank_title));
                } else {
                    this.f18837b.setTag(Integer.valueOf(!this.f18841f ? 1 : 0));
                    LiveUserInfoFragment liveUserInfoFragment3 = LiveUserInfoFragment.this;
                    Object[] objArr2 = new Object[2];
                    objArr2[0] = this.f18841f ? this.f18839d : liveUserInfoFragment3.getCurrentLiveRoom().getCountry();
                    objArr2[1] = this.f18840e + "";
                    hourRankTextView.setText(liveUserInfoFragment3.getString(R.string.hour_rank_title_country, objArr2));
                }
                hourRankTextView.postDelayed(new a(hourRankTextView), 400L);
            }
        }
    }

    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c9.a.i().f();
        }
    }

    /* loaded from: classes3.dex */
    class f implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f18846a;

        f(View view) {
            this.f18846a = view;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if ((action == 1 || action == 3) && DisableDoubleClickUtils.canClick(this.f18846a)) {
                    view.getParent().requestDisallowInterceptTouchEvent(false);
                    LiveUserInfoFragment liveUserInfoFragment = LiveUserInfoFragment.this;
                    if (view != liveUserInfoFragment.focusBtn && liveUserInfoFragment.underPoint(motionEvent.getRawX(), motionEvent.getRawY(), LiveUserInfoFragment.this.focusBtn)) {
                        LiveUserInfoFragment liveUserInfoFragment2 = LiveUserInfoFragment.this;
                        liveUserInfoFragment2.onViewClicked(liveUserInfoFragment2.focusBtn);
                    } else {
                        LiveUserInfoFragment.this.onViewClicked(view);
                    }
                }
            } else {
                view.getParent().requestDisallowInterceptTouchEvent(true);
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g implements z9.a {
        g() {
        }

        @Override // z9.a
        public void b(View view, String str, int i9) {
            if (LiveUserInfoFragment.this.userInfoAdapter.a(i9) == null || LiveUserInfoFragment.this.getCurrentUser().getUserId().equals(LiveUserInfoFragment.this.userInfoAdapter.a(i9).getCurrentUserId())) {
                return;
            }
            LiveUserInfoFragment liveUserInfoFragment = LiveUserInfoFragment.this;
            liveUserInfoFragment.toUserHomePageAct(((AudienceInformation) liveUserInfoFragment.mTIMUserProfiles.get(i9)).getCurrentUserId(), null);
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RoomItemData f18849a;

        h(RoomItemData roomItemData) {
            this.f18849a = roomItemData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FragmentActivity activity = LiveUserInfoFragment.this.getActivity();
            if (activity instanceof WatchLiveRoomActivity) {
                ((WatchLiveRoomActivity) activity).B1(this.f18849a);
            }
        }
    }

    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LiveUserInfoFragment.this.setUserInfoPadding();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class j implements hb.b<String> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f18853a;

            a(String str) {
                this.f18853a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (LiveUserInfoFragment.this.isDetached() || !LiveUserInfoFragment.this.isAdded()) {
                    return;
                }
                y7.e eVar = new y7.e(this.f18853a);
                eVar.g(false);
                EventBus.getDefault().post(eVar);
            }
        }

        j() {
        }

        @Override // hb.b
        /* renamed from: a */
        public void onFail(String str) {
            HandlerGetter.getMainHandler().postDelayed(new a(str), 1400L);
        }

        @Override // hb.b
        /* renamed from: b */
        public void onResponse(String str) {
            LiveUserInfoFragment.this.focusBtn.setEnabled(true);
            LiveUserInfoFragment.this.mILiveRoomManager.getCurrentLiveRoom().setFocused(true);
            LiveUserInfoFragment liveUserInfoFragment = LiveUserInfoFragment.this;
            liveUserInfoFragment.sendLiveMessage(LiveMessageModelFactory.createFocusBroadCasterModel(liveUserInfoFragment.getCurrentUser().getUserId(), LiveUserInfoFragment.this.getCurrentUser().getUserName(), LiveUserInfoFragment.this.getCurrentUser().getLevel(), LiveUserInfoFragment.this.getCurrentLiveRoom().isAdministrator()), (e.a<Boolean>) null);
        }
    }

    /* loaded from: classes3.dex */
    class k extends RecyclerView.OnScrollListener {
        k() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i9) {
            super.onScrollStateChanged(recyclerView, i9);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (i9 == 0 && linearLayoutManager.findLastCompletelyVisibleItemPosition() == linearLayoutManager.getItemCount() - 1 && LiveUserInfoFragment.this.isSlidingEndWard) {
                LiveUserInfoFragment.access$608(LiveUserInfoFragment.this);
                LiveUserInfoFragment liveUserInfoFragment = LiveUserInfoFragment.this;
                liveUserInfoFragment.getAudienceList(liveUserInfoFragment.pageNo);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i9, int i10) {
            super.onScrolled(recyclerView, i9, i10);
            if (Language.ARABIC.equalsIgnoreCase(q7.a.e().c())) {
                LiveUserInfoFragment.this.isSlidingEndWard = i9 < 0;
                return;
            }
            LiveUserInfoFragment.this.isSlidingEndWard = i9 > 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class l extends com.guochao.faceshow.aaspring.base.http.callback.c<List<AudienceInformation>> {
        l() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<AudienceInformation>> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<AudienceInformation> list, @NonNull FaceCastBaseResponse<List<AudienceInformation>> faceCastBaseResponse) {
            if (list == null || list.size() <= 0) {
                return;
            }
            for (AudienceInformation audienceInformation : list) {
                if (!LiveUserInfoFragment.this.mTIMUserProfiles.contains(audienceInformation)) {
                    LiveUserInfoFragment.this.mTIMUserProfiles.add(audienceInformation);
                }
            }
            LiveUserInfoFragment.this.userInfoAdapter.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class m implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f18857a;

        m(ViewGroup viewGroup) {
            this.f18857a = viewGroup;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            HourRankFragment.newInstance(((Integer) this.f18857a.getTag()).intValue()).show(LiveUserInfoFragment.this.getParentFragmentManager(), "hour_rank");
        }
    }

    static /* synthetic */ int access$608(LiveUserInfoFragment liveUserInfoFragment) {
        int i9 = liveUserInfoFragment.pageNo;
        liveUserInfoFragment.pageNo = i9 + 1;
        return i9;
    }

    private void addFocus() {
        ib.a.a(this.focusBtn, (SvgaImageViewV2) this.focusSVGA, R.raw.focus_large);
        this.focusBtn.postDelayed(this.focusBtnRunnable, 1400L);
        ib.b.b(getCurrentLiveRoom().getCurrentUserId(), FriendFromSource.LIVE, getActivity(), new j());
    }

    private void flushUser() {
        UserInfoAdapter userInfoAdapter;
        for (AudienceInformation audienceInformation : this.mPendingUser) {
            if (audienceInformation.getUserVipMsg() != null && audienceInformation.getUserVipMsg().getIsVip() > 0) {
                if (!this.mTIMUserProfiles.contains(audienceInformation)) {
                    this.mTIMUserProfiles.add(audienceInformation);
                }
            } else if (!this.mTIMUserProfiles.contains(audienceInformation)) {
                this.mTIMUserProfiles.add(0, audienceInformation);
            }
        }
        this.mPendingUser.clear();
        sortList();
        if (this.mRecyclerViewUsers == null || (userInfoAdapter = this.userInfoAdapter) == null) {
            return;
        }
        userInfoAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAudienceList(int i9) {
        post("tokens/live/newLive/findAudienceList").v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("limit", 10).v("page", Integer.valueOf(i9)).M(new l());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setHourRank(LiveInfoResult liveInfoResult, @Nullable ViewGroup viewGroup) {
        int nowHourRank;
        int i9;
        int preHourRank;
        int i10;
        if (viewGroup == null) {
            return;
        }
        LiveInfoResult liveInfoResult2 = this.lastResult;
        if (liveInfoResult2 != null && liveInfoResult2.getPreHourCountryRank() == liveInfoResult.getPreHourCountryRank() && this.lastResult.getNowHourCountryRank() == liveInfoResult.getNowHourCountryRank() && this.lastResult.getNowHourRank() == liveInfoResult.getNowHourRank() && this.lastResult.getPreHourRank() == liveInfoResult.getPreHourRank()) {
            return;
        }
        this.lastResult = liveInfoResult;
        viewGroup.setVisibility(0);
        FrameLayout frameLayout = (FrameLayout) viewGroup.findViewById(R.id.rank_area);
        frameLayout.removeAllViews();
        HourRankTextView hourRankTextView = new HourRankTextView(frameLayout.getContext());
        hourRankTextView.setInAnimation(hourRankTextView.getContext(), R.anim.hour_rank_in);
        hourRankTextView.setOutAnimation(hourRankTextView.getContext(), R.anim.hour_rank_out);
        viewGroup.setTag(1);
        hourRankTextView.setId(R.id.text);
        frameLayout.addView(hourRankTextView);
        hourRankTextView.setOnClickListener(new m(viewGroup));
        if (hourRankTextView.getOldFactory() == null) {
            hourRankTextView.setFactory(new a());
        }
        hourRankTextView.stop();
        hourRankTextView.setOnScrollListener(null);
        if (liveInfoResult.getNowHourCountryRank() == -1 && liveInfoResult.getNowHourRank() == -1 && liveInfoResult.getPreHourCountryRank() == -1 && liveInfoResult.getPreHourRank() == -1) {
            hourRankTextView.setText(getString(R.string.hour_rank_title));
        } else if (liveInfoResult.getNowHourCountryRank() > 30 && liveInfoResult.getNowHourRank() > 10 && liveInfoResult.getPreHourCountryRank() > 30 && liveInfoResult.getPreHourRank() > 10) {
            hourRankTextView.setText(getString(R.string.hour_rank_title));
        } else {
            String string = getString(R.string.worldhot);
            getCurrentLiveRoom().getCountry();
            if (liveInfoResult.getNowHourRank() != liveInfoResult.getNowHourCountryRank() && (liveInfoResult.getNowHourCountryRank() != -1 || liveInfoResult.getNowHourRank() < 0)) {
                if (liveInfoResult.getNowHourCountryRank() >= liveInfoResult.getNowHourRank()) {
                    nowHourRank = liveInfoResult.getNowHourRank();
                } else {
                    nowHourRank = liveInfoResult.getNowHourCountryRank();
                }
                i9 = 0;
            } else {
                nowHourRank = liveInfoResult.getNowHourRank();
                i9 = 1;
            }
            if (i9 != 0 && nowHourRank > 30) {
                nowHourRank = -1;
            }
            int i11 = (i9 != 0 || nowHourRank <= 10) ? nowHourRank : -1;
            if (liveInfoResult.getPreHourRank() != liveInfoResult.getPreHourCountryRank() && (liveInfoResult.getPreHourCountryRank() != -1 || liveInfoResult.getPreHourRank() < 0)) {
                if (liveInfoResult.getPreHourCountryRank() >= liveInfoResult.getPreHourRank()) {
                    preHourRank = liveInfoResult.getPreHourRank();
                } else {
                    preHourRank = liveInfoResult.getPreHourCountryRank();
                }
                i10 = 0;
            } else {
                preHourRank = liveInfoResult.getPreHourRank();
                i10 = 1;
            }
            if (i10 != 0 && preHourRank > 30) {
                preHourRank = -1;
            }
            int i12 = (i10 != 0 || preHourRank <= 10) ? preHourRank : -1;
            if (i11 <= 0 && i12 <= 0) {
                hourRankTextView.setText(getString(R.string.hour_rank_title));
            } else if (i11 >= 1 && i12 <= 0) {
                Object[] objArr = new Object[2];
                if (i9 == 0) {
                    string = getCurrentLiveRoom().getCountry();
                }
                objArr[0] = string;
                objArr[1] = i11 + "";
                hourRankTextView.setText(getString(R.string.hour_rank_title_country, objArr));
                hourRankTextView.reStartScroll();
                viewGroup.setTag(Integer.valueOf(i9 ^ 1));
                hourRankTextView.setOnScrollListener(new b());
            } else if (i12 >= 1 && i11 <= 0) {
                Object[] objArr2 = new Object[2];
                if (i10 == false) {
                    string = getCurrentLiveRoom().getCountry();
                }
                objArr2[0] = string;
                objArr2[1] = i12 + "";
                hourRankTextView.setText(getString(R.string.hour_rank_title_last_country, objArr2));
                hourRankTextView.reStartScroll();
                viewGroup.setTag(Integer.valueOf(i10 ^ 1));
                hourRankTextView.setOnScrollListener(new c());
            } else {
                viewGroup.setTag(Integer.valueOf(i9 ^ 1));
                Object[] objArr3 = new Object[2];
                objArr3[0] = i9 != 0 ? string : getCurrentLiveRoom().getCountry();
                objArr3[1] = i11 + "";
                hourRankTextView.setText(getString(R.string.hour_rank_title_country, objArr3));
                hourRankTextView.reStartScroll();
                this.showLast = false;
                hourRankTextView.setOnScrollListener(new d(i12, viewGroup, i10, string, i11, i9));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserInfoPadding() {
        LinearLayout linearLayout = this.nameLy;
        if (linearLayout != null) {
            linearLayout.setPaddingRelative(0, 0, DensityUtil.dp2px(10.0f), 0);
        }
    }

    private void sortList() {
        Collections.sort(this.mTIMUserProfiles);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toUserHomePageAct(String str, String str2) {
        if (getParentFragment() != null) {
            LivePeopleInfoCardFragment.showPeopleInfo(getParentFragment().getChildFragmentManager(), str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean underPoint(float f10, float f11, View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return ((float) iArr[0]) < f10 && ((float) (iArr[0] + view.getWidth())) > f10 && ((float) iArr[1]) < f11 && ((float) (iArr[1] + view.getHeight())) > f11;
    }

    public void addFBNumber(LiveMessageModel liveMessageModel) {
        try {
            this.fBNumber += ((GiftLiveMessage) liveMessageModel.getData()).getGiftBCoinValue();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        TextView textView = this.liveFbCount;
        if (textView != null) {
            textView.setText(Formatter.getFormat(this.fBNumber + ""));
        }
    }

    public void addZanCount() {
        TextView textView = this.liveLikeCount;
        if (textView != null) {
            long j10 = this.mLikeNum + 1;
            this.mLikeNum = j10;
            textView.setText(Formatter.getFormat(j10));
        }
    }

    public void cancelLocationAnimator() {
        u.c(this.llLocationAndName);
    }

    public void checkBackToLast(RoomItemData roomItemData) {
        if (this.backToLast == null || this.littleAvatar == null) {
            return;
        }
        RoomItemData lastRoomItem = roomItemData.getLastRoomItem();
        if (lastRoomItem != null) {
            roomItemData.setLastRoomItem(null);
            this.backToLast.setVisibility(0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.backToLast.getLayoutParams();
            if (getCurrentLiveRoom().isMultiLiveRoom()) {
                marginLayoutParams.topMargin = DensityUtil.dp2px(40.0f);
            } else {
                marginLayoutParams.topMargin = DensityUtil.dp2px(7.0f);
            }
            hc.a.d(this.littleAvatar, lastRoomItem.getAvatarUrl());
            this.backToLast.setOnClickListener(new h(lastRoomItem));
            return;
        }
        this.backToLast.setVisibility(8);
    }

    public void checkHourRank(LiveInfoResult liveInfoResult) {
        if (!getCurrentLiveRoom().isMultiLiveRoom() && !getCurrentLiveRoom().isInPkMode()) {
            setHourRank(liveInfoResult, this.rankListSingle);
        } else {
            setHourRank(liveInfoResult, this.rankListMulti);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_live_user_info;
    }

    public long getLikeNum() {
        TextView textView = this.liveLikeCount;
        if (textView == null || TextUtils.isEmpty(textView.getText().toString())) {
            return 0L;
        }
        try {
            return Long.parseLong(String.valueOf(this.mLikeNum));
        } catch (Exception unused) {
            return 0L;
        }
    }

    @Override // com.guochao.component.liveroomcommon.interfaces.LiveRoomTopInfoController
    @Nullable
    public LiveRoomTopInfoController.ViewHolder getViewHolder() {
        if (this.mViewHolder == null) {
            this.mViewHolder = new LiveRoomTopInfoController.ViewHolder(this.masterName, null, null);
        }
        return this.mViewHolder;
    }

    public void hideBackToLast() {
        View view = this.backToLast;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
        if (this.mTIMUserProfiles == null) {
            this.mTIMUserProfiles = new ArrayList();
        }
        if (getParentFragment() != null && getParentFragment().getView() != null) {
            this.liveActivityView = (LiveActivityView) getParentFragment().getView().findViewById(R.id.live_activity_view);
        }
        view.findViewById(R.id.user_info_lay).setOnClickListener(new e());
        this.focusBtn.setVisibility(8);
        setUserInfoPadding();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.topMargin = StatusBarHelper.getStatusbarHeight(getActivity());
        view.setLayoutParams(marginLayoutParams);
        ImageView imageView = this.ivMotion;
        if (imageView != null) {
            imageView.setImageResource(R.drawable.living_status);
            ((AnimationDrawable) this.ivMotion.getDrawable()).start();
        }
        initVisitorListView();
        new f(view);
        if (getParentFragment() instanceof BroadCastFragment) {
            View view2 = this.mLiveFCoinAndLike;
            if (view2 != null) {
                view2.setVisibility(0);
            }
            this.mRecyclerViewUsers.setVisibility(0);
        } else {
            this.mRecyclerViewUsers.setVisibility(4);
            View view3 = this.mLiveFCoinAndLike;
            if (view3 != null) {
                view3.setVisibility(4);
            }
        }
        resetData();
    }

    protected void initVisitorListView() {
        UserInfoAdapter userInfoAdapter = new UserInfoAdapter(getActivity(), this.mTIMUserProfiles, getCurrentUser().getCurrentUserId());
        this.userInfoAdapter = userInfoAdapter;
        this.mRecyclerViewUsers.setAdapter(userInfoAdapter);
        this.mRecyclerViewUsers.addOnScrollListener(this.mLoadMoreListener);
        this.userInfoAdapter.setOnItemClickListener(new g());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        LiveActivityView liveActivityView = this.liveActivityView;
        if (liveActivityView != null) {
            liveActivityView.C();
        }
        if (EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().unregister(this);
        }
        super.onDestroyView();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFocusEvent(y7.e eVar) {
        if (eVar.a() == null || !eVar.a().equals(getCurrentLiveRoom().getCurrentUserId())) {
            return;
        }
        onFocusState(eVar.c() ? "1" : "0");
    }

    public void onFocusState(String str) {
        if (this.focusBtn == null) {
            return;
        }
        if ("1".equals(str)) {
            EventBus.getDefault().post(new KitEvent(getCurrentLiveRoom().getLiveRoomId(), true, str));
            this.focusBtn.setVisibility(8);
            setUserInfoPadding();
            return;
        }
        EventBus.getDefault().post(new KitEvent(getCurrentLiveRoom().getLiveRoomId(), true, str));
        this.focusBtn.setVisibility(0);
        if (BaseConfig.isChinese()) {
            setUserInfoPadding();
        }
    }

    public void onLiveFinish() {
        LiveActivityView liveActivityView = this.liveActivityView;
        if (liveActivityView != null) {
            liveActivityView.C();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onPlaySuccess() {
        View view = this.mLiveFCoinAndLike;
        if (view != null) {
            view.setVisibility(0);
        }
        this.mRecyclerViewUsers.setVisibility(0);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, d9.e
    public void onQuitLiveRoom(boolean z10, boolean z11) {
        super.onQuitLiveRoom(z10, z11);
        if (this.userInfoAdapter != null) {
            this.mTIMUserProfiles.clear();
            this.userInfoAdapter.notifyDataSetChanged();
        }
    }

    public void onUserEnterIn(LiveMessageModel<? extends BaseLiveMessage> liveMessageModel) {
        String fromUserId = liveMessageModel.getData().getFromUserId();
        if (TextUtils.isEmpty(fromUserId) || getCurrentUser().getUserId().equalsIgnoreCase(fromUserId) || fromUserId.equalsIgnoreCase(getCurrentLiveRoom().getCurrentUserId())) {
            return;
        }
        for (int i9 = 0; i9 < this.mPendingUser.size(); i9++) {
            if (fromUserId.equalsIgnoreCase(this.mPendingUser.get(i9).getUserId())) {
                return;
            }
        }
        for (int i10 = 0; i10 < this.mTIMUserProfiles.size(); i10++) {
            if (fromUserId.equalsIgnoreCase(this.mTIMUserProfiles.get(i10).getUserId())) {
                return;
            }
        }
        AudienceInformation audienceInformation = new AudienceInformation();
        BaseLiveMessage data = liveMessageModel.getData();
        audienceInformation.setAvatar(null);
        audienceInformation.setImg(data.getFromUserAvatar());
        audienceInformation.setUserId(data.getFromUserId());
        audienceInformation.setUserVipMsg(data.getUserVipMsg());
        this.mPendingUser.add(audienceInformation);
        if (System.currentTimeMillis() - this.mLastUserEnterIn >= 2000) {
            flushUser();
            this.mLastUserEnterIn = System.currentTimeMillis();
        }
    }

    @OnClick
    @Optional
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.focus_btn) {
            this.focusBtn.setEnabled(false);
            addFocus();
        } else if (id2 != R.id.ll_fb) {
            if (id2 == R.id.top_info_click && !getCurrentLiveRoom().isBroadCaster()) {
                toUserHomePageAct(getCurrentLiveRoom().getBroadCasterUserId(), getCurrentLiveRoom().getUserNickName());
            }
        } else {
            Intent intent = new Intent(getActivity(), ContributionListActivity.class);
            intent.putExtra("live_id", getCurrentLiveRoom().getLiveRoomId());
            intent.putExtra("ownerid", getCurrentLiveRoom().getCurrentUserId());
            startActivity(intent);
        }
    }

    public void refreshBroadcasterInfo(List<LiveInfoMatchBean> list) {
        String str = null;
        for (LiveInfoMatchBean liveInfoMatchBean : list) {
            if (liveInfoMatchBean.getUserId().equals(getCurrentLiveRoom().getBroadCasterUserId()) && !TextUtils.isEmpty(liveInfoMatchBean.getAvatar())) {
                str = liveInfoMatchBean.getAvatar();
            }
        }
        if (getCurrentLiveRoom() != null) {
            if (getCurrentLiveRoom().isBroadCaster()) {
                getCurrentUser().setPendantUrl(str);
                this.mAvatarView.d(getCurrentUser());
            } else {
                ((BroadCasterLiveModel) getCurrentLiveRoom()).setPendantUrl(str);
                this.mAvatarView.d(getCurrentLiveRoom());
            }
            this.masterName.setText(getCurrentLiveRoom().getUserNickName());
            return;
        }
        getCurrentUser().setPendantUrl(str);
        this.mAvatarView.d(getCurrentUser());
    }

    public void refreshUserInfo(String str, String str2, String str3, List<AudienceInformation> list, boolean z10) {
        if (list != null && z10 && this.userInfoAdapter != null) {
            this.mTIMUserProfiles.clear();
            for (AudienceInformation audienceInformation : list) {
                if (audienceInformation != null && !this.mTIMUserProfiles.contains(audienceInformation)) {
                    this.mTIMUserProfiles.add(audienceInformation);
                }
            }
            sortList();
            this.userInfoAdapter.notifyDataSetChanged();
        }
        TextView textView = this.onlineCountText;
        if (textView != null) {
            if (TextUtils.isEmpty(str)) {
                str = "0";
            }
            textView.setText(str);
        }
        long j10 = 0;
        try {
            if (this.mILiveRoomManager.getCurrentLiveRoom().isBroadCaster()) {
                if (TextUtils.isEmpty(str2)) {
                    str2 = String.valueOf(SpUtils.getInt(getActivity(), Contants.FB));
                }
                TextView textView2 = this.liveFbCount;
                if (textView2 != null) {
                    textView2.setText(Formatter.getFormat(str2));
                }
                this.fBNumber = Long.parseLong(str2);
            } else {
                long parseLong = TextUtils.isEmpty(str2) ? -1L : Long.parseLong(str2);
                if (this.fBNumber < parseLong || parseLong == -1) {
                    TextView textView3 = this.liveFbCount;
                    if (TextUtils.isEmpty(str2)) {
                        str2 = "0";
                    }
                    textView3.setText(Formatter.getFormat(str2));
                    if (parseLong == -1) {
                        parseLong = 0;
                    }
                    this.fBNumber = parseLong;
                }
            }
        } catch (Exception unused) {
        }
        try {
            if (!TextUtils.isEmpty(str3) && !"null".equals(str3)) {
                j10 = Long.parseLong(str3);
            }
            this.mLikeNum = j10;
            TextView textView4 = this.liveLikeCount;
            if (textView4 != null) {
                textView4.setText(Formatter.getFormat(j10));
            }
        } catch (Exception unused2) {
        }
    }

    public void resetData() {
        this.fBNumber = 0L;
        this.mLikeNum = 0L;
        ViewGroup viewGroup = this.rankListMulti;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
        ViewGroup viewGroup2 = this.rankListSingle;
        if (viewGroup2 != null) {
            viewGroup2.setVisibility(8);
        }
        View view = this.backToLast;
        if (view != null) {
            view.setVisibility(8);
        }
        this.lastResult = null;
        if (this.mAvatarView != null) {
            if (getCurrentLiveRoom() != null) {
                if (getCurrentLiveRoom().isBroadCaster()) {
                    this.mAvatarView.d(getCurrentUser());
                } else {
                    this.mAvatarView.d(getCurrentLiveRoom());
                }
                this.masterName.setText(getCurrentLiveRoom().getUserNickName());
            } else {
                this.mAvatarView.d(getCurrentUser());
            }
        }
        if (this.mILiveRoomManager.getCurrentLiveRoom().isBroadCaster()) {
            int i9 = SpUtils.getInt(getActivity(), Contants.FB);
            TextView textView = this.liveFbCount;
            if (textView != null) {
                textView.setText(String.valueOf(i9));
            }
            this.fBNumber += i9;
        }
        if (this.mILiveRoomManager.getCurrentLiveRoom().isMultiLiveRoom()) {
            LinearLayout linearLayout = this.llLikeCount;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            LinearLayout linearLayout2 = this.llFb;
            if (linearLayout2 != null) {
                linearLayout2.setPaddingRelative(0, 0, DensityUtil.dp2px(10.0f), 0);
                return;
            }
            return;
        }
        LinearLayout linearLayout3 = this.llLikeCount;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(0);
        }
    }

    public void setBroadCasterUserName(String str) {
        TextView textView = this.masterName;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setFcoinCound(String str) {
        if (this.liveFbCount == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.liveFbCount.setText(str);
        try {
            this.fBNumber = Integer.parseInt(str);
        } catch (Exception unused) {
        }
    }

    @Override // com.guochao.component.liveroomcommon.interfaces.LiveRoomTopInfoController
    public /* synthetic */ void setLiveRoomOwnerUserInfo(GCLiveRoomUserInfo gCLiveRoomUserInfo) {
        a7.a.a(this, gCLiveRoomUserInfo);
    }

    public void setUserInfoData(LiveInfoResult liveInfoResult, boolean z10, boolean z11) {
        if (liveInfoResult == null) {
            return;
        }
        onPlaySuccess();
        this.pageNo = 1;
        refreshUserInfo(liveInfoResult.getOnlineNum(), liveInfoResult.getFcoin(), liveInfoResult.getLikeNum(), liveInfoResult.getAudienceList(), z11);
        if (getCurrentLiveRoom().isBroadCaster()) {
            this.focusBtn.setVisibility(8);
            setUserInfoPadding();
        }
        LiveActivityView liveActivityView = this.liveActivityView;
        if (liveActivityView != null) {
            if (z10) {
                liveActivityView.H();
            }
            this.liveActivityView.E(liveInfoResult);
        }
    }

    public void showLocationAnimator(u.g gVar) {
        if (this.tvLiveName == null || !isAdded() || getActivity() == null) {
            return;
        }
        if (TextUtils.isEmpty(getCurrentLiveRoom().getLiveAddress())) {
            this.tvLiveLocation.setText(getString(R.string.On_The_Mars));
        } else {
            this.tvLiveLocation.setText(getCurrentLiveRoom().getLiveAddress());
        }
        int i9 = 0;
        if (getActivity() != null) {
            i9 = PackageUtils.getScreenWidth(getActivity());
            this.tvLiveName.setMaxWidth((i9 / 2) - DensityUtil.dp2px(15.0f));
        }
        if (StringUtils.containsEmoji(getCurrentLiveRoom().getLiveInfoContent())) {
            this.tvLiveName.setText((String) TextUtils.ellipsize(getCurrentLiveRoom().getLiveInfoContent(), this.tvLiveName.getPaint(), (i9 / 2) - DensityUtil.dp2px(30.0f), TextUtils.TruncateAt.END));
        } else {
            this.tvLiveName.setText(getCurrentLiveRoom().getLiveInfoContent());
        }
        if (!(getActivity() instanceof WatchLiveRoomActivity) || ((WatchLiveRoomActivity) getActivity()).f18073j) {
            u.g(this.llLocationAndName, this.tvLiveName, this.llLocation, gVar);
        }
    }

    public void switchPkMode(boolean z10) {
        ViewGroup viewGroup;
        if (this.rankListMulti == null || (viewGroup = this.rankListSingle) == null) {
            return;
        }
        LiveInfoResult liveInfoResult = this.lastResult;
        if (liveInfoResult != null) {
            this.lastResult = null;
        }
        if (z10) {
            viewGroup.setVisibility(8);
            this.rankListMulti.setVisibility(0);
            if (liveInfoResult != null) {
                setHourRank(liveInfoResult, this.rankListMulti);
                return;
            }
            return;
        }
        viewGroup.setVisibility(0);
        this.rankListMulti.setVisibility(8);
        if (liveInfoResult != null) {
            setHourRank(liveInfoResult, this.rankListSingle);
        }
    }

    public void updateActivityInfo(LiveActivityMessage liveActivityMessage) {
        LiveActivityView liveActivityView = this.liveActivityView;
        if (liveActivityView != null) {
            liveActivityView.F(liveActivityMessage.getAppActivityGiftList());
        }
    }

    public void updateAudienceLiveInfo(AudienceListInfoMessage audienceListInfoMessage, boolean z10) {
        if (audienceListInfoMessage == null) {
            return;
        }
        refreshUserInfo(audienceListInfoMessage.getOnlineNum(), audienceListInfoMessage.getFcoin(), audienceListInfoMessage.getLikeNum(), audienceListInfoMessage.getAudienceList(), z10);
    }

    public void updateHeadView(p7.h hVar) {
        HeadPortraitView headPortraitView = this.mAvatarView;
        if (headPortraitView != null) {
            headPortraitView.d(hVar);
        }
    }
}
