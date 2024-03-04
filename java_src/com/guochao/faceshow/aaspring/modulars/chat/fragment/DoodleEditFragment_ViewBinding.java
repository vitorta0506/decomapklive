package com.guochao.faceshow.aaspring.modulars.chat.fragment;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class DoodleEditFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private DoodleEditFragment f16946b;

    /* renamed from: c  reason: collision with root package name */
    private View f16947c;

    /* renamed from: d  reason: collision with root package name */
    private View f16948d;

    /* renamed from: e  reason: collision with root package name */
    private View f16949e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DoodleEditFragment f16950a;

        a(DoodleEditFragment doodleEditFragment) {
            this.f16950a = doodleEditFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16950a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DoodleEditFragment f16952a;

        b(DoodleEditFragment doodleEditFragment) {
            this.f16952a = doodleEditFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16952a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DoodleEditFragment f16954a;

        c(DoodleEditFragment doodleEditFragment) {
            this.f16954a = doodleEditFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16954a.onViewClicked(view);
        }
    }

    @UiThread
    public DoodleEditFragment_ViewBinding(DoodleEditFragment doodleEditFragment, View view) {
        this.f16946b = doodleEditFragment;
        doodleEditFragment.ivBg = (ImageView) butterknife.internal.c.d(view, R.id.iv_bg, "field 'ivBg'", ImageView.class);
        View c10 = butterknife.internal.c.c(view, R.id.tv_cancel, "field 'tvCancel' and method 'onViewClicked'");
        doodleEditFragment.tvCancel = (TextView) butterknife.internal.c.a(c10, R.id.tv_cancel, "field 'tvCancel'", TextView.class);
        this.f16947c = c10;
        c10.setOnClickListener(new a(doodleEditFragment));
        View c11 = butterknife.internal.c.c(view, R.id.complete, "field 'complete' and method 'onViewClicked'");
        doodleEditFragment.complete = (TextView) butterknife.internal.c.a(c11, R.id.complete, "field 'complete'", TextView.class);
        this.f16948d = c11;
        c11.setOnClickListener(new b(doodleEditFragment));
        doodleEditFragment.etText = (EditText) butterknife.internal.c.d(view, R.id.et_text, "field 'etText'", EditText.class);
        View c12 = butterknife.internal.c.c(view, R.id.iv_mode, "field 'ivMode' and method 'onViewClicked'");
        doodleEditFragment.ivMode = (ImageView) butterknife.internal.c.a(c12, R.id.iv_mode, "field 'ivMode'", ImageView.class);
        this.f16949e = c12;
        c12.setOnClickListener(new c(doodleEditFragment));
        doodleEditFragment.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        doodleEditFragment.llBottom = (LinearLayout) butterknife.internal.c.d(view, R.id.ll_bottom, "field 'llBottom'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DoodleEditFragment doodleEditFragment = this.f16946b;
        if (doodleEditFragment != null) {
            this.f16946b = null;
            doodleEditFragment.ivBg = null;
            doodleEditFragment.tvCancel = null;
            doodleEditFragment.complete = null;
            doodleEditFragment.etText = null;
            doodleEditFragment.ivMode = null;
            doodleEditFragment.recyclerView = null;
            doodleEditFragment.llBottom = null;
            this.f16947c.setOnClickListener(null);
            this.f16947c = null;
            this.f16948d.setOnClickListener(null);
            this.f16948d = null;
            this.f16949e.setOnClickListener(null);
            this.f16949e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
