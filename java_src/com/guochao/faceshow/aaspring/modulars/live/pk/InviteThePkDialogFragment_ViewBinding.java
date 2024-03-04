package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.opensource.svgaplayer.SVGAImageView;
/* loaded from: classes3.dex */
public class InviteThePkDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private InviteThePkDialogFragment f19682b;

    /* renamed from: c  reason: collision with root package name */
    private View f19683c;

    /* renamed from: d  reason: collision with root package name */
    private View f19684d;

    /* renamed from: e  reason: collision with root package name */
    private View f19685e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InviteThePkDialogFragment f19686a;

        a(InviteThePkDialogFragment inviteThePkDialogFragment) {
            this.f19686a = inviteThePkDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19686a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InviteThePkDialogFragment f19688a;

        b(InviteThePkDialogFragment inviteThePkDialogFragment) {
            this.f19688a = inviteThePkDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19688a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InviteThePkDialogFragment f19690a;

        c(InviteThePkDialogFragment inviteThePkDialogFragment) {
            this.f19690a = inviteThePkDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19690a.onViewClicked();
        }
    }

    @UiThread
    public InviteThePkDialogFragment_ViewBinding(InviteThePkDialogFragment inviteThePkDialogFragment, View view) {
        this.f19682b = inviteThePkDialogFragment;
        View c10 = butterknife.internal.c.c(view, R.id.avatar_user, "field 'avatarUser' and method 'onViewClicked'");
        inviteThePkDialogFragment.avatarUser = (HeadPortraitView) butterknife.internal.c.a(c10, R.id.avatar_user, "field 'avatarUser'", HeadPortraitView.class);
        this.f19683c = c10;
        c10.setOnClickListener(new a(inviteThePkDialogFragment));
        View c11 = butterknife.internal.c.c(view, R.id.tv_title_name, "field 'tvTitleName' and method 'onViewClicked'");
        inviteThePkDialogFragment.tvTitleName = (TextView) butterknife.internal.c.a(c11, R.id.tv_title_name, "field 'tvTitleName'", TextView.class);
        this.f19684d = c11;
        c11.setOnClickListener(new b(inviteThePkDialogFragment));
        inviteThePkDialogFragment.pkRandomGif = (SVGAImageView) butterknife.internal.c.d(view, R.id.pk_random_gif, "field 'pkRandomGif'", SVGAImageView.class);
        View c12 = butterknife.internal.c.c(view, R.id.btn_hangup, "field 'btnHangup' and method 'onViewClicked'");
        inviteThePkDialogFragment.btnHangup = (ImageView) butterknife.internal.c.a(c12, R.id.btn_hangup, "field 'btnHangup'", ImageView.class);
        this.f19685e = c12;
        c12.setOnClickListener(new c(inviteThePkDialogFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        InviteThePkDialogFragment inviteThePkDialogFragment = this.f19682b;
        if (inviteThePkDialogFragment != null) {
            this.f19682b = null;
            inviteThePkDialogFragment.avatarUser = null;
            inviteThePkDialogFragment.tvTitleName = null;
            inviteThePkDialogFragment.pkRandomGif = null;
            inviteThePkDialogFragment.btnHangup = null;
            this.f19683c.setOnClickListener(null);
            this.f19683c = null;
            this.f19684d.setOnClickListener(null);
            this.f19684d = null;
            this.f19685e.setOnClickListener(null);
            this.f19685e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
