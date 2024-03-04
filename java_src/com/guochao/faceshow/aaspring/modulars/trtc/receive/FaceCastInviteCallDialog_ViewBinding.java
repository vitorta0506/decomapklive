package com.guochao.faceshow.aaspring.modulars.trtc.receive;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class FaceCastInviteCallDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FaceCastInviteCallDialog f22079b;

    /* renamed from: c  reason: collision with root package name */
    private View f22080c;

    /* renamed from: d  reason: collision with root package name */
    private View f22081d;

    /* renamed from: e  reason: collision with root package name */
    private View f22082e;

    /* renamed from: f  reason: collision with root package name */
    private View f22083f;

    /* renamed from: g  reason: collision with root package name */
    private View f22084g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FaceCastInviteCallDialog f22085a;

        a(FaceCastInviteCallDialog faceCastInviteCallDialog) {
            this.f22085a = faceCastInviteCallDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22085a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FaceCastInviteCallDialog f22087a;

        b(FaceCastInviteCallDialog faceCastInviteCallDialog) {
            this.f22087a = faceCastInviteCallDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22087a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FaceCastInviteCallDialog f22089a;

        c(FaceCastInviteCallDialog faceCastInviteCallDialog) {
            this.f22089a = faceCastInviteCallDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22089a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FaceCastInviteCallDialog f22091a;

        d(FaceCastInviteCallDialog faceCastInviteCallDialog) {
            this.f22091a = faceCastInviteCallDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22091a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FaceCastInviteCallDialog f22093a;

        e(FaceCastInviteCallDialog faceCastInviteCallDialog) {
            this.f22093a = faceCastInviteCallDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22093a.onViewClicked(view);
        }
    }

    @UiThread
    public FaceCastInviteCallDialog_ViewBinding(FaceCastInviteCallDialog faceCastInviteCallDialog, View view) {
        this.f22079b = faceCastInviteCallDialog;
        faceCastInviteCallDialog.avatarUser = (HeadPortraitView) butterknife.internal.c.d(view, R.id.avatar_user, "field 'avatarUser'", HeadPortraitView.class);
        faceCastInviteCallDialog.userAgeLevel = butterknife.internal.c.c(view, R.id.user_center_age_level, "field 'userAgeLevel'");
        faceCastInviteCallDialog.tvNickName = (TextView) butterknife.internal.c.d(view, R.id.tv_nick_name, "field 'tvNickName'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.invite_type, "field 'inviteType' and method 'onViewClicked'");
        faceCastInviteCallDialog.inviteType = (ImageView) butterknife.internal.c.a(c10, R.id.invite_type, "field 'inviteType'", ImageView.class);
        this.f22080c = c10;
        c10.setOnClickListener(new a(faceCastInviteCallDialog));
        faceCastInviteCallDialog.tvInviteName = (TextView) butterknife.internal.c.d(view, R.id.tv_invite_name, "field 'tvInviteName'", TextView.class);
        faceCastInviteCallDialog.tvTrtcPrice = (TextView) butterknife.internal.c.d(view, R.id.tv_trtc_price, "field 'tvTrtcPrice'", TextView.class);
        View c11 = butterknife.internal.c.c(view, R.id.btn_agree, "method 'onViewClicked'");
        this.f22081d = c11;
        c11.setOnClickListener(new b(faceCastInviteCallDialog));
        View c12 = butterknife.internal.c.c(view, R.id.btn_refuse, "method 'onViewClicked'");
        this.f22082e = c12;
        c12.setOnClickListener(new c(faceCastInviteCallDialog));
        View c13 = butterknife.internal.c.c(view, R.id.chat_icon, "method 'onViewClicked'");
        this.f22083f = c13;
        c13.setOnClickListener(new d(faceCastInviteCallDialog));
        View c14 = butterknife.internal.c.c(view, R.id.black_this, "method 'onViewClicked'");
        this.f22084g = c14;
        c14.setOnClickListener(new e(faceCastInviteCallDialog));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FaceCastInviteCallDialog faceCastInviteCallDialog = this.f22079b;
        if (faceCastInviteCallDialog != null) {
            this.f22079b = null;
            faceCastInviteCallDialog.avatarUser = null;
            faceCastInviteCallDialog.userAgeLevel = null;
            faceCastInviteCallDialog.tvNickName = null;
            faceCastInviteCallDialog.inviteType = null;
            faceCastInviteCallDialog.tvInviteName = null;
            faceCastInviteCallDialog.tvTrtcPrice = null;
            this.f22080c.setOnClickListener(null);
            this.f22080c = null;
            this.f22081d.setOnClickListener(null);
            this.f22081d = null;
            this.f22082e.setOnClickListener(null);
            this.f22082e = null;
            this.f22083f.setOnClickListener(null);
            this.f22083f = null;
            this.f22084g.setOnClickListener(null);
            this.f22084g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
