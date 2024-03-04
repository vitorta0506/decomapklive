package com.guochao.faceshow.aaspring.modulars.onevone.history;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.OneVOneHistoryBean;
import com.guochao.faceshow.aaspring.views.AgeAndSexView;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.LevelView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.utils.Tool;
/* loaded from: classes3.dex */
public class OneVOneHistoryHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private OneVOneHistoryBean.ListBean f20954a;
    @BindView
    TextView chatTime;
    @BindView
    HeadPortraitView ivHeaderImg;
    @BindView
    LevelView levelView;
    @BindView
    TextView tvMatchNum;
    @BindView
    TextView tvReceiveGift;
    @BindView
    TextView tvSendGift;
    @BindView
    TextView tvTotalTime;
    @BindView
    AgeAndSexView userGenderAge;
    @BindView
    TextView userName;
    @BindView
    VipIndicatorView vipIndicatorView;

    public OneVOneHistoryHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_history_onevone, viewGroup, false));
        ButterKnife.c(this, this.itemView);
    }

    public void c(OneVOneHistoryBean.ListBean listBean, int i9) {
        this.f20954a = listBean;
        UserBean userBean = new UserBean();
        userBean.userId = String.valueOf(listBean.getUser_id());
        userBean.sex = listBean.getSex();
        userBean.img = listBean.getImg();
        userBean.countryFlag = listBean.getLogo();
        userBean.setUserVipMsg(listBean.getAccountUserVipMsg());
        this.ivHeaderImg.d(userBean);
        if (userBean.getUserVipMsg() != null) {
            this.vipIndicatorView.setVipLevel(userBean.getUserVipMsg().getIsVip());
        }
        this.userName.setText(listBean.getNick_name());
        this.userGenderAge.b(listBean.getSex(), listBean.getAge());
        this.levelView.setLevel(listBean.getLevelId());
        Tool.timeString(String.valueOf(listBean.getEnd_time()), this.chatTime, this.itemView.getContext());
        this.tvTotalTime.setText(TimeUtil.getTotalTime(listBean.getAllTime()));
        if (listBean.getStotalgiftPrice() < 0) {
            TextView textView = this.tvReceiveGift;
            textView.setText("-" + listBean.getStotalgiftPrice());
        } else if (listBean.getStotalgiftPrice() == 0) {
            TextView textView2 = this.tvReceiveGift;
            textView2.setText(listBean.getStotalgiftPrice() + "");
        } else {
            TextView textView3 = this.tvReceiveGift;
            textView3.setText("+" + listBean.getStotalgiftPrice());
        }
        if (listBean.getZtotalgiftPrice() == 0) {
            TextView textView4 = this.tvSendGift;
            textView4.setText(listBean.getZtotalgiftPrice() + "");
        } else {
            TextView textView5 = this.tvSendGift;
            textView5.setText("-" + listBean.getZtotalgiftPrice());
        }
        this.tvMatchNum.setText(String.format(this.itemView.getContext().getString(R.string.times_count), String.valueOf(listBean.getNum())));
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() == R.id.iv_header_img && this.f20954a != null) {
            Intent intent = new Intent(this.itemView.getContext(), UserHomePageAct.class);
            intent.putExtra(Contants.USER_ID, String.valueOf(this.f20954a.getUser_id()));
            this.itemView.getContext().startActivity(intent);
        }
    }

    public OneVOneHistoryHolder(View view) {
        super(view);
        ButterKnife.c(this, view);
    }
}
