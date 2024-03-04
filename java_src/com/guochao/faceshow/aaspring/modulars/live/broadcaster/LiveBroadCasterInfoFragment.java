package com.guochao.faceshow.aaspring.modulars.live.broadcaster;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveOverResult;
import com.guochao.faceshow.aaspring.modulars.live.activity.LiveBroadCastActivity;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.utils.Formatter;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.TimeUtil;
/* loaded from: classes3.dex */
public class LiveBroadCasterInfoFragment extends BaseLiveInfoFragment {
    @BindView
    HeadPortraitView mAvatarView;
    @BindView
    View mBackButton;
    @BindView
    View mCloseView;
    @BindView
    ImageView mImageViewBackground;
    @BindView
    TextView mTextViewFCoinAdded;
    @BindView
    TextView mTextViewFansAdded;
    @BindView
    TextView mTextViewLiveCount;
    @BindView
    TextView mTextViewLiveDuration;
    @BindView
    TextView mTextViewLiveTotalPeople;
    @BindView
    TextView mTextViewTitle;
    @BindView
    TextView mTextViewUserName;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<LiveOverResult> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<LiveOverResult> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable LiveOverResult liveOverResult, @NonNull FaceCastBaseResponse<LiveOverResult> faceCastBaseResponse) {
            if (LiveBroadCasterInfoFragment.this.getActivity() instanceof LiveBroadCastActivity) {
                ((LiveBroadCastActivity) LiveBroadCasterInfoFragment.this.getActivity()).A0(liveOverResult);
            }
            if (liveOverResult != null) {
                TextView textView = LiveBroadCasterInfoFragment.this.mTextViewFCoinAdded;
                Object[] objArr = new Object[1];
                objArr[0] = liveOverResult.getFcoin() == null ? "0" : Formatter.getFormat(liveOverResult.getFcoin());
                textView.setText(String.format("+%s", objArr));
                LiveBroadCasterInfoFragment.this.mTextViewLiveTotalPeople.setText(liveOverResult.getWatchNum() == null ? "0" : Formatter.getFormat(liveOverResult.getWatchNum()));
                TextView textView2 = LiveBroadCasterInfoFragment.this.mTextViewFansAdded;
                Object[] objArr2 = new Object[1];
                objArr2[0] = liveOverResult.getFansNum() != null ? Formatter.getFormat(liveOverResult.getFansNum()) : "0";
                textView2.setText(String.format("+%s", objArr2));
                if (!TextUtils.isEmpty(liveOverResult.getLiveTime())) {
                    LiveBroadCasterInfoFragment.this.mTextViewLiveDuration.setText(TimeUtil.timeToString(Long.parseLong(liveOverResult.getLiveTime()), true));
                }
                LiveBroadCasterInfoFragment.this.mTextViewLiveCount.setText(liveOverResult.getTimes() == null ? "1" : Formatter.getFormat(liveOverResult.getTimes()));
            }
        }
    }

    public void P1() {
        Q1(1);
    }

    public void Q1(int i9) {
        post("tokens/live/newLive/finishLive").v("liveId", getCurrentLiveRoom().getLiveRoomId()).v("type", Integer.valueOf(i9)).M(new a());
    }

    public void R1() {
        Q1(2);
        this.mTextViewTitle.setText(R.string.live_over_title);
        this.mBackButton.setVisibility(0);
        this.mCloseView.setVisibility(8);
        hc.a.u(this.mImageViewBackground, getCurrentLiveRoom().getLiveCoverImg(), true, R.mipmap.live_loading_bj);
        if (getActivity() == null || !(getParentFragment() instanceof BaseLiveRoomFragment)) {
            return;
        }
        ((BaseLiveRoomFragment) getParentFragment()).s2(getActivity().getSupportFragmentManager());
    }

    @OnClick
    public void backToHome(View view) {
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    @OnClick
    public void close(View view) {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof BroadCastFragment) {
            ((BroadCastFragment) parentFragment).h5();
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public int getLayoutId() {
        return R.layout.fragment_live_broadcaster_info;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void initView(View view) {
        this.mAvatarView.d(getCurrentUser());
        this.mTextViewUserName.setText(getCurrentLiveRoom().getUserNickName());
        this.mTextViewFCoinAdded.setText("0");
        this.mTextViewLiveCount.setText("0");
        this.mTextViewLiveTotalPeople.setText("0");
        this.mTextViewFansAdded.setText("0");
        this.mTextViewLiveDuration.setText("00:00");
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveInfoFragment, com.guochao.faceshow.aaspring.base.fragment.BaseFragment
    public void loadData() {
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @OnClick
    public void toUserHome(View view) {
        UserHomePageAct.start((Activity) getActivity(), getCurrentLiveRoom().getBroadCasterUserId(), 1);
    }
}
