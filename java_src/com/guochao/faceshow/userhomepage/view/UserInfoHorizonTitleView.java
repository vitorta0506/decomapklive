package com.guochao.faceshow.userhomepage.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.ScreenTools;
/* loaded from: classes4.dex */
public class UserInfoHorizonTitleView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f26491a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f26492b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f26493c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f26494d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f26495e;

    public UserInfoHorizonTitleView(Context context) {
        this(context, null);
    }

    private void a() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f26491a.getLayoutParams();
        layoutParams.width = ScreenTools.get375STValue(19.0f);
        layoutParams.height = ScreenTools.get375STValue(19.0f);
        layoutParams.leftMargin = ScreenTools.get375STValue(20.0f);
        ((RelativeLayout.LayoutParams) this.f26492b.getLayoutParams()).leftMargin = ScreenTools.get375STValue(3.0f);
        this.f26493c.setPadding(ScreenTools.get375STValue(20.0f), ScreenTools.get375STValue(5.0f), ScreenTools.get375STValue(11.0f), ScreenTools.get375STValue(5.0f));
        ((LinearLayout.LayoutParams) this.f26494d.getLayoutParams()).rightMargin = ScreenTools.get375STValue(3.0f);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f26495e.getLayoutParams();
        layoutParams2.width = ScreenTools.get375STValue(20.0f);
        layoutParams2.height = ScreenTools.get375STValue(20.0f);
    }

    private void b() {
        LayoutInflater.from(getContext()).inflate(R.layout.user_page_base_horizon_view, (ViewGroup) this, true);
        this.f26491a = (ImageView) findViewById(R.id.show_type_icon);
        this.f26492b = (TextView) findViewById(R.id.show_type_text);
        this.f26493c = (LinearLayout) findViewById(R.id.more_arrow_btn_ly);
        this.f26494d = (TextView) findViewById(R.id.more_arrow_text);
        this.f26495e = (ImageView) findViewById(R.id.more_arrow_image);
        a();
    }

    public void c() {
        this.f26493c.setVisibility(4);
        this.f26493c.setClickable(false);
    }

    public void setMoreArrowText(String str) {
        this.f26494d.setText(str);
    }

    public void setMoreClickListener(View.OnClickListener onClickListener) {
        this.f26493c.setOnClickListener(onClickListener);
    }

    public void setTypeIcon(int i9) {
        this.f26491a.setBackgroundResource(i9);
    }

    public void setTypeText(String str) {
        this.f26492b.setText(str);
    }

    public UserInfoHorizonTitleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserInfoHorizonTitleView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        b();
    }
}
