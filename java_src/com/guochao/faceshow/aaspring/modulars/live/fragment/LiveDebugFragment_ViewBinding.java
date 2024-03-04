package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class LiveDebugFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveDebugFragment f19265b;

    /* renamed from: c  reason: collision with root package name */
    private View f19266c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveDebugFragment f19267a;

        a(LiveDebugFragment liveDebugFragment) {
            this.f19267a = liveDebugFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19267a.save(view);
        }
    }

    @UiThread
    public LiveDebugFragment_ViewBinding(LiveDebugFragment liveDebugFragment, View view) {
        this.f19265b = liveDebugFragment;
        View c10 = butterknife.internal.c.c(view, R.id.save, "method 'save'");
        this.f19266c = c10;
        c10.setOnClickListener(new a(liveDebugFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f19265b != null) {
            this.f19265b = null;
            this.f19266c.setOnClickListener(null);
            this.f19266c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
