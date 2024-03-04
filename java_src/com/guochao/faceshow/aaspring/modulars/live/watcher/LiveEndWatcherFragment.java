package com.guochao.faceshow.aaspring.modulars.live.watcher;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import b8.e;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.beans.RoomItemDetail;
import com.guochao.faceshow.aaspring.modulars.live.activity.WatchLiveRoomActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.utils.FriendFromSource;
import com.guochao.faceshow.aaspring.utils.StatusBarHelper;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.signin.SigninManager;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3.dex */
public class LiveEndWatcherFragment extends BaseLiveInfoFragment {

    /* renamed from: a  reason: collision with root package name */
    private boolean f19982a;

    /* renamed from: b  reason: collision with root package name */
    RoomItemDetail f19983b;

    /* renamed from: c  reason: collision with root package name */
    View[] f19984c;
    @BindView
    TextView endTitle;
    @BindView
    HeadPortraitView mAvatarView;
    @BindView
    TextView mFoucesView;
    @BindView
    View mRecommendView;
    @BindView
    TextView mTextViewFCoinAdded;
    @BindView
    TextView mTextViewFansAdded;
    @BindView
    TextView mTextViewLiveTotalPeople;
    @BindView
    TextView mTextViewUserName;

    /* loaded from: classes3.dex */
    class a extends com.guochao.faceshow.aaspring.base.http.callback.c<RoomItemDetail> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f19985a;

        a(View view) {
            this.f19985a = view;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable RoomItemDetail roomItemDetail, @NonNull FaceCastBaseResponse<RoomItemDetail> faceCastBaseResponse) {
            LiveEndWatcherFragment liveEndWatcherFragment = LiveEndWatcherFragment.this;
            liveEndWatcherFragment.f19983b = roomItemDetail;
            liveEndWatcherFragment.R1(this.f19985a);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<RoomItemDetail> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f19987a;

        b(int i9) {
            this.f19987a = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RoomItemDetail roomItemDetail = LiveEndWatcherFragment.this.f19983b;
            if (roomItemDetail == null || roomItemDetail.getRecommend() == null || LiveEndWatcherFragment.this.f19983b.getRecommend().getRoomList() == null || !(LiveEndWatcherFragment.this.getActivity() instanceof WatchLiveRoomActivity)) {
                return;
            }
            ((WatchLiveRoomActivity) LiveEndWatcherFragment.this.getActivity()).B1(LiveEndWatcherFragment.this.f19983b.getRecommend().getRoomList().get(this.f19987a));
        }
    }

    /* loaded from: classes3.dex */
    class c implements hb.b<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f19989a;

        c(View view) {
            this.f19989a = view;
        }

        @Override // hb.b
        /* renamed from: a */
        public void onFail(String str) {
            hb.a.a(this, str);
            if (LiveEndWatcherFragment.this.isDetached() || !LiveEndWatcherFragment.this.isAdded()) {
                return;
            }
            this.f19989a.setEnabled(true);
            LiveEndWatcherFragment.this.mFoucesView.setText(R.string.focus);
        }

