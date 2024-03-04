package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
/* loaded from: classes2.dex */
public class SupportErrorDialogFragment extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f7458a;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnCancelListener f7459b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Dialog f7460c;

    @NonNull
    public static SupportErrorDialogFragment P1(@NonNull Dialog dialog, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
        Dialog dialog2 = (Dialog) com.google.android.gms.common.internal.p.k(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        supportErrorDialogFragment.f7458a = dialog2;
        if (onCancelListener != null) {
            supportErrorDialogFragment.f7459b = onCancelListener;
        }
        return supportErrorDialogFragment;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(@NonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f7459b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f7458a;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.f7460c == null) {
                this.f7460c = new AlertDialog.Builder((Context) com.google.android.gms.common.internal.p.j(getContext())).create();
            }
            return this.f7460c;
        }
        return dialog;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        super.show(fragmentManager, str);
    }
}
