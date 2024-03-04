package com.guochao.faceshow.aaspring.modulars.live.share;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.duolingo.open.rtlviewpager.RtlViewPager;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.TabLayout;
/* loaded from: classes3.dex */
public class InviteDialog_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private InviteDialog f19859b;

    /* renamed from: c  reason: collision with root package name */
    private View f19860c;

    /* renamed from: d  reason: collision with root package name */
    private View f19861d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InviteDialog f19862a;

        a(InviteDialog inviteDialog) {
            this.f19862a = inviteDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19862a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InviteDialog f19864a;

        b(InviteDialog inviteDialog) {
            this.f19864a = inviteDialog;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19864a.onViewClicked(view);
        }
    }

    @UiThread
    public InviteDialog_ViewBinding(InviteDialog inviteDialog, View view) {
        this.f19859b = inviteDialog;
        inviteDialog.tabs = (TabLayout) c.d(view, R.id.tabs, "field 'tabs'", TabLayout.class);
        View c10 = c.c(view, R.id.closeIV, "field 'closeIV' and method 'onViewClicked'");
        inviteDialog.closeIV = (ImageView) c.a(c10, R.id.closeIV, "field 'closeIV'", ImageView.class);
        this.f19860c = c10;
        c10.setOnClickListener(new a(inviteDialog));
        inviteDialog.tabLay = (LinearLayout) c.d(view, R.id.tab_lay, "field 'tabLay'", LinearLayout.class);
        inviteDialog.vpContent = (RtlViewPager) c.d(view, R.id.vp_content, "field 'vpContent'", RtlViewPager.class);
        inviteDialog.btnConfirm = (TextView) c.d(view, R.id.btn_confirm, "field 'btnConfirm'", TextView.class);
        View c11 = c.c(view, R.id.layout_confirm, "field 'confirmLay' and method 'onViewClicked'");
        inviteDialog.confirmLay = c11;
        this.f19861d = c11;
        c11.setOnClickListener(new b(inviteDialog));
        inviteDialog.confirmTip = c.c(view, R.id.confirm_tip, "field 'confirmTip'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        InviteDialog inviteDialog = this.f19859b;
        if (inviteDialog != null) {
            this.f19859b = null;
            inviteDialog.tabs = null;
            inviteDialog.closeIV = null;
            inviteDialog.tabLay = null;
            inviteDialog.vpContent = null;
            inviteDialog.btnConfirm = null;
            inviteDialog.confirmLay = null;
            inviteDialog.confirmTip = null;
            this.f19860c.setOnClickListener(null);
            this.f19860c = null;
            this.f19861d.setOnClickListener(null);
            this.f19861d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
