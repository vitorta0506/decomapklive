package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class NotificationsDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private NotificationsDialogFragment f19313b;

    /* renamed from: c  reason: collision with root package name */
    private View f19314c;

    /* renamed from: d  reason: collision with root package name */
    private View f19315d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NotificationsDialogFragment f19316a;

        a(NotificationsDialogFragment notificationsDialogFragment) {
            this.f19316a = notificationsDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19316a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NotificationsDialogFragment f19318a;

        b(NotificationsDialogFragment notificationsDialogFragment) {
            this.f19318a = notificationsDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19318a.onViewClicked(view);
        }
    }

    @UiThread
    public NotificationsDialogFragment_ViewBinding(NotificationsDialogFragment notificationsDialogFragment, View view) {
        this.f19313b = notificationsDialogFragment;
        View c10 = butterknife.internal.c.c(view, R.id.btn_open_setting, "field 'btnOpenSetting' and method 'onViewClicked'");
        notificationsDialogFragment.btnOpenSetting = (FrameLayout) butterknife.internal.c.a(c10, R.id.btn_open_setting, "field 'btnOpenSetting'", FrameLayout.class);
        this.f19314c = c10;
        c10.setOnClickListener(new a(notificationsDialogFragment));
        View c11 = butterknife.internal.c.c(view, R.id.iv_close, "method 'onViewClicked'");
        this.f19315d = c11;
        c11.setOnClickListener(new b(notificationsDialogFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NotificationsDialogFragment notificationsDialogFragment = this.f19313b;
        if (notificationsDialogFragment != null) {
            this.f19313b = null;
            notificationsDialogFragment.btnOpenSetting = null;
            this.f19314c.setOnClickListener(null);
            this.f19314c = null;
            this.f19315d.setOnClickListener(null);
            this.f19315d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
