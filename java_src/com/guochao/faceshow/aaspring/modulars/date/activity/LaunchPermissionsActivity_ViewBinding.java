package com.guochao.faceshow.aaspring.modulars.date.activity;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class LaunchPermissionsActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private LaunchPermissionsActivity f17528c;

    /* renamed from: d  reason: collision with root package name */
    private View f17529d;

    /* renamed from: e  reason: collision with root package name */
    private View f17530e;

    /* renamed from: f  reason: collision with root package name */
    private View f17531f;

    /* renamed from: g  reason: collision with root package name */
    private View f17532g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LaunchPermissionsActivity f17533a;

        a(LaunchPermissionsActivity launchPermissionsActivity) {
            this.f17533a = launchPermissionsActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17533a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LaunchPermissionsActivity f17535a;

        b(LaunchPermissionsActivity launchPermissionsActivity) {
            this.f17535a = launchPermissionsActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17535a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LaunchPermissionsActivity f17537a;

        c(LaunchPermissionsActivity launchPermissionsActivity) {
            this.f17537a = launchPermissionsActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17537a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LaunchPermissionsActivity f17539a;

        d(LaunchPermissionsActivity launchPermissionsActivity) {
            this.f17539a = launchPermissionsActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17539a.onViewClicked(view);
        }
    }

    @UiThread
    public LaunchPermissionsActivity_ViewBinding(LaunchPermissionsActivity launchPermissionsActivity, View view) {
        super(launchPermissionsActivity, view);
        this.f17528c = launchPermissionsActivity;
        launchPermissionsActivity.ivAnyone = (ImageView) butterknife.internal.c.d(view, R.id.iv_anyone, "field 'ivAnyone'", ImageView.class);
        View c10 = butterknife.internal.c.c(view, R.id.fl_anyone, "field 'flAnyone' and method 'onViewClicked'");
        launchPermissionsActivity.flAnyone = (FrameLayout) butterknife.internal.c.a(c10, R.id.fl_anyone, "field 'flAnyone'", FrameLayout.class);
        this.f17529d = c10;
        c10.setOnClickListener(new a(launchPermissionsActivity));
        launchPermissionsActivity.ivFans = (ImageView) butterknife.internal.c.d(view, R.id.iv_fans, "field 'ivFans'", ImageView.class);
        View c11 = butterknife.internal.c.c(view, R.id.fl_fans, "field 'flFans' and method 'onViewClicked'");
        launchPermissionsActivity.flFans = (FrameLayout) butterknife.internal.c.a(c11, R.id.fl_fans, "field 'flFans'", FrameLayout.class);
        this.f17530e = c11;
        c11.setOnClickListener(new b(launchPermissionsActivity));
        launchPermissionsActivity.ivFriends = (ImageView) butterknife.internal.c.d(view, R.id.iv_friends, "field 'ivFriends'", ImageView.class);
        View c12 = butterknife.internal.c.c(view, R.id.fl_friends, "field 'flFriends' and method 'onViewClicked'");
        launchPermissionsActivity.flFriends = (FrameLayout) butterknife.internal.c.a(c12, R.id.fl_friends, "field 'flFriends'", FrameLayout.class);
        this.f17531f = c12;
        c12.setOnClickListener(new c(launchPermissionsActivity));
        launchPermissionsActivity.ivClose = (ImageView) butterknife.internal.c.d(view, R.id.iv_close, "field 'ivClose'", ImageView.class);
        View c13 = butterknife.internal.c.c(view, R.id.fl_close, "field 'flClose' and method 'onViewClicked'");
        launchPermissionsActivity.flClose = (FrameLayout) butterknife.internal.c.a(c13, R.id.fl_close, "field 'flClose'", FrameLayout.class);
        this.f17532g = c13;
        c13.setOnClickListener(new d(launchPermissionsActivity));
        launchPermissionsActivity.tvFans = (TextView) butterknife.internal.c.d(view, R.id.tv_fans, "field 'tvFans'", TextView.class);
        launchPermissionsActivity.tvFriends = (TextView) butterknife.internal.c.d(view, R.id.tv_friends, "field 'tvFriends'", TextView.class);
        launchPermissionsActivity.tvClose = (TextView) butterknife.internal.c.d(view, R.id.tv_close, "field 'tvClose'", TextView.class);
        launchPermissionsActivity.tvAnyone = (TextView) butterknife.internal.c.d(view, R.id.tv_anyone, "field 'tvAnyone'", TextView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        LaunchPermissionsActivity launchPermissionsActivity = this.f17528c;
        if (launchPermissionsActivity != null) {
            this.f17528c = null;
            launchPermissionsActivity.ivAnyone = null;
            launchPermissionsActivity.flAnyone = null;
            launchPermissionsActivity.ivFans = null;
            launchPermissionsActivity.flFans = null;
            launchPermissionsActivity.ivFriends = null;
            launchPermissionsActivity.flFriends = null;
            launchPermissionsActivity.ivClose = null;
            launchPermissionsActivity.flClose = null;
            launchPermissionsActivity.tvFans = null;
            launchPermissionsActivity.tvFriends = null;
            launchPermissionsActivity.tvClose = null;
            launchPermissionsActivity.tvAnyone = null;
            this.f17529d.setOnClickListener(null);
            this.f17529d = null;
            this.f17530e.setOnClickListener(null);
            this.f17530e = null;
            this.f17531f.setOnClickListener(null);
            this.f17531f = null;
            this.f17532g.setOnClickListener(null);
            this.f17532g = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
