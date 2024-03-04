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
import com.guochao.faceshow.utils.FaceImageUtils;
import com.guochao.faceshow.utils.ScreenTools;
import hc.a;
import java.util.List;
/* loaded from: classes4.dex */
public class UserInfoMomentsView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private LinearLayout f26503a;

    /* renamed from: b  reason: collision with root package name */
    private UserInfoHorizonTitleView f26504b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f26505c;

    /* renamed from: d  reason: collision with root package name */
    private int f26506d;

    /* renamed from: e  reason: collision with root package name */
    private View.OnClickListener f26507e;

    public UserInfoMomentsView(Context context) {
        this(context, null);
    }

    private void a(String str, int i9) {
        ViewGroup viewGroup = (ViewGroup) this.f26505c.inflate(R.layout.user_page_video_info_item, (ViewGroup) null);
        ImageView imageView = (ImageView) viewGroup.findViewById(R.id.video_play_fake_item_bg);
        TextView textView = (TextView) viewGroup.findViewById(R.id.video_play_fake_item_icon);
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        layoutParams.height = ScreenTools.get375STValue(60.0f);
        layoutParams.width = ScreenTools.get375STValue(60.0f);
        imageView.setLayoutParams(layoutParams);
        this.f26503a.addView(viewGroup);
        if (i9 >= this.f26506d) {
            textView.setText(getResources().getString(R.string.more));
            imageView.setBackgroundDrawable(FaceImageUtils.createDrawable(getResources().getColor(R.color.color_f4f4f4), ScreenTools.dip2px(8.0f)));
        } else {
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) viewGroup.getLayoutParams();
            layoutParams2.rightMargin = ScreenTools.get375STValue(8.0f);
            viewGroup.setLayoutParams(layoutParams2);
            textView.setText("");
            a.s(imageView, str, 10);
        }
        viewGroup.setOnClickListener(this.f26507e);
    }

    private void b() {
        LayoutInflater from = LayoutInflater.from(getContext());
        this.f26505c = from;
        from.inflate(R.layout.user_page_video_info_view, (ViewGroup) this, true);
        this.f26504b = (UserInfoHorizonTitleView) findViewById(R.id.video_info_title_view);
        this.f26503a = (LinearLayout) findViewById(R.id.video_view_show_ly);
        this.f26504b.setTypeText(getResources().getString(R.string.muser_center_friends));
        this.f26504b.setTypeIcon(R.mipmap.user_moments_info_icon);
    }

    public void setData(List<String> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        int i9 = 0;
        this.f26503a.setPadding(ScreenTools.get375STValue(20.0f), 0, ScreenTools.get375STValue(20.0f), ScreenTools.get375STValue(16.0f));
        this.f26503a.removeAllViews();
        this.f26504b.setMoreClickListener(this.f26507e);
        this.f26506d = list.size() < 4 ? list.size() : 4;
        while (true) {
            int i10 = this.f26506d;
            if (i9 < i10) {
                a(list.get(i9), i9);
                i9++;
            } else {
                a(null, i10);
                return;
            }
        }
    }

    public void setMomentsClickListener(View.OnClickListener onClickListener) {
        this.f26507e = onClickListener;
    }

    public UserInfoMomentsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserInfoMomentsView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        b();
    }
}
