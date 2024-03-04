package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class ErrorDialogFragment extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f7451a;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnCancelListener f7452b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Dialog f7453c;

    @NonNull
    public static ErrorDialogFragment a(@NonNull Dialog dialog, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        Dialog dialog2 = (Dialog) com.google.android.gms.common.internal.p.k(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        errorDialogFragment.f7451a = dialog2;
        if (onCancelListener != null) {
            errorDialogFragment.f7452b = onCancelListener;
        }
        return errorDialogFragment;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(@NonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f7452b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f7451a;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.f7453c == null) {
                this.f7453c = new AlertDialog.Builder((Context) com.google.android.gms.common.internal.p.j(getActivity())).create();
            }
            return this.f7453c;
        }
        return dialog;
    }

    @Override // android.app.DialogFragment
    public void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        super.show(fragmentManager, str);
    }
}
