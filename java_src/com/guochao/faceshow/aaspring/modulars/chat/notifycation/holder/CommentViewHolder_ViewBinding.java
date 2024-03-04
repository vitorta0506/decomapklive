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
public class CommentViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private CommentViewHolder f17150b;

    /* renamed from: c  reason: collision with root package name */
    private View f17151c;

    /* renamed from: d  reason: collision with root package name */
    private View f17152d;

    /* renamed from: e  reason: collision with root package name */
    private View f17153e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentViewHolder f17154a;

        a(CommentViewHolder commentViewHolder) {
            this.f17154a = commentViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17154a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentViewHolder f17156a;

        b(CommentViewHolder commentViewHolder) {
            this.f17156a = commentViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17156a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CommentViewHolder f17158a;

        c(CommentViewHolder commentViewHolder) {
            this.f17158a = commentViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17158a.onViewClicked(view);
        }
    }

    @UiThread
    public CommentViewHolder_ViewBinding(CommentViewHolder commentViewHolder, View view) {
        this.f17150b = commentViewHolder;
        View c10 = butterknife.internal.c.c(view, R.id.avatar_view, "field 'userAvatar' and method 'onViewClicked'");
        commentViewHolder.userAvatar = (HeadPortraitView) butterknife.internal.c.a(c10, R.id.avatar_view, "field 'userAvatar'", HeadPortraitView.class);
        this.f17151c = c10;
        c10.setOnClickListener(new a(commentViewHolder));
        View c11 = butterknife.internal.c.c(view, R.id.user_name, "field 'userName' and method 'onViewClicked'");
        commentViewHolder.userName = (TextView) butterknife.internal.c.a(c11, R.id.user_name, "field 'userName'", TextView.class);
        this.f17152d = c11;
        c11.setOnClickListener(new b(commentViewHolder));
        View c12 = butterknife.internal.c.c(view, R.id.user_name_lay, "field 'userNameLay' and method 'onViewClicked'");
        commentViewHolder.userNameLay = (LinearLayout) butterknife.internal.c.a(c12, R.id.user_name_lay, "field 'userNameLay'", LinearLayout.class);
        this.f17153e = c12;
        c12.setOnClickListener(new c(commentViewHolder));
        commentViewHolder.content = (TextView) butterknife.internal.c.d(view, R.id.content, "field 'content'", TextView.class);
        commentViewHolder.iconVideo = (ImageView) butterknife.internal.c.d(view, R.id.icon_video, "field 'iconVideo'", ImageView.class);
        commentViewHolder.bgVideo = (ImageView) butterknife.internal.c.d(view, R.id.bg_video, "field 'bgVideo'", ImageView.class);
        commentViewHolder.iconVideoLay = (FrameLayout) butterknife.internal.c.d(view, R.id.icon_video_lay, "field 'iconVideoLay'", FrameLayout.class);
        commentViewHolder.timeHistory = (TextView) butterknife.internal.c.d(view, R.id.time_history, "field 'timeHistory'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CommentViewHolder commentViewHolder = this.f17150b;
        if (commentViewHolder != null) {
            this.f17150b = null;
            commentViewHolder.userAvatar = null;
            commentViewHolder.userName = null;
            commentViewHolder.userNameLay = null;
            commentViewHolder.content = null;
            commentViewHolder.iconVideo = null;
            commentViewHolder.bgVideo = null;
            commentViewHolder.iconVideoLay = null;
            commentViewHolder.timeHistory = null;
            this.f17151c.setOnClickListener(null);
            this.f17151c = null;
            this.f17152d.setOnClickListener(null);
            this.f17152d = null;
            this.f17153e.setOnClickListener(null);
            this.f17153e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
