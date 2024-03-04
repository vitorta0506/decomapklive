package com.guochao.faceshow.userhomepage.view;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.personal.b;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.ScreenTools;
/* loaded from: classes4.dex */
public class UserFocusOnlineView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private LinearLayout f26475a;

    /* renamed from: b  reason: collision with root package name */
    private LinearLayout f26476b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f26477c;

    /* renamed from: d  reason: collision with root package name */
    private LayoutInflater f26478d;

    /* renamed from: e  reason: collision with root package name */
    private View f26479e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f26480f;

    /* renamed from: g  reason: collision with root package name */
    private TextView f26481g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f26482h;

    /* renamed from: i  reason: collision with root package name */
    private ImageView f26483i;

    public UserFocusOnlineView(Context context) {
        this(context, null);
    }

    private void a() {
        LayoutInflater from = LayoutInflater.from(getContext());
        this.f26478d = from;
        from.inflate(R.layout.user_page_focus_online_view, (ViewGroup) this, true);
        this.f26483i = (ImageView) findViewById(R.id.iv_like);
        this.f26475a = (LinearLayout) findViewById(R.id.user_page_focus);
        this.f26476b = (LinearLayout) findViewById(R.id.user_page_online);
        this.f26479e = findViewById(R.id.focus_plus_text);
        this.f26480f = (TextView) findViewById(R.id.focus_text);
        this.f26481g = (TextView) findViewById(R.id.online_text);
        this.f26477c = (LinearLayout) findViewById(R.id.ll_user_like);
        this.f26482h = (TextView) findViewById(R.id.tv_user_like);
        if (!BaseConfig.isChinese()) {
            this.f26475a.setBackground(FaceImageUtils.createDrawable(getResources().getColor(R.color.select_color), ScreenTools.dip2px(8.0f)));
            this.f26476b.setBackground(FaceImageUtils.createDrawable(getResources().getColor(R.color.select_color), ScreenTools.dip2px(8.0f)));
            this.f26477c.setVisibility(8);
            return;
        }
        this.f26475a.setBackgroundResource(R.drawable.bg_fllow_btn);
        this.f26476b.setBackgroundResource(R.drawable.btn_chat_bg);
        this.f26477c.setBackgroundResource(R.drawable.btn_like_bg);
        this.f26477c.setVisibility(8);
    }

    public boolean getFocusShowStatus() {
        if (getResources().getString(R.string.no_focus).equals(this.f26480f.getText().toString())) {
            return false;
        }
        return getResources().getString(R.string.focused).equals(this.f26480f.getText().toString());
    }

    public String getOnlineText() {
        return this.f26481g.getText().toString();
    }

    public void setFocusClickListener(View.OnClickListener onClickListener) {
        this.f26475a.setOnClickListener(onClickListener);
    }

    public void setFocusDismiss(int i9) {
        this.f26475a.setVisibility(8);
        this.f26476b.setVisibility(0);
        this.f26477c.setVisibility(0);
        b.c(this.f26477c, this.f26483i, this.f26482h, i9);
    }

    public void setFocusText(String str) {
        if (getResources().getString(R.string.no_focus).equals(str)) {
            if (BaseConfig.isChinese()) {
                this.f26475a.setSelected(false);
                this.f26480f.setTextColor(getResources().getColor(R.color.white));
            } else {
                this.f26479e.setVisibility(0);
            }
        } else if (BaseConfig.isChinese()) {
            this.f26475a.setSelected(true);
            this.f26480f.setTextColor(Color.parseColor("#B9B9B9"));
        } else {
            this.f26479e.setVisibility(8);
        }
        this.f26480f.setText(str);
    }

    public void setOnLikeClickListener(View.OnClickListener onClickListener) {
        this.f26477c.setOnClickListener(onClickListener);
    }

    public void setOnlineClickListener(View.OnClickListener onClickListener) {
        this.f26476b.setOnClickListener(onClickListener);
    }

    public void setOnlineText(String str) {
        this.f26481g.setText(str);
    }

    public void setViewState(int i9) {
        if (getFocusShowStatus()) {
            this.f26475a.setVisibility(8);
            this.f26476b.setVisibility(0);
        } else {
            this.f26475a.setVisibility(0);
            this.f26476b.setVisibility(8);
        }
        this.f26477c.setVisibility(0);
        b.c(this.f26477c, this.f26483i, this.f26482h, i9);
    }

    public UserFocusOnlineView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserFocusOnlineView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a();
    }
}
