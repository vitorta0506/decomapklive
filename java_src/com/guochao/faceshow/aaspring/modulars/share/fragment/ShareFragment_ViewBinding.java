package com.guochao.faceshow.aaspring.modulars.share.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ShareFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ShareFragment f21783b;

    /* renamed from: c  reason: collision with root package name */
    private View f21784c;

    /* renamed from: d  reason: collision with root package name */
    private View f21785d;

    /* renamed from: e  reason: collision with root package name */
    private View f21786e;

    /* renamed from: f  reason: collision with root package name */
    private View f21787f;

    /* renamed from: g  reason: collision with root package name */
    private View f21788g;

    /* renamed from: h  reason: collision with root package name */
    private View f21789h;

    /* renamed from: i  reason: collision with root package name */
    private View f21790i;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShareFragment f21791a;

        a(ShareFragment shareFragment) {
            this.f21791a = shareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21791a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShareFragment f21793a;

        b(ShareFragment shareFragment) {
            this.f21793a = shareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21793a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShareFragment f21795a;

        c(ShareFragment shareFragment) {
            this.f21795a = shareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21795a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShareFragment f21797a;

        d(ShareFragment shareFragment) {
            this.f21797a = shareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21797a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class e extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShareFragment f21799a;

        e(ShareFragment shareFragment) {
            this.f21799a = shareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21799a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class f extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShareFragment f21801a;

        f(ShareFragment shareFragment) {
            this.f21801a = shareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21801a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class g extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ShareFragment f21803a;

        g(ShareFragment shareFragment) {
            this.f21803a = shareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21803a.onButtonClick(view);
        }
    }

    @UiThread
    public ShareFragment_ViewBinding(ShareFragment shareFragment, View view) {
        this.f21783b = shareFragment;
        View c10 = butterknife.internal.c.c(view, R.id.copy_link, "field 'copyLink' and method 'onButtonClick'");
        shareFragment.copyLink = c10;
        this.f21784c = c10;
        c10.setOnClickListener(new a(shareFragment));
        View c11 = butterknife.internal.c.c(view, R.id.save_btn, "field 'saveBtn' and method 'onButtonClick'");
        shareFragment.saveBtn = c11;
        this.f21785d = c11;
        c11.setOnClickListener(new b(shareFragment));
        View c12 = butterknife.internal.c.c(view, R.id.close, "field 'close' and method 'onButtonClick'");
        shareFragment.close = c12;
        this.f21786e = c12;
        c12.setOnClickListener(new c(shareFragment));
        shareFragment.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        View c13 = butterknife.internal.c.c(view, R.id.report, "method 'onButtonClick'");
        this.f21787f = c13;
        c13.setOnClickListener(new d(shareFragment));
        View c14 = butterknife.internal.c.c(view, R.id.cancel, "method 'onButtonClick'");
        this.f21788g = c14;
        c14.setOnClickListener(new e(shareFragment));
        View c15 = butterknife.internal.c.c(view, R.id.delete_video, "method 'onButtonClick'");
        this.f21789h = c15;
        c15.setOnClickListener(new f(shareFragment));
        View c16 = butterknife.internal.c.c(view, R.id.no_interest, "method 'onButtonClick'");
        this.f21790i = c16;
        c16.setOnClickListener(new g(shareFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ShareFragment shareFragment = this.f21783b;
        if (shareFragment != null) {
            this.f21783b = null;
            shareFragment.copyLink = null;
            shareFragment.saveBtn = null;
            shareFragment.close = null;
            shareFragment.recyclerView = null;
            this.f21784c.setOnClickListener(null);
            this.f21784c = null;
            this.f21785d.setOnClickListener(null);
            this.f21785d = null;
            this.f21786e.setOnClickListener(null);
            this.f21786e = null;
            this.f21787f.setOnClickListener(null);
            this.f21787f = null;
            this.f21788g.setOnClickListener(null);
            this.f21788g = null;
            this.f21789h.setOnClickListener(null);
            this.f21789h = null;
            this.f21790i.setOnClickListener(null);
            this.f21790i = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
