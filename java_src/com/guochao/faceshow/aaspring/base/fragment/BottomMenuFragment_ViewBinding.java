package com.guochao.faceshow.aaspring.base.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BottomMenuFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BottomMenuFragment f16140b;

    /* renamed from: c  reason: collision with root package name */
    private View f16141c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BottomMenuFragment f16142a;

        a(BottomMenuFragment bottomMenuFragment) {
            this.f16142a = bottomMenuFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f16142a.cancel(view);
        }
    }

    @UiThread
    public BottomMenuFragment_ViewBinding(BottomMenuFragment bottomMenuFragment, View view) {
        this.f16140b = bottomMenuFragment;
        View c10 = butterknife.internal.c.c(view, R.id.cancel, "method 'cancel'");
        this.f16141c = c10;
        c10.setOnClickListener(new a(bottomMenuFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f16140b != null) {
            this.f16140b = null;
            this.f16141c.setOnClickListener(null);
            this.f16141c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
