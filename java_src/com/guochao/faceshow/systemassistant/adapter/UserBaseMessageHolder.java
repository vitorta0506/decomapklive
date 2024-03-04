package com.guochao.faceshow.systemassistant.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.systemassistant.data.AssistantMsgResult;
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.utils.TimeUtil;
/* loaded from: classes4.dex */
public class UserBaseMessageHolder extends RecyclerView.ViewHolder {

    /* renamed from: a  reason: collision with root package name */
    RelativeLayout f26372a;

    /* renamed from: b  reason: collision with root package name */
    RelativeLayout f26373b;

    /* renamed from: c  reason: collision with root package name */
    ImageView f26374c;

    /* renamed from: d  reason: collision with root package name */
    View f26375d;

    /* renamed from: e  reason: collision with root package name */
    ImageView f26376e;

    /* renamed from: f  reason: collision with root package name */
    LinearLayout f26377f;

    /* renamed from: g  reason: collision with root package name */
    LinearLayout f26378g;

    /* renamed from: h  reason: collision with root package name */
    ProgressBar f26379h;

    /* renamed from: i  reason: collision with root package name */
    ImageView f26380i;

    /* renamed from: j  reason: collision with root package name */
    TextView f26381j;

    /* renamed from: k  reason: collision with root package name */
    Context f26382k;

    /* renamed from: l  reason: collision with root package name */
    private b f26383l;

    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AssistantMsgResult.MsgData f26384a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f26385b;

        a(AssistantMsgResult.MsgData msgData, int i9) {
            this.f26384a = msgData;
            this.f26385b = i9;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (UserBaseMessageHolder.this.f26383l != null) {
                UserBaseMessageHolder.this.f26383l.a(this.f26384a, this.f26385b);
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(AssistantMsgResult.MsgData msgData, int i9);
    }

    public UserBaseMessageHolder(View view) {
        super(view);
        this.f26375d = view;
        this.f26382k = view.getContext();
        this.f26381j = (TextView) this.f26375d.findViewById(R.id.assistant_show_time);
        this.f26372a = (RelativeLayout) this.f26375d.findViewById(R.id.assistant_chat_text_msg_left_panel);
        this.f26373b = (RelativeLayout) this.f26375d.findViewById(R.id.assistant_chat_text_msg_right_panel);
    }

    private void e(View view) {
        this.f26377f = (LinearLayout) view.findViewById(R.id.assistant_message);
        this.f26374c = (ImageView) view.findViewById(R.id.assistant_message_bg);
        this.f26376e = (ImageView) view.findViewById(R.id.assistant_avatar);
        this.f26378g = (LinearLayout) view.findViewById(R.id.assistant_message_bg_ly);
        this.f26379h = (ProgressBar) view.findViewById(R.id.assistant_sending);
        this.f26380i = (ImageView) view.findViewById(R.id.assistant_send_error);
    }

    public void d(int i9) {
        if (i9 == 1) {
            this.f26379h.setVisibility(0);
            this.f26380i.setVisibility(8);
        } else if (i9 == 3) {
            this.f26379h.setVisibility(8);
            this.f26380i.setVisibility(8);
        } else if (i9 == 2) {
            this.f26379h.setVisibility(8);
            this.f26380i.setVisibility(0);
        }
    }

    public void f(AssistantMsgResult.MsgData msgData, int i9) {
        e(msgData.isSelf ? this.f26373b : this.f26372a);
        fb.a.d(this.f26376e, msgData);
        if (msgData.isSelf) {
            this.f26372a.setVisibility(8);
            this.f26373b.setVisibility(0);
            this.f26374c.setImageDrawable(FaceImageUtils.createDrawable(this.f26382k.getResources().getColor(R.color.color_8DD4FD), ScreenTools.dip2px(8.0f)));
        } else {
            this.f26372a.setVisibility(0);
            this.f26373b.setVisibility(8);
            this.f26374c.setImageDrawable(FaceImageUtils.createDrawable(this.f26382k.getResources().getColor(R.color.colorTextWhite), ScreenTools.dip2px(8.0f)));
        }
        d(msgData.sendStatus);
        this.f26377f.removeAllViews();
        if (!TextUtils.isEmpty(msgData.MsgTimestamp)) {
            this.f26381j.setVisibility(0);
            this.f26381j.setBackground(FaceImageUtils.createDrawable(this.f26382k.getResources().getColor(R.color.black_50), ScreenTools.dip2px(3.0f)));
            if (!TextUtils.isEmpty(msgData.MsgTimestamp)) {
                try {
                    this.f26381j.setText(TimeUtil.getGiftTime(this.f26382k, System.currentTimeMillis() - (Integer.parseInt(msgData.MsgTimestamp) * 1000)));
                } catch (Exception unused) {
                }
            }
        } else {
            this.f26381j.setVisibility(8);
        }
        this.f26380i.setOnClickListener(new a(msgData, i9));
    }

    public void g(b bVar) {
        this.f26383l = bVar;
    }
}
