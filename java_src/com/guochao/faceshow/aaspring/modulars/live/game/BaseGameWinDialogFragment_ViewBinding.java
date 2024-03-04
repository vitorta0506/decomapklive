package com.guochao.faceshow.aaspring.modulars.live.game;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BaseGameWinDialogFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BaseGameWinDialogFragment f19365b;

    /* renamed from: c  reason: collision with root package name */
    private View f19366c;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseGameWinDialogFragment f19367a;

        a(BaseGameWinDialogFragment baseGameWinDialogFragment) {
            this.f19367a = baseGameWinDialogFragment;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19367a.continueGame(view);
        }
    }

    @UiThread
    public BaseGameWinDialogFragment_ViewBinding(BaseGameWinDialogFragment baseGameWinDialogFragment, View view) {
        this.f19365b = baseGameWinDialogFragment;
        View findViewById = view.findViewById(R.id.continue_game);
        if (findViewById != null) {
            this.f19366c = findViewById;
            findViewById.setOnClickListener(new a(baseGameWinDialogFragment));
        }
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f19365b != null) {
            this.f19365b = null;
            View view = this.f19366c;
            if (view != null) {
                view.setOnClickListener(null);
                this.f19366c = null;
                return;
            }
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
