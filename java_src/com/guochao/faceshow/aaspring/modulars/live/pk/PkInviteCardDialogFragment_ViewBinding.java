package com.guochao.faceshow.aaspring.modulars.live.pk;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class PkInviteCardDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PkInviteCardDialogFragment f19697b;

    /* renamed from: c  reason: collision with root package name */
    private View f19698c;

    /* renamed from: d  reason: collision with root package name */
    private View f19699d;

    /* renamed from: e  reason: collision with root package name */
    private View f19700e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkInviteCardDialogFragment f19701a;

        a(PkInviteCardDialogFragment pkInviteCardDialogFragment) {
            this.f19701a = pkInviteCardDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19701a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkInviteCardDialogFragment f19703a;

        b(PkInviteCardDialogFragment pkInviteCardDialogFragment) {
            this.f19703a = pkInviteCardDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19703a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PkInviteCardDialogFragment f19705a;

        c(PkInviteCardDialogFragment pkInviteCardDialogFragment) {
            this.f19705a = pkInviteCardDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19705a.onViewClicked(view);
        }
    }

    @UiThread
    public PkInviteCardDialogFragment_ViewBinding(PkInviteCardDialogFragment pkInviteCardDialogFragment, View view) {
        this.f19697b = pkInviteCardDialogFragment;
        pkInviteCardDialogFragment.avatarUser = (HeadPortraitView) butterknife.internal.c.d(view, R.id.avatar_user, "field 'avatarUser'", HeadPortraitView.class);
        pkInviteCardDialogFragment.userAgeLevel = butterknife.internal.c.c(view, R.id.user_center_age_level, "field 'userAgeLevel'");
        pkInviteCardDialogFragment.tvNickName = (TextView) butterknife.internal.c.d(view, R.id.tv_nick_name, "field 'tvNickName'", TextView.class);
        pkInviteCardDialogFragment.tvInviteName = (TextView) butterknife.internal.c.d(view, R.id.tv_invite_name, "field 'tvInviteName'", TextView.class);
        View c10 = butterknife.internal.c.c(view, R.id.btn_agree, "field 'btnAgree' and method 'onViewClicked'");
        pkInviteCardDialogFragment.btnAgree = (ImageButton) butterknife.internal.c.a(c10, R.id.btn_agree, "field 'btnAgree'", ImageButton.class);
        this.f19698c = c10;
        c10.setOnClickListener(new a(pkInviteCardDialogFragment));
        View c11 = butterknife.internal.c.c(view, R.id.btn_refuse, "field 'btnRefuse' and method 'onViewClicked'");
        pkInviteCardDialogFragment.btnRefuse = (ImageButton) butterknife.internal.c.a(c11, R.id.btn_refuse, "field 'btnRefuse'", ImageButton.class);
        this.f19699d = c11;
        c11.setOnClickListener(new b(pkInviteCardDialogFragment));
        pkInviteCardDialogFragment.ivSelectState = (ImageView) butterknife.internal.c.d(view, R.id.iv_select_state, "field 'ivSelectState'", ImageView.class);
        View c12 = butterknife.internal.c.c(view, R.id.lay_select_state, "method 'onViewClicked'");
        this.f19700e = c12;
        c12.setOnClickListener(new c(pkInviteCardDialogFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PkInviteCardDialogFragment pkInviteCardDialogFragment = this.f19697b;
        if (pkInviteCardDialogFragment != null) {
            this.f19697b = null;
            pkInviteCardDialogFragment.avatarUser = null;
            pkInviteCardDialogFragment.userAgeLevel = null;
            pkInviteCardDialogFragment.tvNickName = null;
            pkInviteCardDialogFragment.tvInviteName = null;
            pkInviteCardDialogFragment.btnAgree = null;
            pkInviteCardDialogFragment.btnRefuse = null;
            pkInviteCardDialogFragment.ivSelectState = null;
            this.f19698c.setOnClickListener(null);
            this.f19698c = null;
            this.f19699d.setOnClickListener(null);
            this.f19699d = null;
            this.f19700e.setOnClickListener(null);
            this.f19700e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
