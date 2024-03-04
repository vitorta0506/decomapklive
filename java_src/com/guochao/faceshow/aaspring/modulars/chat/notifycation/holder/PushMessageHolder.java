package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.PushMessageBean;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.views.NormalCircleImageView;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes3.dex */
public class PushMessageHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private PushMessageBean.ListBean f17186a;
    @BindView
    NormalCircleImageView cv;
    @BindView
    TextView expand;
    @BindView
    TextView introduce;
    @BindView
    TextView tvName;
    @BindView
    TextView tvTime;

    public PushMessageHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_push_message, viewGroup, false));
    }

    public void c(PushMessageBean.ListBean listBean) {
        long j10;
        if (listBean == null) {
            return;
        }
        this.f17186a = listBean;
        this.cv.setImageResource(R.mipmap.icon_im_system);
        if (!TextUtils.isEmpty(listBean.getNickName())) {
            this.tvName.setText(listBean.getNickName());
        } else {
            this.tvName.setText("");
        }
        this.tvName.setMaxWidth(ScreenTools.getScreenWidth() / 2);
        String content = listBean.getContent();
        if (!TextUtils.isEmpty(content)) {
            this.introduce.setVisibility(0);
            this.introduce.setText(content);
        } else {
            this.introduce.setVisibility(8);
        }
        try {
            j10 = System.currentTimeMillis() - new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.CHINA).parse(listBean.getCreateTime()).getTime();
        } catch (Exception unused) {
            j10 = 0;
        }
        if (listBean.createTimeLong > 0) {
            TextView textView = this.tvTime;
            textView.setText(TimeUtil.getGiftTime(textView.getContext(), System.currentTimeMillis() - listBean.createTimeLong));
            return;
        }
        TextView textView2 = this.tvTime;
        textView2.setText(TimeUtil.getGiftTime(textView2.getContext(), j10));
    }
}
