package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.UserNotifyBean;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
/* loaded from: classes3.dex */
public class AtMeViewHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private UserNotifyBean.ListBean f17124a;
    @BindView
    ImageView bgVideo;
    @BindView
    TextView content;
    @BindView
    ImageView iconVideo;
    @BindView
    FrameLayout iconVideoLay;
    @BindView
    TextView timeHistory;
    @BindView
    HeadPortraitView userAvatar;
    @BindView
    TextView userName;
    @BindView
    LinearLayout userNameLay;

    public AtMeViewHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_at_me_notifycation, viewGroup, false));
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(com.guochao.faceshow.aaspring.beans.UserNotifyBean.ListBean r7) {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder.AtMeViewHolder.c(com.guochao.faceshow.aaspring.beans.UserNotifyBean$ListBean):void");
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.avatar_view /* 2131362045 */:
            case R.id.user_name /* 2131365317 */:
            case R.id.user_name_lay /* 2131365318 */:
                if (this.f17124a != null) {
                    UserHomePageAct.start(view.getContext(), this.f17124a.getUserId());
                    return;
                }
                return;
            default:
                return;
        }
    }
}
