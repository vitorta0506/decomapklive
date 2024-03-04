package com.guochao.faceshow.aaspring.modulars.live.game;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import butterknife.OnClick;
import butterknife.Optional;
import com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment;
import com.guochao.faceshow.aaspring.utils.SoundPoolManager;
import com.guochao.faceshow.utils.HandlerGetter;
/* loaded from: classes3.dex */
public abstract class BaseGameWinDialogFragment extends BaseDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private boolean f19361a = false;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f19362b = false;

    /* renamed from: c  reason: collision with root package name */
    Fragment f19363c;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c9.a.i().g() != BaseGameWinDialogFragment.this.f19363c) {
                return;
            }
            c9.a.i().P();
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void y0(BaseGameWinDialogFragment baseGameWinDialogFragment, View view);
    }

    public boolean P1() {
        return this.f19362b;
    }

    @OnClick
    @Optional
    public void continueGame(View view) {
        SoundPoolManager.getInstance().playDefaultButtonSound();
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof b) {
            this.f19361a = true;
            ((b) parentFragment).y0(this, view);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        super.dismissAllowingStateLoss();
        this.f19362b = false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        this.f19363c = getParentFragment();
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.f19361a) {
            return;
        }
        HandlerGetter.getMainHandler().post(new a());
    }

    @Override // com.guochao.faceshow.aaspring.base.fragment.BaseDialogFragment, com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment, androidx.fragment.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
        this.f19362b = true;
    }
}
