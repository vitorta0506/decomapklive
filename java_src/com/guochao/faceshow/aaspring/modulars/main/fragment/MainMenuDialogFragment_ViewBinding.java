package com.guochao.faceshow.aaspring.modulars.main.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class MainMenuDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private MainMenuDialogFragment f20742b;

    /* renamed from: c  reason: collision with root package name */
    private View f20743c;

    /* renamed from: d  reason: collision with root package name */
    private View f20744d;

    /* renamed from: e  reason: collision with root package name */
    private View f20745e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MainMenuDialogFragment f20746a;

        a(MainMenuDialogFragment mainMenuDialogFragment) {
            this.f20746a = mainMenuDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20746a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MainMenuDialogFragment f20748a;

        b(MainMenuDialogFragment mainMenuDialogFragment) {
            this.f20748a = mainMenuDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20748a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MainMenuDialogFragment f20750a;

        c(MainMenuDialogFragment mainMenuDialogFragment) {
            this.f20750a = mainMenuDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f20750a.onViewClicked(view);
        }
    }

    @UiThread
    public MainMenuDialogFragment_ViewBinding(MainMenuDialogFragment mainMenuDialogFragment, View view) {
        this.f20742b = mainMenuDialogFragment;
        View c10 = butterknife.internal.c.c(view, R.id.ht_video, "method 'onViewClicked'");
        this.f20743c = c10;
        c10.setOnClickListener(new a(mainMenuDialogFragment));
        View c11 = butterknife.internal.c.c(view, R.id.bg_view, "method 'onViewClicked'");
        this.f20744d = c11;
        c11.setOnClickListener(new b(mainMenuDialogFragment));
        View c12 = butterknife.internal.c.c(view, R.id.ht_photo, "method 'onViewClicked'");
        this.f20745e = c12;
        c12.setOnClickListener(new c(mainMenuDialogFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f20742b != null) {
            this.f20742b = null;
            this.f20743c.setOnClickListener(null);
            this.f20743c = null;
            this.f20744d.setOnClickListener(null);
            this.f20744d = null;
            this.f20745e.setOnClickListener(null);
            this.f20745e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
