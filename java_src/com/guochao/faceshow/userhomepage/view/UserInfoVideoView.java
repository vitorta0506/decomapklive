package com.guochao.faceshow.userhomepage.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.BaseConfig;
/* loaded from: classes4.dex */
public class UserInfoVideoView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private LinearLayout f26541a;

    /* renamed from: b  reason: collision with root package name */
    private UserInfoHorizonTitleView f26542b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f26543c;

    /* renamed from: d  reason: collision with root package name */
    private View.OnClickListener f26544d;

    public UserInfoVideoView(Context context) {
        this(context, null);
    }

    private void a() {
        LayoutInflater from = LayoutInflater.from(getContext());
        this.f26543c = from;
        from.inflate(R.layout.user_page_video_info_view, (ViewGroup) this, true);
        this.f26542b = (UserInfoHorizonTitleView) findViewById(R.id.video_info_title_view);
        this.f26541a = (LinearLayout) findViewById(R.id.video_view_show_ly);
        if (BaseConfig.isChinese()) {
            this.f26542b.setTypeText(getResources().getString(R.string.zaime_video_watch));
        } else {
            this.f26542b.setTypeText(getResources().getString(R.string.luxiang));
        }
        this.f26542b.setTypeIcon(R.mipmap.user_stream_info_icon);
    }

    public void setVideoClickListener(View.OnClickListener onClickListener) {
        this.f26544d = onClickListener;
    }

    public UserInfoVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserInfoVideoView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a();
    }
}
