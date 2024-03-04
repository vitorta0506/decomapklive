package com.guochao.faceshow.aaspring.modulars.share.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class PrivateShareFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private PrivateShareFragment f21740b;

    /* renamed from: c  reason: collision with root package name */
    private View f21741c;

    /* renamed from: d  reason: collision with root package name */
    private View f21742d;

    /* renamed from: e  reason: collision with root package name */
    private View f21743e;

    /* renamed from: f  reason: collision with root package name */
    private View f21744f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PrivateShareFragment f21745a;

        a(PrivateShareFragment privateShareFragment) {
            this.f21745a = privateShareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21745a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PrivateShareFragment f21747a;

        b(PrivateShareFragment privateShareFragment) {
            this.f21747a = privateShareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21747a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class c extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PrivateShareFragment f21749a;

        c(PrivateShareFragment privateShareFragment) {
            this.f21749a = privateShareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21749a.onButtonClick(view);
        }
    }

    /* loaded from: classes3.dex */
    class d extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PrivateShareFragment f21751a;

        d(PrivateShareFragment privateShareFragment) {
            this.f21751a = privateShareFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21751a.onButtonClick(view);
        }
    }

    @UiThread
    public PrivateShareFragment_ViewBinding(PrivateShareFragment privateShareFragment, View view) {
        this.f21740b = privateShareFragment;
        View c10 = butterknife.internal.c.c(view, R.id.up_to_public, "method 'onButtonClick'");
        this.f21741c = c10;
        c10.setOnClickListener(new a(privateShareFragment));
        View c11 = butterknife.internal.c.c(view, R.id.save_btn, "method 'onButtonClick'");
        this.f21742d = c11;
        c11.setOnClickListener(new b(privateShareFragment));
        View c12 = butterknife.internal.c.c(view, R.id.delete_video, "method 'onButtonClick'");
        this.f21743e = c12;
        c12.setOnClickListener(new c(privateShareFragment));
        View c13 = butterknife.internal.c.c(view, R.id.cancel, "method 'onButtonClick'");
        this.f21744f = c13;
        c13.setOnClickListener(new d(privateShareFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f21740b != null) {
            this.f21740b = null;
            this.f21741c.setOnClickListener(null);
            this.f21741c = null;
            this.f21742d.setOnClickListener(null);
            this.f21742d = null;
            this.f21743e.setOnClickListener(null);
            this.f21743e = null;
            this.f21744f.setOnClickListener(null);
            this.f21744f = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
