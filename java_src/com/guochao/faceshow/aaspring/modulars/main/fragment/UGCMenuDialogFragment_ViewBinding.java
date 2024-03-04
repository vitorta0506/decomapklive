package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class UGCMenuDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private UGCMenuDialogFragment f20791b;

    /* renamed from: c  reason: collision with root package name */
    private View f20792c;

    /* renamed from: d  reason: collision with root package name */
    private View f20793d;

    /* renamed from: e  reason: collision with root package name */
    private View f20794e;

    /* renamed from: f  reason: collision with root package name */
    private View f20795f;

    /* renamed from: g  reason: collision with root package name */
    private View f20796g;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UGCMenuDialogFragment f20797a;

        a(UGCMenuDialogFragment uGCMenuDialogFragment) {
            this.f20797a = uGCMenuDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20797a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UGCMenuDialogFragment f20799a;

        b(UGCMenuDialogFragment uGCMenuDialogFragment) {
            this.f20799a = uGCMenuDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20799a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UGCMenuDialogFragment f20801a;

        c(UGCMenuDialogFragment uGCMenuDialogFragment) {
            this.f20801a = uGCMenuDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20801a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UGCMenuDialogFragment f20803a;

        d(UGCMenuDialogFragment uGCMenuDialogFragment) {
            this.f20803a = uGCMenuDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20803a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UGCMenuDialogFragment f20805a;

        e(UGCMenuDialogFragment uGCMenuDialogFragment) {
            this.f20805a = uGCMenuDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20805a.onViewClicked(view);
        }
    }

    @UiThread
    public UGCMenuDialogFragment_ViewBinding(UGCMenuDialogFragment uGCMenuDialogFragment, View view) {
        this.f20791b = uGCMenuDialogFragment;
        View c10 = butterknife.internal.c.c(view, R.id.ht_live, "method 'onViewClicked'");
        this.f20792c = c10;
        c10.setOnClickListener(new a(uGCMenuDialogFragment));
        View c11 = butterknife.internal.c.c(view, R.id.ht_video, "method 'onViewClicked'");
        this.f20793d = c11;
        c11.setOnClickListener(new b(uGCMenuDialogFragment));
        View c12 = butterknife.internal.c.c(view, R.id.cancel, "method 'onViewClicked'");
        this.f20794e = c12;
        c12.setOnClickListener(new c(uGCMenuDialogFragment));
        View c13 = butterknife.internal.c.c(view, R.id.bg_view, "method 'onViewClicked'");
        this.f20795f = c13;
        c13.setOnClickListener(new d(uGCMenuDialogFragment));
        View c14 = butterknife.internal.c.c(view, R.id.ht_photo, "method 'onViewClicked'");
        this.f20796g = c14;
        c14.setOnClickListener(new e(uGCMenuDialogFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f20791b != null) {
            this.f20791b = null;
            this.f20792c.setOnClickListener(null);
            this.f20792c = null;
            this.f20793d.setOnClickListener(null);
            this.f20793d = null;
            this.f20794e.setOnClickListener(null);
            this.f20794e = null;
            this.f20795f.setOnClickListener(null);
            this.f20795f = null;
            this.f20796g.setOnClickListener(null);
            this.f20796g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
