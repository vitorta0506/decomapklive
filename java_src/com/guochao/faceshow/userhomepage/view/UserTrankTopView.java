package com.guochao.faceshow.userhomepage.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.UserPageTrankItemData;
import com.guochao.faceshow.utils.ScreenTools;
import com.guochao.faceshow.views.NormalCircleImageView;
import hc.a;
import java.util.List;
/* loaded from: classes4.dex */
public class UserTrankTopView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private LinearLayout f26545a;

    /* renamed from: b  reason: collision with root package name */
    private RelativeLayout f26546b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f26547c;

    /* renamed from: d  reason: collision with root package name */
    private List<UserPageTrankItemData> f26548d;

    public UserTrankTopView(Context context) {
        this(context, null);
    }

    private void a() {
        LayoutInflater.from(getContext()).inflate(R.layout.user_page_trank_top_view, (ViewGroup) this, true);
        this.f26545a = (LinearLayout) findViewById(R.id.more_arrow_btn_ly);
        this.f26546b = (RelativeLayout) findViewById(R.id.trank_top_head_ly);
        this.f26547c = (ImageView) findViewById(R.id.more_arrow_image);
    }

    public void setData(List<UserPageTrankItemData> list) {
        this.f26548d = list;
        if (list == null) {
            return;
        }
        this.f26546b.removeAllViews();
        int i9 = 0;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size) != null && !TextUtils.isEmpty(list.get(size).img)) {
                NormalCircleImageView normalCircleImageView = new NormalCircleImageView(getContext());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ScreenTools.dip2px(26.0f), ScreenTools.dip2px(26.0f));
                layoutParams.addRule(11, -1);
                i9++;
                if (i9 == 2) {
                    layoutParams.rightMargin = ScreenTools.dip2px(15.0f);
                } else if (i9 == 3) {
                    layoutParams.rightMargin = ScreenTools.dip2px(30.0f);
                }
                this.f26546b.addView(normalCircleImageView, layoutParams);
                a.j(normalCircleImageView, list.get(size).img);
            }
        }
    }

    public void setTrankTopClickListener(View.OnClickListener onClickListener) {
        this.f26545a.setOnClickListener(onClickListener);
    }

    public UserTrankTopView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserTrankTopView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        a();
    }
}
