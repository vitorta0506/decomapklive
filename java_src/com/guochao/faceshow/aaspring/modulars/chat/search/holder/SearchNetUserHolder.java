package com.guochao.faceshow.aaspring.modulars.chat.search.holder;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.SearchUserNameOrIdBean;
import com.guochao.faceshow.aaspring.utils.SpanColorUtils;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes3.dex */
public class SearchNetUserHolder extends BaseViewHolder {
    @BindView
    HeadPortraitView avatarBg;
    @BindView
    TextView userName;
    @BindView
    TextView userSign;
    @BindView
    VipIndicatorView vipIndicator;

    public SearchNetUserHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_im_net_user, viewGroup, false));
    }

    public void c(SearchUserNameOrIdBean searchUserNameOrIdBean, String str) {
        BaseActivity baseActivity = (BaseActivity) this.itemView.getContext();
        this.userName.setText(searchUserNameOrIdBean.getUserNickName());
        SpanColorUtils.setSpannerString(this.userName, str, ContextCompat.getColor(baseActivity, R.color.color_app_primary));
        this.userSign.setText(TextUtils.isEmpty(searchUserNameOrIdBean.getUserSignature()) ? this.itemView.getContext().getString(R.string.user_info_default_signature) : searchUserNameOrIdBean.getUserSignature());
        SpanColorUtils.setSpannerString(this.userSign, str, ContextCompat.getColor(baseActivity, R.color.color_app_primary));
        this.avatarBg.f(searchUserNameOrIdBean, true);
        if (searchUserNameOrIdBean.getUserVipMsg() != null) {
            this.vipIndicator.setVisibility(0);
            this.vipIndicator.setVipLevel(searchUserNameOrIdBean.getUserVipMsg().getIsVip());
            return;
        }
        this.vipIndicator.setVisibility(8);
    }
}
