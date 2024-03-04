package com.guochao.faceshow.systemassistant.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.TopicHomePageActivity;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.StringUtils;
import com.guochao.faceshow.systemassistant.data.AssistantMsgResult;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.PushUtils;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.web.WebViewActivity;
/* loaded from: classes4.dex */
public class BigPicMessageHolder extends RecyclerView.ViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private Context f26352a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f26353b;

    /* renamed from: c  reason: collision with root package name */
    private RelativeLayout f26354c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f26355d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f26356e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f26357f;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AssistantMsgResult.MsgData f26358a;

        a(AssistantMsgResult.MsgData msgData) {
            this.f26358a = msgData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AssistantMsgResult.MsgData msgData = this.f26358a;
            int i9 = msgData.Type;
            if (i9 == 323) {
                int i10 = msgData.PartakeTimes;
                String valueOf = String.valueOf(msgData.Id);
                String str = this.f26358a.Name;
                UgcTopicBean ugcTopicBean = new UgcTopicBean();
                ugcTopicBean.setPartakeTimes(i10);
                ugcTopicBean.setTopicId(valueOf);
                ugcTopicBean.setTopicName(str);
                TopicHomePageActivity.r0(view.getContext(), ugcTopicBean);
            } else if (i9 == 324) {
                PushUtils.playVideo(view.getContext(), String.valueOf(this.f26358a.Id), String.valueOf(this.f26358a.UserId), true);
            } else {
                WebViewActivity.createBuilder().m(this.f26358a.URL + StringUtils.getUrlFromType() + SpUtils.getStr(BigPicMessageHolder.this.f26352a, Contants.USER_TOKEN)).g(this.f26358a.shareable).k(this.f26358a.URL).a(BigPicMessageHolder.this.f26352a);
            }
        }
    }

    public BigPicMessageHolder(View view) {
        super(view);
        this.f26352a = view.getContext();
        this.f26353b = (TextView) view.findViewById(R.id.assistant_pic_show_time);
        this.f26354c = (RelativeLayout) view.findViewById(R.id.assistant_pic_leftPanel);
        this.f26355d = (ImageView) view.findViewById(R.id.assistant_pic_leftAvatar);
        this.f26356e = (ImageView) view.findViewById(R.id.assistant_pic_left_img);
        this.f26357f = (TextView) view.findViewById(R.id.titleTV);
    }

    public void d(AssistantMsgResult.MsgData msgData, int i9) {
        fb.a.d(this.f26355d, msgData);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f26356e.getLayoutParams();
        layoutParams.width = ScreenTools.dip2px(250.0f);
        layoutParams.height = (int) ((Math.max(msgData.ImageHeight, 1.0f) * layoutParams.width) / Math.max(msgData.ImageWidth, 1.0f));
        this.f26356e.setLayoutParams(layoutParams);
        hc.a.h(this.f26356e, msgData.Image, R.mipmap.assistant_default_img_bg);
        if (!TextUtils.isEmpty(msgData.Text)) {
            this.f26357f.setText(msgData.Text);
        }
        this.f26356e.setOnClickListener(new a(msgData));
        if (!TextUtils.isEmpty(msgData.MsgTimestamp)) {
            this.f26353b.setVisibility(0);
            this.f26353b.setBackground(FaceImageUtils.createDrawable(this.f26352a.getResources().getColor(R.color.black_50), ScreenTools.dip2px(3.0f)));
            if (TextUtils.isEmpty(msgData.MsgTimestamp)) {
                return;
            }
            try {
                this.f26353b.setText(TimeUtil.getGiftTime(this.f26352a, System.currentTimeMillis() - (Integer.parseInt(msgData.MsgTimestamp) * 1000)));
                return;
            } catch (Exception unused) {
                return;
            }
        }
        this.f26353b.setVisibility(8);
    }
}
