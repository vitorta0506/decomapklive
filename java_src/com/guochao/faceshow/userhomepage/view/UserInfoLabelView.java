package com.guochao.faceshow.userhomepage.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.personal.LabelActivity;
import com.guochao.faceshow.mine.model.HobbyBean;
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.flowlayout.FlowLayout;
import com.guochao.faceshow.views.flowlayout.TagFlowLayout;
import java.util.List;
/* loaded from: classes4.dex */
public class UserInfoLabelView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private UserInfoHorizonTitleView f26496a;

    /* renamed from: b  reason: collision with root package name */
    private TagFlowLayout f26497b;

    /* renamed from: c  reason: collision with root package name */
    private Context f26498c;

    /* renamed from: d  reason: collision with root package name */
    private LayoutInflater f26499d;

    /* loaded from: classes4.dex */
    class a extends com.guochao.faceshow.views.flowlayout.a<HobbyBean> {
        a(List list) {
            super(list);
        }

        @Override // com.guochao.faceshow.views.flowlayout.a
        /* renamed from: i */
        public View d(FlowLayout flowLayout, int i9, HobbyBean hobbyBean) {
            return UserInfoLabelView.this.c(hobbyBean.getTags());
        }
    }

    /* loaded from: classes4.dex */
    class b implements TagFlowLayout.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f26501a;

        b(List list) {
            this.f26501a = list;
        }

        @Override // com.guochao.faceshow.views.flowlayout.TagFlowLayout.c
        public boolean a(View view, int i9, FlowLayout flowLayout) {
            LabelActivity.e0(UserInfoLabelView.this.f26498c, (HobbyBean) this.f26501a.get(i9));
            return false;
        }
    }

    public UserInfoLabelView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View c(String str) {
        FrameLayout frameLayout = new FrameLayout(getContext());
        TextView textView = new TextView(getContext());
        textView.setTextColor(getResources().getColor(R.color.colorTextWhite));
        textView.setTextSize(12.0f);
        textView.setBackground(FaceImageUtils.createDrawable(getResources().getColor(R.color.select_color), ScreenTools.dip2px(7.0f)));
        textView.setGravity(17);
        textView.setPadding(ScreenTools.dip2px(6.0f), ScreenTools.dip2px(6.0f), ScreenTools.dip2px(6.0f), ScreenTools.dip2px(6.0f));
        frameLayout.addView(textView);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) textView.getLayoutParams();
        layoutParams.leftMargin = ScreenTools.get375STValue(9.0f);
        layoutParams.rightMargin = ScreenTools.get375STValue(9.0f);
        layoutParams.topMargin = ScreenTools.get375STValue(10.0f);
        textView.setText(str);
        frameLayout.setLayoutParams(new ViewGroup.MarginLayoutParams(-2, -2));
        return frameLayout;
    }

    private void d() {
        LayoutInflater from = LayoutInflater.from(getContext());
        this.f26499d = from;
        from.inflate(R.layout.user_page_label_info_view, (ViewGroup) this, true);
        this.f26496a = (UserInfoHorizonTitleView) findViewById(R.id.label_info_title_view);
        this.f26497b = (TagFlowLayout) findViewById(R.id.label_view_show_ly);
        this.f26496a.c();
        this.f26496a.setTypeText(getResources().getString(R.string.muser_center_label));
        this.f26496a.setTypeIcon(R.mipmap.user_label_info_icon);
    }

    public void setData(List<HobbyBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f26497b.removeAllViews();
        this.f26497b.setPadding(ScreenTools.get375STValue(11.0f), 0, ScreenTools.get375STValue(20.0f), ScreenTools.get375STValue(17.0f));
        this.f26497b.setAdapter(new a(list));
        this.f26497b.setOnTagClickListener(new b(list));
    }

    public UserInfoLabelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserInfoLabelView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f26498c = context;
        d();
    }
}
