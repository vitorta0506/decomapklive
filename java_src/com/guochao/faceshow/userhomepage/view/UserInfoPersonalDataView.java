package com.guochao.faceshow.userhomepage.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.utils.ScreenTools;
/* loaded from: classes4.dex */
public class UserInfoPersonalDataView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private LinearLayout f26508a;

    /* renamed from: b  reason: collision with root package name */
    private UserInfoHorizonTitleView f26509b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f26510c;

    public UserInfoPersonalDataView(Context context) {
        this(context, null);
    }

    private void a() {
        LayoutInflater from = LayoutInflater.from(getContext());
        this.f26510c = from;
        from.inflate(R.layout.user_page_personal_data_view, (ViewGroup) this, true);
        this.f26509b = (UserInfoHorizonTitleView) findViewById(R.id.personal_data_title_view);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.personal_data_show_ly);
        this.f26508a = linearLayout;
        linearLayout.setPadding(ScreenTools.get375STValue(20.0f), 0, ScreenTools.get375STValue(20.0f), ScreenTools.get375STValue(14.0f));
        this.f26509b.c();
        this.f26509b.setTypeText(getResources().getString(R.string.muser_center_personal_data));
        this.f26509b.setTypeIcon(R.mipmap.user_personal_info_icon);
    }

    public UserInfoPersonalDataView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserInfoPersonalDataView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a();
    }
}
