package com.guochao.faceshow.aaspring.modulars.live.viewholder;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class InviteViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private InviteViewHolder f19906b;

    /* renamed from: c  reason: collision with root package name */
    private View f19907c;

    /* renamed from: d  reason: collision with root package name */
    private View f19908d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InviteViewHolder f19909a;

        a(InviteViewHolder inviteViewHolder) {
            this.f19909a = inviteViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19909a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InviteViewHolder f19911a;

        b(InviteViewHolder inviteViewHolder) {
            this.f19911a = inviteViewHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19911a.onViewClicked(view);
        }
    }

    @UiThread
    public InviteViewHolder_ViewBinding(InviteViewHolder inviteViewHolder, View view) {
        this.f19906b = inviteViewHolder;
        View c10 = c.c(view, R.id.user_avatar, "field 'userAvatar' and method 'onViewClicked'");
        inviteViewHolder.userAvatar = (HeadPortraitView) c.a(c10, R.id.user_avatar, "field 'userAvatar'", HeadPortraitView.class);
        this.f19907c = c10;
        c10.setOnClickListener(new a(inviteViewHolder));
        View c11 = c.c(view, R.id.user_name, "field 'userName' and method 'onViewClicked'");
        inviteViewHolder.userName = (TextView) c.a(c11, R.id.user_name, "field 'userName'", TextView.class);
        this.f19908d = c11;
        c11.setOnClickListener(new b(inviteViewHolder));
        inviteViewHolder.userGenderAge = (LinearLayout) c.d(view, R.id.user_center_age_level, "field 'userGenderAge'", LinearLayout.class);
        inviteViewHolder.check = (ImageView) c.d(view, R.id.check, "field 'check'", ImageView.class);
        inviteViewHolder.topDivider = c.c(view, R.id.top_divider, "field 'topDivider'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        InviteViewHolder inviteViewHolder = this.f19906b;
        if (inviteViewHolder != null) {
            this.f19906b = null;
            inviteViewHolder.userAvatar = null;
            inviteViewHolder.userName = null;
            inviteViewHolder.userGenderAge = null;
            inviteViewHolder.check = null;
            inviteViewHolder.topDivider = null;
            this.f19907c.setOnClickListener(null);
            this.f19907c = null;
            this.f19908d.setOnClickListener(null);
            this.f19908d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
