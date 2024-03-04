package com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class EntranceCarFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private EntranceCarFragment f21518b;

    /* renamed from: c  reason: collision with root package name */
    private View f21519c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ EntranceCarFragment f21520a;

        a(EntranceCarFragment entranceCarFragment) {
            this.f21520a = entranceCarFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21520a.onClick(view);
        }
    }

    @UiThread
    public EntranceCarFragment_ViewBinding(EntranceCarFragment entranceCarFragment, View view) {
        this.f21518b = entranceCarFragment;
        View c10 = butterknife.internal.c.c(view, R.id.confirmUse, "method 'onClick'");
        this.f21519c = c10;
        c10.setOnClickListener(new a(entranceCarFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f21518b != null) {
            this.f21518b = null;
            this.f21519c.setOnClickListener(null);
            this.f21519c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
