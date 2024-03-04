package com.guochao.faceshow.aaspring.modulars.live.viewholder.watcher;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LiveInfoMatchBean;
import com.guochao.faceshow.aaspring.modulars.live.common.BaseLiveRoomFragment;
import com.guochao.faceshow.aaspring.modulars.live.common.LivePeopleInfoCardFragment;
import com.guochao.faceshow.aaspring.modulars.live.interfaces.LiveRoomModel;
import com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder;
import com.guochao.faceshow.aaspring.views.AvatarGroupView;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.DensityUtil;
import hc.a;
import java.util.Objects;
/* loaded from: classes3.dex */
public class SubBroadCasterInfoMaskViewHolder extends BaseLiveRoomHolder implements View.OnClickListener {

    /* renamed from: f  reason: collision with root package name */
    LiveRoomModel f19938f;

    /* renamed from: g  reason: collision with root package name */
    private BaseLiveRoomFragment f19939g;
    @BindView
    ImageView ivNothing;
    @BindView
    AvatarGroupView mAvatarGroupView;
    @BindView
    ImageView mBroadcasterIcon;
    @BindView
    TextView mTextViewFcoins;
    @BindView
    TextView mTextViewIndex;
    @BindView
    TextView mTextViewUserName;

    public SubBroadCasterInfoMaskViewHolder(BaseLiveRoomFragment baseLiveRoomFragment, View view) {
        super(baseLiveRoomFragment, view);
        if (baseLiveRoomFragment.getContext() == null) {
            return;
        }
        this.f19939g = baseLiveRoomFragment;
        view.setOnClickListener(this);
    }

    @OnClick
    public void clickUserName(View view) {
        BaseLiveRoomFragment baseLiveRoomFragment = this.f19916a;
        if (baseLiveRoomFragment == null || !baseLiveRoomFragment.isAdded() || this.f19918c == null) {
            return;
        }
        LivePeopleInfoCardFragment.showPeopleInfo(this.f19916a.getChildFragmentManager(), this.f19918c.getCurrentUserId(), this.f19918c.getUserNickName());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void d(LiveRoomModel liveRoomModel) {
        super.d(liveRoomModel);
        this.f19938f = liveRoomModel;
        this.mTextViewUserName.setText(liveRoomModel.getUserNickName());
        TextView textView = this.mTextViewFcoins;
        textView.setText(liveRoomModel.getFCoinCount() + "");
        String countryFlag = liveRoomModel.getCountryFlag();
        if (BaseConfig.isChinese()) {
            getView(R.id.country_flag).setVisibility(8);
        } else {
            a.h((ImageView) getView(R.id.country_flag), countryFlag, R.mipmap.ic_earth);
        }
        if (liveRoomModel instanceof LiveInfoMatchBean) {
            LiveInfoMatchBean liveInfoMatchBean = (LiveInfoMatchBean) liveRoomModel;
            if (liveInfoMatchBean.getRichList() != null && liveInfoMatchBean.getRichList().size() > 0) {
                this.mAvatarGroupView.setVisibility(0);
                this.ivNothing.setVisibility(0);
                this.mAvatarGroupView.setAvatarList(liveInfoMatchBean.getRichList());
                if (liveInfoMatchBean.getRichList().size() >= 3) {
                    this.ivNothing.setVisibility(8);
                } else {
                    this.ivNothing.setVisibility(0);
                }
            } else {
                this.ivNothing.setVisibility(0);
                this.mAvatarGroupView.setVisibility(8);
            }
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) ((ImageView) getView(R.id.country_flag)).getLayoutParams();
        BaseLiveRoomFragment baseLiveRoomFragment = this.f19939g;
        if (baseLiveRoomFragment != null && baseLiveRoomFragment.getCurrentLiveRoom() != null && Objects.equals(this.f19939g.getCurrentLiveRoom().getBroadCasterUserId(), liveRoomModel.getCurrentUserId())) {
            this.mBroadcasterIcon.setVisibility(0);
            this.mTextViewIndex.setVisibility(8);
            marginLayoutParams.setMarginStart(DensityUtil.dp2px(5.0f));
            return;
        }
        this.mBroadcasterIcon.setVisibility(8);
        this.mTextViewIndex.setVisibility(0);
        marginLayoutParams.setMarginStart(DensityUtil.dp2px(3.0f));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void e(LiveRoomModel liveRoomModel, long j10) {
        super.e(liveRoomModel, j10);
        this.f19938f = liveRoomModel;
        if (!Objects.equals(this.mTextViewUserName.getText().toString(), this.f19938f.getUserNickName())) {
            this.mTextViewUserName.setText(this.f19938f.getUserNickName());
        }
        if (!Objects.equals(String.valueOf(this.f19938f.getFCoinCount()), this.mTextViewFcoins.getText().toString())) {
            this.mTextViewFcoins.setText(String.valueOf(this.f19938f.getFCoinCount()));
        }
        String countryFlag = this.f19938f.getCountryFlag();
        if (BaseConfig.isChinese()) {
            getView(R.id.country_flag).setVisibility(8);
        } else if (!TextUtils.isEmpty(countryFlag)) {
            a.h((ImageView) getView(R.id.country_flag), countryFlag, R.mipmap.ic_earth);
        }
        LiveRoomModel liveRoomModel2 = this.f19938f;
        if (liveRoomModel2 instanceof LiveInfoMatchBean) {
            LiveInfoMatchBean liveInfoMatchBean = (LiveInfoMatchBean) liveRoomModel2;
            if (liveInfoMatchBean.getRichList() != null && liveInfoMatchBean.getRichList().size() > 0) {
                this.mAvatarGroupView.setVisibility(0);
                this.mAvatarGroupView.setAvatarList(liveInfoMatchBean.getRichList());
                return;
            }
            this.mAvatarGroupView.setVisibility(8);
            this.mAvatarGroupView.setVisibility(8);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void h(int i9) {
        super.h(i9);
        TextView textView = this.mTextViewIndex;
        StringBuilder sb2 = new StringBuilder();
        int i10 = i9 + 1;
        sb2.append(i10);
        sb2.append("");
        textView.setText(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("setIndex: ");
        sb3.append(i10);
        LiveRoomModel liveRoomModel = this.f19918c;
        sb3.append(liveRoomModel != null ? liveRoomModel.getUserNickName() : "无昵称");
        Log.i("LiveRoom", sb3.toString());
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.viewholder.common.BaseLiveRoomHolder
    public void l(LiveRoomModel liveRoomModel) {
        super.l(liveRoomModel);
        if (liveRoomModel == null || liveRoomModel.getFCoinCount() < 0) {
            return;
        }
        this.mTextViewFcoins.setText(String.valueOf(liveRoomModel.getFCoinCount()));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @OnClick
    public void showRichBox(View view) {
        LiveRoomModel liveRoomModel = this.f19938f;
        if (liveRoomModel == null || this.f19916a == null || TextUtils.isEmpty(liveRoomModel.getCurrentUserId()) || TextUtils.isEmpty(this.f19916a.getCurrentLiveRoom().getLiveRoomId())) {
            return;
        }
        this.f19916a.k3(this.f19938f.getCurrentUserId(), this.f19916a.getCurrentLiveRoom().getLiveRoomId());
    }
}
