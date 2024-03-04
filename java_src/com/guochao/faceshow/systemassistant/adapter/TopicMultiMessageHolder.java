package com.guochao.faceshow.systemassistant.adapter;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.MusicVideoActivity;
import com.guochao.faceshow.aaspring.modulars.ugc.activity.VideoTopicsActivity;
import com.guochao.faceshow.systemassistant.data.AssistantMsgResult;
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.LiveInfoUtils;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.TimeUtil;
import com.guochao.faceshow.web.WebViewActivity;
/* loaded from: classes4.dex */
public class TopicMultiMessageHolder extends RecyclerView.ViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private Context f26360a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f26361b;

    /* renamed from: c  reason: collision with root package name */
    private RelativeLayout f26362c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f26363d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f26364e;

    /* renamed from: f  reason: collision with root package name */
    private ImageView f26365f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f26366g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f26367h;

    /* renamed from: i  reason: collision with root package name */
    private ImageView f26368i;

    /* renamed from: j  reason: collision with root package name */
    private TextView f26369j;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AssistantMsgResult.MsgData f26370a;

        a(AssistantMsgResult.MsgData msgData) {
            this.f26370a = msgData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TopicMultiMessageHolder.this.d(this.f26370a);
        }
    }

    public TopicMultiMessageHolder(View view) {
        super(view);
        this.f26360a = view.getContext();
        this.f26361b = (ImageView) view.findViewById(R.id.assistant_topic_leftAvatar);
        this.f26363d = (ImageView) view.findViewById(R.id.assistant_topic_left_img_bg);
        this.f26362c = (RelativeLayout) view.findViewById(R.id.assistant_topic_left_text_content);
        this.f26364e = (TextView) view.findViewById(R.id.assistant_topic_left_name);
        this.f26365f = (ImageView) view.findViewById(R.id.assistant_topic_left_name_icon);
        this.f26366g = (TextView) view.findViewById(R.id.assistant_topic_left_join_icon);
        this.f26367h = (TextView) view.findViewById(R.id.assistant_topic_left_text);
        this.f26368i = (ImageView) view.findViewById(R.id.assistant_topic_left_img_icon);
        this.f26369j = (TextView) view.findViewById(R.id.assistant_topic_pic_show_time);
        this.f26366g.setBackground(FaceImageUtils.createDrawable(this.f26360a.getResources().getColor(R.color.color_34E4B6), ScreenTools.dip2px(2.0f)));
        this.f26363d.setBackground(this.f26360a.getResources().getDrawable(R.mipmap.assistant_default_img_bg));
        this.f26369j.setBackground(FaceImageUtils.createDrawable(this.f26360a.getResources().getColor(R.color.colorTextWhite), ScreenTools.dip2px(8.0f), 0, 0, ScreenTools.dip2px(8.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(AssistantMsgResult.MsgData msgData) {
        int i9 = msgData.Type;
        if (i9 == 207) {
            LiveInfoUtils.getLiveInfoAndJumpIfNeed(String.valueOf(msgData.Id), this.f26360a);
        } else if (i9 == 205) {
            Intent intent = new Intent(this.f26360a, MusicVideoActivity.class);
            intent.setFlags(268435456);
            intent.putExtra("musicUrl", msgData.Url);
            intent.putExtra("musicId", msgData.Id + "");
            intent.putExtra("titleName", msgData.Name);
            this.f26360a.startActivity(intent);
        } else if (i9 != 204) {
            if (i9 == 208) {
                if (TextUtils.equals("0", msgData.Status)) {
                    WebViewActivity.createBuilder().m(msgData.Url).g(true).k(msgData.Url).a(this.f26360a);
                    return;
                }
                this.f26360a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(msgData.Url)));
            }
        } else {
            Intent intent2 = new Intent(this.f26360a, VideoTopicsActivity.class);
            intent2.setFlags(268435456);
            intent2.putExtra("topic_id", msgData.Id + "");
            intent2.putExtra("titleName", "#" + msgData.Name);
            this.f26360a.startActivity(intent2);
        }
    }

    public void e(AssistantMsgResult.MsgData msgData, int i9) {
        fb.a.d(this.f26361b, msgData);
        this.f26364e.setText(msgData.Name);
        this.f26367h.setText(msgData.Text);
        if (msgData.titleIconResId == -1) {
            this.f26365f.setVisibility(8);
        } else {
            this.f26365f.setVisibility(0);
            this.f26365f.setImageResource(msgData.titleIconResId);
        }
        if (TextUtils.isEmpty(msgData.Image)) {
            this.f26368i.setVisibility(8);
        } else {
            this.f26368i.setVisibility(0);
            hc.a.j(this.f26368i, msgData.Image);
        }
        this.f26362c.setOnClickListener(new a(msgData));
        if (TextUtils.isEmpty(msgData.MsgTimestamp)) {
            return;
        }
        this.f26369j.setVisibility(0);
        if (TextUtils.isEmpty(msgData.MsgTimestamp)) {
            return;
        }
        try {
            this.f26369j.setText(TimeUtil.getGiftTime(this.f26360a, System.currentTimeMillis() - (Integer.parseInt(msgData.MsgTimestamp) * 1000)));
        } catch (Exception unused) {
        }
    }
}
