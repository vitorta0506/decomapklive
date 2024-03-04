package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.text.TextUtils;
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
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.UserNotifyBean;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity;
import com.guochao.faceshow.aaspring.utils.TextViewUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.userhomepage.act.UserHomePageAct;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.TimeUtil;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3.dex */
public class CommentViewHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private UserNotifyBean.ListBean f17149a;
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

    public CommentViewHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_at_me_notifycation, viewGroup, false));
    }

    public void c(UserNotifyBean.ListBean listBean) {
        long j10;
        SimpleDateFormat simpleDateFormat;
        this.f17149a = listBean;
        BaseActivity baseActivity = (BaseActivity) this.itemView.getContext();
        this.userName.setText(TextViewUtils.getSubStr(listBean.getNickName(), -1));
        UserBean userBean = new UserBean();
        userBean.userId = listBean.getUserId();
        userBean.sex = listBean.getSex();
        userBean.img = listBean.getImg();
        userBean.countryFlag = listBean.getCountryFlag();
        userBean.setUserVipMsg(listBean.getUserVipMsg());
        this.userAvatar.d(userBean);
        try {
            if (!BaseConfig.isChinese()) {
                simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("EST5EDT"));
            } else {
                simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINESE);
            }
            j10 = System.currentTimeMillis() - simpleDateFormat.parse(listBean.getCreateTime()).getTime();
        } catch (Exception unused) {
            j10 = 0;
        }
        this.timeHistory.setText(TimeUtil.getForthTimeWithSdf(baseActivity, j10));
        this.bgVideo.setVisibility(8);
        int typeId = listBean.getTypeId();
        if (typeId == 6) {
            TextView textView = this.content;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(baseActivity.getString(R.string.push_notification_setting_comments));
            sb2.append("：");
            sb2.append(listBean.getRefContent() != null ? listBean.getRefContent() : "");
            textView.setText(sb2.toString());
            if (TextUtils.isEmpty(listBean.getVideoImg())) {
                this.iconVideoLay.setVisibility(4);
                this.bgVideo.setVisibility(8);
            } else {
                this.iconVideoLay.setVisibility(0);
                this.bgVideo.setVisibility(0);
                BaseIMListActivity.d0(this.iconVideo, listBean.getVideoImg(), this.bgVideo);
            }
        } else if (typeId == 7) {
            TextView textView2 = this.content;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(baseActivity.getString(R.string.Responded_to_your_comment));
            sb3.append("：");
            sb3.append(listBean.getRefContent() != null ? listBean.getRefContent() : "");
            textView2.setText(sb3.toString());
            if (TextUtils.isEmpty(listBean.getVideoImg())) {
                this.iconVideoLay.setVisibility(4);
                this.bgVideo.setVisibility(8);
            } else {
                this.iconVideoLay.setVisibility(0);
                this.bgVideo.setVisibility(0);
                BaseIMListActivity.d0(this.iconVideo, listBean.getVideoImg(), this.bgVideo);
            }
        } else if (typeId == 9) {
            TextView textView3 = this.content;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(baseActivity.getString(R.string.push_notification_setting_comments));
            sb4.append("：");
            sb4.append(listBean.getRefContent() != null ? listBean.getRefContent() : "");
            textView3.setText(sb4.toString());
            if (TextUtils.isEmpty(listBean.getVideoImg())) {
                if (!TextUtils.isEmpty(listBean.getRefImg())) {
                    this.iconVideoLay.setVisibility(0);
                    BaseIMListActivity.d0(this.iconVideo, listBean.getRefImg(), this.bgVideo);
                    this.bgVideo.setVisibility(8);
                } else {
                    this.iconVideoLay.setVisibility(4);
                }
            } else {
                this.iconVideoLay.setVisibility(0);
                this.bgVideo.setVisibility(0);
                if (TextUtils.isEmpty(listBean.getRefImg())) {
                    BaseIMListActivity.d0(this.iconVideo, listBean.getVideoImg(), this.bgVideo);
                } else {
                    BaseIMListActivity.d0(this.iconVideo, listBean.getRefImg(), this.bgVideo);
                }
            }
        } else if (typeId == 10) {
            TextView textView4 = this.content;
            StringBuilder sb5 = new StringBuilder();
            sb5.append(baseActivity.getString(R.string.Responded_to_your_comment));
            sb5.append("：");
            sb5.append(listBean.getRefContent() != null ? listBean.getRefContent() : "");
            textView4.setText(sb5.toString());
            if (TextUtils.isEmpty(listBean.getVideoImg())) {
                if (!TextUtils.isEmpty(listBean.getRefImg())) {
                    this.iconVideoLay.setVisibility(0);
                    BaseIMListActivity.d0(this.iconVideo, listBean.getRefImg(), this.bgVideo);
                    this.bgVideo.setVisibility(8);
                } else {
                    this.iconVideoLay.setVisibility(4);
                }
            } else {
                this.iconVideoLay.setVisibility(0);
                this.bgVideo.setVisibility(0);
                if (TextUtils.isEmpty(listBean.getRefImg())) {
                    BaseIMListActivity.d0(this.iconVideo, listBean.getVideoImg(), this.bgVideo);
                } else {
                    BaseIMListActivity.d0(this.iconVideo, listBean.getRefImg(), this.bgVideo);
                }
            }
        } else if (typeId == 32) {
            this.content.setText(baseActivity.getString(R.string.Deleted_comments));
            if (TextUtils.isEmpty(listBean.getVideoImg())) {
                this.iconVideoLay.setVisibility(4);
                this.bgVideo.setVisibility(8);
            } else {
                this.iconVideoLay.setVisibility(0);
                this.bgVideo.setVisibility(0);
                BaseIMListActivity.d0(this.iconVideo, listBean.getVideoImg(), this.bgVideo);
            }
        } else if (typeId == 33) {
            this.content.setText(baseActivity.getString(R.string.Deleted_comments));
            if (TextUtils.isEmpty(listBean.getRefImg())) {
                if (!TextUtils.isEmpty(listBean.getVideoImg())) {
                    this.iconVideoLay.setVisibility(0);
                    BaseIMListActivity.d0(this.iconVideo, listBean.getVideoImg(), this.bgVideo);
                    this.bgVideo.setVisibility(0);
                } else {
                    this.iconVideoLay.setVisibility(4);
                }
            } else {
                this.iconVideoLay.setVisibility(0);
                this.bgVideo.setVisibility(8);
                if (TextUtils.isEmpty(listBean.getVideoImg())) {
                    BaseIMListActivity.d0(this.iconVideo, listBean.getRefImg(), this.bgVideo);
                } else {
                    BaseIMListActivity.d0(this.iconVideo, listBean.getVideoImg(), this.bgVideo);
                }
            }
        } else if (typeId != 35) {
            this.iconVideoLay.setVisibility(4);
            this.bgVideo.setVisibility(8);
        } else {
            this.content.setText(baseActivity.getString(R.string.Deleted_the_reply));
            if (TextUtils.isEmpty(listBean.getVideoImg())) {
                if (!TextUtils.isEmpty(listBean.getRefImg())) {
                    this.iconVideoLay.setVisibility(0);
                    BaseIMListActivity.d0(this.iconVideo, listBean.getRefImg(), this.bgVideo);
                    this.bgVideo.setVisibility(8);
                } else {
                    this.iconVideoLay.setVisibility(4);
                }
            } else {
                this.iconVideoLay.setVisibility(0);
                this.bgVideo.setVisibility(0);
                if (TextUtils.isEmpty(listBean.getRefImg())) {
                    BaseIMListActivity.d0(this.iconVideo, listBean.getVideoImg(), this.bgVideo);
                } else {
                    BaseIMListActivity.d0(this.iconVideo, listBean.getRefImg(), this.bgVideo);
                }
            }
        }
        if (listBean.getIsLiveDynamic() == 1) {
            this.bgVideo.setVisibility(0);
            this.bgVideo.setImageResource(R.mipmap.icon_im_live);
            if (TextUtils.isEmpty(listBean.getLiveDynamicUrl())) {
                this.iconVideoLay.setVisibility(4);
                return;
            }
            this.iconVideoLay.setVisibility(0);
            BaseIMListActivity.d0(this.iconVideo, listBean.getLiveDynamicUrl(), this.bgVideo);
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.avatar_view /* 2131362045 */:
            case R.id.user_name /* 2131365317 */:
            case R.id.user_name_lay /* 2131365318 */:
                if (this.f17149a != null) {
                    UserHomePageAct.start(view.getContext(), this.f17149a.getUserId());
                    return;
                }
                return;
            default:
                return;
        }
    }
}
