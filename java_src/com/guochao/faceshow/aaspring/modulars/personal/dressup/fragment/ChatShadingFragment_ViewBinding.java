package com.guochao.faceshow.aaspring.modulars.personal.dressup.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class ChatShadingFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private ChatShadingFragment f21499b;

    /* renamed from: c  reason: collision with root package name */
    private View f21500c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChatShadingFragment f21501a;

        a(ChatShadingFragment chatShadingFragment) {
            this.f21501a = chatShadingFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21501a.onClick(view);
        }
    }

    @UiThread
    public ChatShadingFragment_ViewBinding(ChatShadingFragment chatShadingFragment, View view) {
        this.f21499b = chatShadingFragment;
        View c10 = butterknife.internal.c.c(view, R.id.confirmUse, "method 'onClick'");
        this.f21500c = c10;
        c10.setOnClickListener(new a(chatShadingFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f21499b != null) {
            this.f21499b = null;
            this.f21500c.setOnClickListener(null);
            this.f21500c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