        @Override // hb.b
        /* renamed from: b */
        public void onResponse(String str) {
        }
    }

    public static LiveEndWatcherFragment Q1(RoomItemDetail roomItemDetail, boolean z10) {
        LiveEndWatcherFragment liveEndWatcherFragment = new LiveEndWatcherFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("data", roomItemDetail);
        bundle.putBoolean("isPrivateLimit", z10);
        liveEndWatcherFragment.setArguments(bundle);
        return liveEndWatcherFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R1(View view) {
        if (getActivity() == null) {
            return;
        }
        RoomItemDetail roomItemDetail = this.f19983b;
        if (roomItemDetail != null && roomItemDetail.getLiveInfo() != null) {
            RoomItemData liveInfo = this.f19983b.getLiveInfo();
            this.mAvatarView.d(liveInfo);
            if (this.f19982a) {
                this.endTitle.setTextColor(ContextCompat.getColor(getContext(), R.color.color_ugc_app_tips));
                this.endTitle.setText(R.string.private_live_limit_title);
            } else {
                this.endTitle.setTextColor(ContextCompat.getColor(getContext(), R.color.white));
                if (liveInfo.getIsBack() == 1) {
                    this.endTitle.setText(getString(R.string.minigame_end_live_title));
                } else {
                    this.endTitle.setText(getString(R.string.live_over_title));
                    SigninManager.INSTANCE.releaseWatchLiveListener();
                }
            }
            this.mAvatarView.d(liveInfo);
            TextView textView = this.mTextViewFCoinAdded;
            Object[] objArr = new Object[1];
            objArr[0] = liveInfo.getFcoin() == null ? "0" : Formatter.getFormat(liveInfo.getFcoin());
            textView.setText(String.format("+%s", objArr));
            this.mTextViewLiveTotalPeople.setText(Formatter.getFormat(liveInfo.getOnlineNum()));
            TextView textView2 = this.mTextViewFansAdded;
            Object[] objArr2 = new Object[1];
            objArr2[0] = liveInfo.getFansNum() != null ? Formatter.getFormat(liveInfo.getFansNum()) : "0";
            textView2.setText(String.format("+%s", objArr2));
            this.mTextViewUserName.setText(liveInfo.getUserNickName());
            if (!"1".equals(this.f19983b.getLiveInfo().getIsAttention()) && !Objects.equals(this.f19983b.getLiveInfo().getBroadCasterUserId(), e.g().getUserId())) {
                view.findViewById(R.id.focus).setVisibility(0);
            } else {
                view.findViewById(R.id.focus).setVisibility(4);
            }
        }
        RoomItemDetail roomItemDetail2 = this.f19983b;
        if (roomItemDetail2 == null || roomItemDetail2.getRecommend() == null) {
            return;
        }
        S1(this.f19983b.getRecommend().getRoomList());
    }

    private void S1(List<RoomItemData> list) {
        if (list != null && !list.isEmpty()) {
            this.mRecommendView.setVisibility(0);
            int min = Math.min(3, list.size());
            for (int i9 = 0; i9 < min; i9++) {
                this.f19984c[i9].setVisibility(0);
                T1(this.f19984c[i9], list.get(i9));
                this.f19984c[i9].setOnClickListener(new b(i9));
            }
            return;
        }
        this.mRecommendView.setVisibility(4);
    }

    private void T1(View view, RoomItemData roomItemData) {
        ImageView imageView = (ImageView) view.findViewById(R.id.icon_multi);
        ((AnimationDrawable) ((ImageView) view.findViewById(R.id.img_gif)).getDrawable()).start();
        hc.a.h((ImageView) view.findViewById(R.id.image), roomItemData.getLiveCoverImg(), R.mipmap.icon_live_liveloading);
        ((TextView) view.findViewById(R.id.tvOnlineCount)).setText("" + roomItemData.getOnlineNum());
        if (roomItemData.isMultiLiveRoom()) {
            imageView.setVisibility(0);
            imageView.setImageResource(R.mipmap.icon_zb_mark);
            return;
        }
        imageView.setImageResource(R.mipmap.pk_mark);
        if (roomItemData.isInPkMode()) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
    }

    @OnClick
    public void close(View view) {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    @OnClick
    public void focus(View view) {
        this.mFoucesView.setText(R.string.focused);
        view.setEnabled(false);
        RoomItemDetail roomItemDetail = this.f19983b;
        ib.b.b((roomItemDetail == null || roomItemDetail.getLiveInfo() == null) ? this.mILiveRoomManager.getCurrentLiveRoom().getBroadCasterUserId() : this.f19983b.getLiveInfo().getBroadCasterUserId(), FriendFromSource.LIVE, getActivity(), new c(view));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_live_watcher_info;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        super.initView(view);
        View[] viewArr = new View[3];
        this.f19984c = viewArr;
        viewArr[0] = view.findViewById(R.id.item1);
        this.f19984c[1] = view.findViewById(R.id.item2);
        this.f19984c[2] = view.findViewById(R.id.item3);
        this.mFoucesView.setText(String.format("+ %s", getResources().getString(R.string.focus)));
        this.mAvatarView.d(getCurrentLiveRoom());
        this.mTextViewUserName.setText(getCurrentLiveRoom().getUserNickName());
        hc.a.t((ImageView) view.findViewById(R.id.background), getCurrentLiveRoom().getLiveCoverImg(), R.mipmap.live_loading_bj);
        if (getActivity() != null && (getParentFragment() instanceof BaseLiveRoomFragment)) {
            ((BaseLiveRoomFragment) getParentFragment()).s2(getActivity().getSupportFragmentManager());
        }
        RoomItemDetail roomItemDetail = this.f19983b;
        if (roomItemDetail != null && roomItemDetail.getLiveInfo() != null && "1".equals(this.f19983b.getLiveInfo().getStatus()) && this.f19983b.getRecommend() != null) {
            R1(view);
        } else {
            get("tokens/live/newLive/findEndLiveMsg").v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("startTime", getCurrentLiveRoom().getLiveStartTimestamp()).M(new a(view));
        }
        View findViewById = view.findViewById(R.id.close);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) findViewById.getLayoutParams();
        marginLayoutParams.topMargin = DensityUtil.dp2px(8.0f) + StatusBarHelper.getStatusbarHeight(getActivity());
        findViewById.setLayoutParams(marginLayoutParams);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        if (getArguments() != null) {
            this.f19983b = (RoomItemDetail) getArguments().getParcelable("data");
            this.f19982a = getArguments().getBoolean("isPrivateLimit", false);
        }
    }

    @OnClick
    public void toUserHome(View view) {
        FragmentActivity activity = getActivity();
        RoomItemDetail roomItemDetail = this.f19983b;
        UserHomePageAct.start((Activity) activity, (roomItemDetail == null || roomItemDetail.getLiveInfo() == null) ? getCurrentLiveRoom().getBroadCasterUserId() : this.f19983b.getLiveInfo().getBroadCasterUserId(), 1);
    }
}
