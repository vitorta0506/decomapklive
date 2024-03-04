package com.guochao.faceshow.aaspring.utils;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes3.dex */
public class WhoSawMeZoomHelper_ViewBinding extends BaseZoomHelper_ViewBinding {
    private WhoSawMeZoomHelper target;
    private View view7f0a0065;
    private View view7f0a0264;
    private View view7f0a042f;

    @UiThread
    public WhoSawMeZoomHelper_ViewBinding(final WhoSawMeZoomHelper whoSawMeZoomHelper, View view) {
        super(whoSawMeZoomHelper, view);
        this.target = whoSawMeZoomHelper;
        View c10 = butterknife.internal.c.c(view, R.id.action_area, "method 'startUserHome'");
        whoSawMeZoomHelper.mActionArea = c10;
        this.view7f0a0065 = c10;
        c10.setOnClickListener(new butterknife.internal.b() { // from class: com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper_ViewBinding.1
            @Override // butterknife.internal.b
            public void doClick(View view2) {
                whoSawMeZoomHelper.startUserHome(view2);
            }
        });
        whoSawMeZoomHelper.headImg = (HeadPortraitView) butterknife.internal.c.d(view, R.id.head_img, "field 'headImg'", HeadPortraitView.class);
        whoSawMeZoomHelper.nickName = (TextView) butterknife.internal.c.d(view, R.id.nickname, "field 'nickName'", TextView.class);
        whoSawMeZoomHelper.vipIndicator = (VipIndicatorView) butterknife.internal.c.d(view, R.id.vip_indicator, "field 'vipIndicator'", VipIndicatorView.class);
        View c11 = butterknife.internal.c.c(view, R.id.focus, "field 'focus' and method 'requestFocus'");
        whoSawMeZoomHelper.focus = (ImageView) butterknife.internal.c.a(c11, R.id.focus, "field 'focus'", ImageView.class);
        this.view7f0a042f = c11;
        c11.setOnClickListener(new butterknife.internal.b() { // from class: com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper_ViewBinding.2
            @Override // butterknife.internal.b
            public void doClick(View view2) {
                whoSawMeZoomHelper.requestFocus(view2);
            }
        });
        View findViewById = view.findViewById(R.id.conversation);
        whoSawMeZoomHelper.mConversation = findViewById;
        if (findViewById != null) {
            this.view7f0a0264 = findViewById;
            findViewById.setOnClickListener(new butterknife.internal.b() { // from class: com.guochao.faceshow.aaspring.utils.WhoSawMeZoomHelper_ViewBinding.3
                @Override // butterknife.internal.b
                public void doClick(View view2) {
                    whoSawMeZoomHelper.startChat(view2);
                }
            });
        }
    }

    @Override // com.guochao.faceshow.aaspring.utils.BaseZoomHelper_ViewBinding, butterknife.Unbinder
    public void unbind() {
        WhoSawMeZoomHelper whoSawMeZoomHelper = this.target;
        if (whoSawMeZoomHelper != null) {
            this.target = null;
            whoSawMeZoomHelper.mActionArea = null;
            whoSawMeZoomHelper.headImg = null;
            whoSawMeZoomHelper.nickName = null;
            whoSawMeZoomHelper.vipIndicator = null;
            whoSawMeZoomHelper.focus = null;
            whoSawMeZoomHelper.mConversation = null;
            this.view7f0a0065.setOnClickListener(null);
            this.view7f0a0065 = null;
            this.view7f0a042f.setOnClickListener(null);
            this.view7f0a042f = null;
            View view = this.view7f0a0264;
            if (view != null) {
                view.setOnClickListener(null);
                this.view7f0a0264 = null;
            }
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
