package com.guochao.faceshow.aaspring.modulars.live.viewholder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBean;
import com.guochao.faceshow.aaspring.modulars.user.view.UserCenterSexLevel;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
/* loaded from: classes3.dex */
public class InviteViewHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private UserCenterSexLevel f19904a;

    /* renamed from: b  reason: collision with root package name */
    private InviteBean f19905b;
    @BindView
    ImageView check;
    @BindView
    View topDivider;
    @BindView
    HeadPortraitView userAvatar;
    @BindView
    LinearLayout userGenderAge;
    @BindView
    TextView userName;

    public InviteViewHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_invite, viewGroup, false));
        ButterKnife.c(this, this.itemView);
        UserCenterSexLevel userCenterSexLevel = new UserCenterSexLevel(this.userGenderAge);
        this.f19904a = userCenterSexLevel;
        userCenterSexLevel.b();
    }

    public void c(InviteBean inviteBean, boolean z10, int i9) {
        this.f19905b = inviteBean;
        this.userAvatar.d(inviteBean);
        this.userName.setText(inviteBean.getUserName());
        this.f19904a.d(inviteBean);
        this.check.setSelected(inviteBean.isSelect());
        if (z10) {
            this.check.setSelected(true);
        }
        if (i9 > 0) {
            this.topDivider.setVisibility(8);
        } else {
            this.topDivider.setVisibility(8);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        int id2 = view.getId();
        if (id2 == R.id.user_avatar || id2 == R.id.user_name) {
            UserHomePageAct.start(this.itemView.getContext(), this.f19905b.getCurrentUserId());
        }
    }
}
