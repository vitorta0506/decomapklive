package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.Optional;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.model.LinkMicMessage;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMessageModel;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyList;
import com.guochao.faceshow.aaspring.modulars.live.model.LiveMicApplyResult;
import com.guochao.faceshow.aaspring.modulars.live.watcher.WatcherLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.main.fragment.MainMenuDialogFragment;
import com.guochao.faceshow.aaspring.utils.DisableDoubleClickUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.MicroPhoneLevelHelper;
import com.guochao.faceshow.aaspring.utils.PackageUtils;
import com.guochao.faceshow.aaspring.utils.SimpleObserver;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ApplyConversationListDialogFragment extends BaseDialogFragment {

    /* renamed from: b  reason: collision with root package name */
    m f19166b;
    @BindView
    View bottomLine;

    /* renamed from: c  reason: collision with root package name */
    boolean f19167c;

    /* renamed from: d  reason: collision with root package name */
    d9.g f19168d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f19169e;
    @BindView
    TextView emptyText;
    @BindView
    View emptyView;
    @BindView
    ImageView mImageViewStatus;
    @BindView
    View mLiveBtn;
    @BindView
    SwipeRefreshLayout mSwipeRefreshLayout;
    @BindView
    TextView mTextViewLinkMic;
    @BindView
    RecyclerView rcvApplyList;

    /* renamed from: a  reason: collision with root package name */
    private List<LiveMicApplyList> f19165a = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    View.OnClickListener f19170f = new h();

    /* renamed from: g  reason: collision with root package name */
    View.OnClickListener f19171g = new j();

    /* renamed from: h  reason: collision with root package name */
    View.OnClickListener f19172h = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveMicApplyList f19173a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f19174b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f19175c;

        a(LiveMicApplyList liveMicApplyList, int i9, boolean z10) {
            this.f19173a = liveMicApplyList;
            this.f19174b = i9;
            this.f19175c = z10;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            ApplyConversationListDialogFragment.this.showEmptyView();
            ApplyConversationListDialogFragment.this.getActivity();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            ApplyConversationListDialogFragment.this.f19168d.C0(this.f19173a.getUserId());
            if (ApplyConversationListDialogFragment.this.f19165a != null) {
                ApplyConversationListDialogFragment applyConversationListDialogFragment = ApplyConversationListDialogFragment.this;
                if (applyConversationListDialogFragment.f19166b != null && applyConversationListDialogFragment.f19165a.size() > this.f19174b) {
                    ApplyConversationListDialogFragment.this.i2(this.f19173a.getUserId());
                }
            }
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().w(false);
            ApplyConversationListDialogFragment.this.k2(true);
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().f();
            if (this.f19175c) {
                ApplyConversationListDialogFragment.this.showToast(R.string.live_linkmic_apply_canceled);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserHomePageAct.start((Activity) ApplyConversationListDialogFragment.this.getActivity(), ((LiveMicApplyList) ApplyConversationListDialogFragment.this.f19165a.get(((Integer) view.getTag()).intValue())).getUserId(), 1);
        }
    }

    /* loaded from: classes3.dex */
    class c implements SwipeRefreshLayout.OnRefreshListener {
        c() {
        }

        @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
        public void onRefresh() {
            ApplyConversationListDialogFragment.this.e2();
        }
    }

    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ApplyConversationListDialogFragment.this.mSwipeRefreshLayout.setRefreshing(true);
            ApplyConversationListDialogFragment.this.e2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<List<LiveMicApplyList>> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            ApplyConversationListDialogFragment.this.mSwipeRefreshLayout.setRefreshing(false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<LiveMicApplyList>> aVar) {
            ApplyConversationListDialogFragment.this.showEmptyView();
            ApplyConversationListDialogFragment.this.c2();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<LiveMicApplyList> list, @NonNull FaceCastBaseResponse<List<LiveMicApplyList>> faceCastBaseResponse) {
            if (list == null) {
                list = new ArrayList<>();
            }
            ApplyConversationListDialogFragment.this.f19165a.clear();
            ApplyConversationListDialogFragment.this.f19165a.addAll(list);
            ApplyConversationListDialogFragment.this.c2();
            ApplyConversationListDialogFragment.this.f19166b.notifyDataSetChanged();
            ApplyConversationListDialogFragment.this.showEmptyView();
            ApplyConversationListDialogFragment.this.b2();
        }
    }

    /* loaded from: classes3.dex */
    class f extends SimpleObserver<te.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f19181a;

        f(View view) {
            this.f19181a = view;
        }

        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
        public void onNext(te.a aVar) {
            super.onNext((f) aVar);
            if (aVar.f58133b) {
                ApplyConversationListDialogFragment.this.Z1(this.f19181a);
            } else if (aVar.f58134c) {
            } else {
                PackageUtils.gotoSetting(ApplyConversationListDialogFragment.this.getActivity());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveMicApplyResult> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AnimationDrawable f19183a;

        g(AnimationDrawable animationDrawable) {
            this.f19183a = animationDrawable;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable LiveMicApplyResult liveMicApplyResult, @NonNull FaceCastBaseResponse<LiveMicApplyResult> faceCastBaseResponse) {
            if (liveMicApplyResult != null) {
                liveMicApplyResult.setAudienceId(ApplyConversationListDialogFragment.this.getCurrentUser().getUserId());
                ApplyConversationListDialogFragment.this.f19168d.r(liveMicApplyResult);
                ApplyConversationListDialogFragment.this.mSwipeRefreshLayout.setRefreshing(true);
                com.guochao.faceshow.aaspring.modulars.live.common.a.m().y();
                ApplyConversationListDialogFragment.this.e2();
                ApplyConversationListDialogFragment.this.mLiveBtn.setVisibility(0);
                ApplyConversationListDialogFragment.this.k2(false);
                ApplyConversationListDialogFragment.this.mImageViewStatus.setVisibility(8);
                com.guochao.faceshow.aaspring.modulars.live.common.a.m().C(liveMicApplyResult, false);
                com.guochao.faceshow.aaspring.modulars.live.common.a.m().w(true);
            }
            d9.g gVar = ApplyConversationListDialogFragment.this.f19168d;
            if (gVar == null) {
                return;
            }
            EventTrackingV2Utils.INSTANCE.track(gVar.getCurrentLiveRoom().isMultiLiveRoom() ? EventTrackingV2Utils.apply_link_multi_click : EventTrackingV2Utils.apply_link_single_click, "1");
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            ApplyConversationListDialogFragment.this.f19169e = false;
            ApplyConversationListDialogFragment.this.mTextViewLinkMic.setVisibility(0);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveMicApplyResult> aVar) {
            if (aVar.a() == 80002) {
                ApplyConversationListDialogFragment.this.showToast(R.string.live_linkmic_people_over_limit);
            }
            ApplyConversationListDialogFragment.this.mImageViewStatus.setVisibility(4);
            this.f19183a.stop();
            ApplyConversationListDialogFragment.this.k2(true);
            ApplyConversationListDialogFragment.this.mLiveBtn.setVisibility(0);
            ApplyConversationListDialogFragment.this.bottomLine.setVisibility(0);
            d9.g gVar = ApplyConversationListDialogFragment.this.f19168d;
            if (gVar == null) {
                return;
            }
            EventTrackingV2Utils.INSTANCE.track(gVar.getCurrentLiveRoom().isMultiLiveRoom() ? EventTrackingV2Utils.apply_link_multi_click : EventTrackingV2Utils.apply_link_single_click, "0");
        }
    }

    /* loaded from: classes3.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue;
            if (DisableDoubleClickUtils.canClick(view) && (intValue = ((Integer) view.getTag()).intValue()) >= 0 && intValue < ApplyConversationListDialogFragment.this.f19165a.size()) {
                if (ApplyConversationListDialogFragment.this.d2()) {
                    ApplyConversationListDialogFragment.this.showToast(R.string.cannot_link_mic_when_pking);
                    return;
                }
                ApplyConversationListDialogFragment.this.showProgressDialog("");
                LiveMicApplyList liveMicApplyList = (LiveMicApplyList) ApplyConversationListDialogFragment.this.f19165a.get(intValue);
                ApplyConversationListDialogFragment.this.Y1(liveMicApplyList.getUserId(), liveMicApplyList.getStreamId(), intValue);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class i extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f19186a;

        i(String str) {
            this.f19186a = str;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            ApplyConversationListDialogFragment.this.dismissProgressDialog();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            if (aVar.a() == 80002) {
                ApplyConversationListDialogFragment.this.showToast(R.string.live_linkmic_people_over_limit);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().p(0, null);
            LiveMicApplyResult liveMicApplyResult = new LiveMicApplyResult();
            ApplyConversationListDialogFragment.this.f19168d.X(this.f19186a);
            liveMicApplyResult.setAudienceId(this.f19186a);
            ApplyConversationListDialogFragment.this.i2(this.f19186a);
            if (ApplyConversationListDialogFragment.this.getParentFragment() instanceof BaseLiveRoomFragment) {
                ((BaseLiveRoomFragment) ApplyConversationListDialogFragment.this.getParentFragment()).W3();
            }
            if (ApplyConversationListDialogFragment.this.f19168d.getCurrentLiveRoom().isMultiLiveRoom()) {
                return;
            }
            ApplyConversationListDialogFragment.this.dismissAllowingStateLoss();
        }
    }

    /* loaded from: classes3.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int intValue;
            if (DisableDoubleClickUtils.canClick(view) && (intValue = ((Integer) view.getTag()).intValue()) >= 0 && intValue < ApplyConversationListDialogFragment.this.f19165a.size()) {
                LiveMicApplyList liveMicApplyList = (LiveMicApplyList) ApplyConversationListDialogFragment.this.f19165a.get(intValue);
                if (liveMicApplyList.getUserId().equalsIgnoreCase(ApplyConversationListDialogFragment.this.getCurrentUser().getUserId())) {
                    ApplyConversationListDialogFragment.this.a2(intValue, liveMicApplyList);
                } else {
                    ApplyConversationListDialogFragment.this.g2(intValue, liveMicApplyList, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class k extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveMicApplyList f19189a;

        k(LiveMicApplyList liveMicApplyList) {
            this.f19189a = liveMicApplyList;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
            ApplyConversationListDialogFragment.this.showEmptyView();
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            ApplyConversationListDialogFragment.this.f19168d.p(this.f19189a.getUserId());
            ApplyConversationListDialogFragment.this.i2(this.f19189a.getUserId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class l extends BaseViewHolder {
        public l(View view) {
            super(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class m extends RecyclerView.Adapter<l> {
        private m() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: a */
        public void onBindViewHolder(@NonNull l lVar, int i9) {
            HeadPortraitView headPortraitView = (HeadPortraitView) lVar.getView(R.id.avatar_view);
            VipIndicatorView vipIndicatorView = (VipIndicatorView) lVar.getView(R.id.vip_indicator_view);
            ImageView imageView = (ImageView) lVar.getView(R.id.user_gender);
            TextView textView = (TextView) lVar.getView(R.id.user_age);
            LinearLayout linearLayout = (LinearLayout) lVar.getView(R.id.user_gender_age);
            if (((LiveMicApplyList) ApplyConversationListDialogFragment.this.f19165a.get(i9)).getUserVipMsg() != null) {
                vipIndicatorView.setVipLevel(((LiveMicApplyList) ApplyConversationListDialogFragment.this.f19165a.get(i9)).getUserVipMsg().getIsVip());
            }
            if (((LiveMicApplyList) ApplyConversationListDialogFragment.this.f19165a.get(i9)).getGender() == 0) {
                linearLayout.setBackgroundResource(R.drawable.icon_user_center_female);
                imageView.setImageResource(R.mipmap.icon_ugc_female);
            } else {
                linearLayout.setBackgroundResource(R.drawable.icon_user_center_male);
                imageView.setImageResource(R.mipmap.icon_ugc_male);
            }
            textView.setText(String.valueOf(((LiveMicApplyList) ApplyConversationListDialogFragment.this.f19165a.get(i9)).getAge()));
            LiveMicApplyList liveMicApplyList = (LiveMicApplyList) ApplyConversationListDialogFragment.this.f19165a.get(i9);
            View view = lVar.getView(R.id.btnAgree);
            View view2 = lVar.getView(R.id.btnRefused);
            if (ApplyConversationListDialogFragment.this.f19167c) {
                view.setVisibility(8);
                if (liveMicApplyList.getUserId().equalsIgnoreCase(ApplyConversationListDialogFragment.this.getCurrentUser().getUserId())) {
                    view2.setVisibility(0);
                } else {
                    view2.setVisibility(8);
                }
            } else {
                view.setVisibility(0);
                view2.setVisibility(0);
            }
            headPortraitView.d((p7.h) ApplyConversationListDialogFragment.this.f19165a.get(i9));
            headPortraitView.setTag(Integer.valueOf(i9));
            lVar.itemView.setTag(Integer.valueOf(i9));
            lVar.setText(R.id.nickname, ((LiveMicApplyList) ApplyConversationListDialogFragment.this.f19165a.get(i9)).getNickName());
            lVar.getView(R.id.btnRefused).setTag(Integer.valueOf(i9));
            lVar.getView(R.id.btnAgree).setTag(Integer.valueOf(i9));
            lVar.getView(R.id.btnRefused).setOnClickListener(ApplyConversationListDialogFragment.this.f19171g);
            lVar.getView(R.id.btnAgree).setOnClickListener(ApplyConversationListDialogFragment.this.f19170f);
            lVar.getView(R.id.nickname).setOnClickListener(ApplyConversationListDialogFragment.this.f19172h);
            lVar.getView(R.id.nickname).setTag(Integer.valueOf(i9));
            headPortraitView.setOnClickListener(ApplyConversationListDialogFragment.this.f19172h);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        /* renamed from: b */
        public l onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
            return new l(LayoutInflater.from(ApplyConversationListDialogFragment.this.getContext()).inflate(R.layout.live_mic_list_item, viewGroup, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ApplyConversationListDialogFragment.this.f19165a.size();
        }

        /* synthetic */ m(ApplyConversationListDialogFragment applyConversationListDialogFragment, c cVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y1(String str, String str2, int i9) {
        post("tokens/live/microphone/agree").v("streamId", str2).v("liveId", this.f19168d.getCurrentLiveRoom().getLiveRoomId()).v("audienceId", str).I(3).M(new i(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z1(View view) {
        if (this.f19169e) {
            return;
        }
        this.f19169e = true;
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().f();
        this.mImageViewStatus.setVisibility(0);
        this.mTextViewLinkMic.setVisibility(8);
        AnimationDrawable animationDrawable = (AnimationDrawable) this.mImageViewStatus.getDrawable();
        animationDrawable.start();
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().e(new g(animationDrawable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b2() {
        boolean z10 = false;
        int i9 = 0;
        while (true) {
            if (i9 >= this.f19165a.size()) {
                break;
            } else if (this.f19165a.get(i9).getUserId().equals(getCurrentUser().getUserId())) {
                z10 = true;
                break;
            } else {
                i9++;
            }
        }
        k2(!z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c2() {
        d9.g gVar = this.f19168d;
        if (gVar instanceof BaseLiveRoomFragment) {
            ((BaseLiveRoomFragment) gVar).s3(this.f19165a.size());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d2() {
        return getParentFragment() != null && (getParentFragment() instanceof BaseLiveRoomFragment) && (((BaseLiveRoomFragment) getParentFragment()).getCurrentLiveRoom().isInPkMode() || ((BaseLiveRoomFragment) getParentFragment()).getCurrentLiveRoom().getApplyPkState());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i2(String str) {
        for (int i9 = 0; i9 < this.f19165a.size(); i9++) {
            if (this.f19165a.get(i9).getUserId().equals(str)) {
                this.f19165a.remove(i9);
                m mVar = this.f19166b;
                if (mVar != null) {
                    mVar.notifyDataSetChanged();
                }
                b2();
                c2();
                showEmptyView();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showEmptyView() {
        View view = this.emptyView;
        if (view == null) {
            return;
        }
        View findViewById = view.findViewById(R.id.empty_text);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        List<LiveMicApplyList> list = this.f19165a;
        if (list != null && !list.isEmpty()) {
            this.emptyView.setVisibility(8);
        } else {
            this.emptyView.setVisibility(0);
        }
    }

    public void a2(int i9, LiveMicApplyList liveMicApplyList) {
        int i10 = 0;
        boolean z10 = i9 >= 0;
        if (i9 < 0 || liveMicApplyList == null) {
            while (true) {
                if (i10 >= this.f19165a.size()) {
                    break;
                } else if (this.f19165a.get(i10).getUserId().equals(getCurrentUser().getUserId())) {
                    liveMicApplyList = this.f19165a.get(i10);
                    i9 = i10;
                    break;
                } else {
                    i10++;
                }
            }
        }
        if (i9 < 0 || liveMicApplyList == null) {
            return;
        }
        post("tokens/live/microphone/cancel").v("liveId", this.f19168d.getCurrentLiveRoom().getLiveRoomId()).v("streamId", liveMicApplyList.getStreamId()).v("anchorId", this.f19168d.getCurrentLiveRoom().getBroadCasterUserId()).I(3).M(new a(liveMicApplyList, i9, z10));
    }

    @OnClick
    public void applyLink(View view) {
        if (MicroPhoneLevelHelper.INSTANCE.checkMicroPhoneLevel(this.f19168d.getCurrentLiveRoom().isMultiLiveRoom())) {
            return;
        }
        if (this.f19168d.getCurrentLiveRoom().isMute()) {
            showToast(R.string.livehavemote_self);
        } else {
            new com.tbruyelle.rxpermissions2.a(this).p(MainMenuDialogFragment.f20736c).subscribe(new f(view));
        }
    }

    @OnClick
    @Optional
    public void close(View view) {
        if (getDialog() != null && isAdded() && getDialog().isShowing()) {
            dismissAllowingStateLoss();
        }
    }

    public void e2() {
        post("tokens/live/microphone/getList").I(3).v("liveId", this.f19168d.getCurrentLiveRoom().getLiveRoomId()).v("anchorId", this.f19168d.getCurrentLiveRoom().getBroadCasterUserId()).M(new e());
    }

    public void f2(LiveMessageModel liveMessageModel, boolean z10) {
        LinkMicMessage linkMicMessage = (LinkMicMessage) liveMessageModel.getData();
        String fromUserId = linkMicMessage.getFromUserId();
        if (z10) {
            for (int i9 = 0; i9 < this.f19165a.size(); i9++) {
                if (fromUserId.equals(this.f19165a.get(i9).getUserId())) {
                    return;
                }
            }
            LiveMicApplyList liveMicApplyList = new LiveMicApplyList();
            liveMicApplyList.setUserId(fromUserId);
            liveMicApplyList.setUserAge(String.valueOf(linkMicMessage.getAge()));
            liveMicApplyList.setAvatar(linkMicMessage.getFromUserPendant());
            liveMicApplyList.setImg(linkMicMessage.getFromUserAvatar());
            liveMicApplyList.setSex(String.valueOf(linkMicMessage.getSex()));
            liveMicApplyList.setUserAge(linkMicMessage.getAge());
            liveMicApplyList.setStreamId(linkMicMessage.getStreamId());
            liveMicApplyList.setCountryFlag(linkMicMessage.getFromUserCountryFlag());
            liveMicApplyList.setNickName(linkMicMessage.getFromUserNickName());
            this.f19165a.add(liveMicApplyList);
            m mVar = this.f19166b;
            if (mVar != null) {
                mVar.notifyDataSetChanged();
            }
            showEmptyView();
        } else {
            i2(fromUserId);
        }
        c2();
    }

    public void g2(int i9, LiveMicApplyList liveMicApplyList, String str) {
        if (!TextUtils.isEmpty(str)) {
            int i10 = 0;
            while (true) {
                if (i10 >= this.f19165a.size()) {
                    break;
                } else if (this.f19165a.get(i10).getUserId().equals(str)) {
                    liveMicApplyList = this.f19165a.get(i10);
                    i9 = i10;
                    break;
                } else {
                    i10++;
                }
            }
        }
        if (i9 < 0 || liveMicApplyList == null) {
            return;
        }
        post("tokens/live/microphone/disagree").v("liveId", this.f19168d.getCurrentLiveRoom().getLiveRoomId()).v("streamId", liveMicApplyList.getStreamId()).v("audienceId", liveMicApplyList.getUserId()).I(3).M(new k(liveMicApplyList));
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_apply_conversation_list;
    }

    public void h2(String str) {
        if (str.equals(getCurrentUser().getUserId())) {
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().f();
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().i();
        } else {
            com.guochao.faceshow.aaspring.modulars.live.common.a.m().t(str);
        }
        i2(str);
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        linearLayoutManager.setOrientation(1);
        this.rcvApplyList.setLayoutManager(linearLayoutManager);
        m mVar = new m(this, null);
        this.f19166b = mVar;
        this.rcvApplyList.setAdapter(mVar);
        if (this.f19167c) {
            this.mLiveBtn.setVisibility(0);
            this.bottomLine.setVisibility(8);
        } else {
            this.mLiveBtn.setVisibility(8);
            this.bottomLine.setVisibility(8);
        }
        this.mSwipeRefreshLayout.setOnRefreshListener(new c());
        this.emptyText.setVisibility(8);
        this.emptyView.setOnClickListener(new d());
    }

    public void j2(String str) {
        com.guochao.faceshow.aaspring.modulars.live.common.a.m().t(str);
        List<LiveMicApplyList> list = this.f19165a;
        if (list == null || list.isEmpty() || this.f19166b == null) {
            return;
        }
        i2(str);
    }

    public void k2(boolean z10) {
        if (getParentFragment() instanceof WatcherLiveRoomFragment) {
            z10 = (z10 && !((WatcherLiveRoomFragment) getParentFragment()).Q) && !com.guochao.faceshow.aaspring.modulars.live.common.a.m().o();
        }
        View view = this.mLiveBtn;
        if (view != null) {
            view.setEnabled(z10);
        }
        TextView textView = this.mTextViewLinkMic;
        if (textView != null) {
            if (!z10) {
                textView.setText(R.string.live_has_applied_linkmic);
                this.mTextViewLinkMic.setEnabled(false);
                return;
            }
            textView.setText(R.string.live_apply_linkmic);
            this.mTextViewLinkMic.setEnabled(true);
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
        this.mSwipeRefreshLayout.setRefreshing(false);
        e2();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        d9.g gVar = (d9.g) getParentFragment();
        this.f19168d = gVar;
        this.f19167c = (gVar.getCurrentLiveRoom() == null || this.f19168d.getCurrentLiveRoom().isBroadCaster()) ? false : true;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return createCenterDialog();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public PostRequest post(String str) {
        return super.post(str).P(getParentFragment());
    }
}
