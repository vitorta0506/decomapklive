package com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class MvpBagFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private MvpBagFragment f21532b;

    /* renamed from: c  reason: collision with root package name */
    private View f21533c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MvpBagFragment f21534a;

        a(MvpBagFragment mvpBagFragment) {
            this.f21534a = mvpBagFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21534a.onClick(view);
        }
    }

    @UiThread
    public MvpBagFragment_ViewBinding(MvpBagFragment mvpBagFragment, View view) {
        this.f21532b = mvpBagFragment;
        View c10 = butterknife.internal.c.c(view, R.id.confirmUse, "method 'onClick'");
        this.f21533c = c10;
        c10.setOnClickListener(new a(mvpBagFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f21532b != null) {
            this.f21532b = null;
            this.f21533c.setOnClickListener(null);
            this.f21533c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
