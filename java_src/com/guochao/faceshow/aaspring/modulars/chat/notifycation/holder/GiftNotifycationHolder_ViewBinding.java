package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class GiftNotifycationHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private GiftNotifycationHolder f17170b;

    /* renamed from: c  reason: collision with root package name */
    private View f17171c;

    /* renamed from: d  reason: collision with root package name */
    private View f17172d;

    /* renamed from: e  reason: collision with root package name */
    private View f17173e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftNotifycationHolder f17174a;

        a(GiftNotifycationHolder giftNotifycationHolder) {
            this.f17174a = giftNotifycationHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17174a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftNotifycationHolder f17176a;

        b(GiftNotifycationHolder giftNotifycationHolder) {
            this.f17176a = giftNotifycationHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17176a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GiftNotifycationHolder f17178a;

        c(GiftNotifycationHolder giftNotifycationHolder) {
            this.f17178a = giftNotifycationHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17178a.onViewClicked(view);
        }
    }

    @UiThread
    public GiftNotifycationHolder_ViewBinding(GiftNotifycationHolder giftNotifycationHolder, View view) {
        this.f17170b = giftNotifycationHolder;
        View c10 = butterknife.internal.c.c(view, R.id.avatar_view, "field 'userAvatar' and method 'onViewClicked'");
        giftNotifycationHolder.userAvatar = (HeadPortraitView) butterknife.internal.c.a(c10, R.id.avatar_view, "field 'userAvatar'", HeadPortraitView.class);
        this.f17171c = c10;
        c10.setOnClickListener(new a(giftNotifycationHolder));
        View c11 = butterknife.internal.c.c(view, R.id.user_name, "field 'userName' and method 'onViewClicked'");
        giftNotifycationHolder.userName = (TextView) butterknife.internal.c.a(c11, R.id.user_name, "field 'userName'", TextView.class);
        this.f17172d = c11;
        c11.setOnClickListener(new b(giftNotifycationHolder));
        View c12 = butterknife.internal.c.c(view, R.id.user_name_lay, "field 'userNameLay' and method 'onViewClicked'");
        giftNotifycationHolder.userNameLay = (LinearLayout) butterknife.internal.c.a(c12, R.id.user_name_lay, "field 'userNameLay'", LinearLayout.class);
        this.f17173e = c12;
        c12.setOnClickListener(new c(giftNotifycationHolder));
        giftNotifycationHolder.content = (TextView) butterknife.internal.c.d(view, R.id.content, "field 'content'", TextView.class);
        giftNotifycationHolder.iconVideo = (ImageView) butterknife.internal.c.d(view, R.id.icon_video, "field 'iconVideo'", ImageView.class);
        giftNotifycationHolder.bgVideo = (ImageView) butterknife.internal.c.d(view, R.id.bg_video, "field 'bgVideo'", ImageView.class);
        giftNotifycationHolder.iconVideoLay = (FrameLayout) butterknife.internal.c.d(view, R.id.icon_video_lay, "field 'iconVideoLay'", FrameLayout.class);
        giftNotifycationHolder.timeHistory = (TextView) butterknife.internal.c.d(view, R.id.time_history, "field 'timeHistory'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        GiftNotifycationHolder giftNotifycationHolder = this.f17170b;
        if (giftNotifycationHolder != null) {
            this.f17170b = null;
            giftNotifycationHolder.userAvatar = null;
            giftNotifycationHolder.userName = null;
            giftNotifycationHolder.userNameLay = null;
            giftNotifycationHolder.content = null;
            giftNotifycationHolder.iconVideo = null;
            giftNotifycationHolder.bgVideo = null;
            giftNotifycationHolder.iconVideoLay = null;
            giftNotifycationHolder.timeHistory = null;
            this.f17171c.setOnClickListener(null);
            this.f17171c = null;
            this.f17172d.setOnClickListener(null);
            this.f17172d = null;
            this.f17173e.setOnClickListener(null);
            this.f17173e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
