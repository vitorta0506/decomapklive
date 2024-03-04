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
public class AtMeViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private AtMeViewHolder f17125b;

    /* renamed from: c  reason: collision with root package name */
    private View f17126c;

    /* renamed from: d  reason: collision with root package name */
    private View f17127d;

    /* renamed from: e  reason: collision with root package name */
    private View f17128e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtMeViewHolder f17129a;

        a(AtMeViewHolder atMeViewHolder) {
            this.f17129a = atMeViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17129a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtMeViewHolder f17131a;

        b(AtMeViewHolder atMeViewHolder) {
            this.f17131a = atMeViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17131a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AtMeViewHolder f17133a;

        c(AtMeViewHolder atMeViewHolder) {
            this.f17133a = atMeViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17133a.onViewClicked(view);
        }
    }

    @UiThread
    public AtMeViewHolder_ViewBinding(AtMeViewHolder atMeViewHolder, View view) {
        this.f17125b = atMeViewHolder;
        View c10 = butterknife.internal.c.c(view, R.id.avatar_view, "field 'userAvatar' and method 'onViewClicked'");
        atMeViewHolder.userAvatar = (HeadPortraitView) butterknife.internal.c.a(c10, R.id.avatar_view, "field 'userAvatar'", HeadPortraitView.class);
        this.f17126c = c10;
        c10.setOnClickListener(new a(atMeViewHolder));
        View c11 = butterknife.internal.c.c(view, R.id.user_name, "field 'userName' and method 'onViewClicked'");
        atMeViewHolder.userName = (TextView) butterknife.internal.c.a(c11, R.id.user_name, "field 'userName'", TextView.class);
        this.f17127d = c11;
        c11.setOnClickListener(new b(atMeViewHolder));
        View c12 = butterknife.internal.c.c(view, R.id.user_name_lay, "field 'userNameLay' and method 'onViewClicked'");
        atMeViewHolder.userNameLay = (LinearLayout) butterknife.internal.c.a(c12, R.id.user_name_lay, "field 'userNameLay'", LinearLayout.class);
        this.f17128e = c12;
        c12.setOnClickListener(new c(atMeViewHolder));
        atMeViewHolder.content = (TextView) butterknife.internal.c.d(view, R.id.content, "field 'content'", TextView.class);
        atMeViewHolder.iconVideo = (ImageView) butterknife.internal.c.d(view, R.id.icon_video, "field 'iconVideo'", ImageView.class);
        atMeViewHolder.bgVideo = (ImageView) butterknife.internal.c.d(view, R.id.bg_video, "field 'bgVideo'", ImageView.class);
        atMeViewHolder.iconVideoLay = (FrameLayout) butterknife.internal.c.d(view, R.id.icon_video_lay, "field 'iconVideoLay'", FrameLayout.class);
        atMeViewHolder.timeHistory = (TextView) butterknife.internal.c.d(view, R.id.time_history, "field 'timeHistory'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AtMeViewHolder atMeViewHolder = this.f17125b;
        if (atMeViewHolder != null) {
            this.f17125b = null;
            atMeViewHolder.userAvatar = null;
            atMeViewHolder.userName = null;
            atMeViewHolder.userNameLay = null;
            atMeViewHolder.content = null;
            atMeViewHolder.iconVideo = null;
            atMeViewHolder.bgVideo = null;
            atMeViewHolder.iconVideoLay = null;
            atMeViewHolder.timeHistory = null;
            this.f17126c.setOnClickListener(null);
            this.f17126c = null;
            this.f17127d.setOnClickListener(null);
            this.f17127d = null;
            this.f17128e.setOnClickListener(null);
            this.f17128e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
