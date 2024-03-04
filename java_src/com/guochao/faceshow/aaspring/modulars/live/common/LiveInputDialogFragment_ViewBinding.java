package com.guochao.faceshow.aaspring.modulars.live.common;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class LiveInputDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private LiveInputDialogFragment f18729b;

    /* renamed from: c  reason: collision with root package name */
    private View f18730c;

    /* renamed from: d  reason: collision with root package name */
    private View f18731d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveInputDialogFragment f18732a;

        a(LiveInputDialogFragment liveInputDialogFragment) {
            this.f18732a = liveInputDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18732a.send(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LiveInputDialogFragment f18734a;

        b(LiveInputDialogFragment liveInputDialogFragment) {
            this.f18734a = liveInputDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f18734a.openDanmu(view);
        }
    }

    @UiThread
    public LiveInputDialogFragment_ViewBinding(LiveInputDialogFragment liveInputDialogFragment, View view) {
        this.f18729b = liveInputDialogFragment;
        liveInputDialogFragment.mEditText = (EditText) butterknife.internal.c.d(view, R.id.live_bottom_edit_text, "field 'mEditText'", EditText.class);
        View c10 = butterknife.internal.c.c(view, R.id.btn_send, "field 'btnSend' and method 'send'");
        liveInputDialogFragment.btnSend = (ImageView) butterknife.internal.c.a(c10, R.id.btn_send, "field 'btnSend'", ImageView.class);
        this.f18730c = c10;
        c10.setOnClickListener(new a(liveInputDialogFragment));
        View c11 = butterknife.internal.c.c(view, R.id.switch_live_danmu, "field 'mViewLiveDanmuSwitch' and method 'openDanmu'");
        liveInputDialogFragment.mViewLiveDanmuSwitch = c11;
        this.f18731d = c11;
        c11.setOnClickListener(new b(liveInputDialogFragment));
        liveInputDialogFragment.mGuideDanmu = butterknife.internal.c.c(view, R.id.guide_danmu, "field 'mGuideDanmu'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiveInputDialogFragment liveInputDialogFragment = this.f18729b;
        if (liveInputDialogFragment != null) {
            this.f18729b = null;
            liveInputDialogFragment.mEditText = null;
            liveInputDialogFragment.btnSend = null;
            liveInputDialogFragment.mViewLiveDanmuSwitch = null;
            liveInputDialogFragment.mGuideDanmu = null;
            this.f18730c.setOnClickListener(null);
            this.f18730c = null;
            this.f18731d.setOnClickListener(null);
            this.f18731d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
