package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BaseLiveInfoFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseLiveInfoFragment f18478b;

    /* renamed from: c  reason: collision with root package name */
    private View f18479c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseLiveInfoFragment f18480a;

        a(BaseLiveInfoFragment baseLiveInfoFragment) {
            this.f18480a = baseLiveInfoFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18480a.empty(view);
        }
    }

    @UiThread
    public BaseLiveInfoFragment_ViewBinding(BaseLiveInfoFragment baseLiveInfoFragment, View view) {
        this.f18478b = baseLiveInfoFragment;
        View findViewById = view.findViewById(R.id.main_content);
        if (findViewById != null) {
            this.f18479c = findViewById;
            findViewById.setOnClickListener(new a(baseLiveInfoFragment));
        }
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f18478b != null) {
            this.f18478b = null;
            View view = this.f18479c;
            if (view != null) {
                view.setOnClickListener(null);
                this.f18479c = null;
                return;
            }
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
