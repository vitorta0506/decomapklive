package com.huawei.hms.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes4.dex */
public abstract class AbstractDialog {

    /* renamed from: a  reason: collision with root package name */
    public Activity f27829a;

    /* renamed from: b  reason: collision with root package name */
    public AlertDialog f27830b;

    /* renamed from: c  reason: collision with root package name */
    public Callback f27831c;

    /* loaded from: classes4.dex */
    public interface Callback {
        void onCancel(AbstractDialog abstractDialog);

        void onDoWork(AbstractDialog abstractDialog);
    }

    /* loaded from: classes4.dex */
    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i9) {
            AbstractDialog.this.fireDoWork();
        }
    }

    /* loaded from: classes4.dex */
    public class b implements DialogInterface.OnClickListener {
        public b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i9) {
            AbstractDialog.this.cancel();
        }
    }

    /* loaded from: classes4.dex */
    public class c implements DialogInterface.OnCancelListener {
        public c() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            AbstractDialog.this.fireCancel();
        }
    }

    /* loaded from: classes4.dex */
    public class d implements DialogInterface.OnKeyListener {
        public d() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i9, KeyEvent keyEvent) {
            if (4 == i9 && keyEvent.getAction() == 1) {
                AbstractDialog.this.cancel();
                return true;
            }
            return false;
        }
    }

    public static int a(Context context) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier("androidhwext:style/Theme.Emui", null, null);
    }

    public void cancel() {
        AlertDialog alertDialog = this.f27830b;
        if (alertDialog != null) {
            alertDialog.cancel();
        }
    }

    public void dismiss() {
        AlertDialog alertDialog = this.f27830b;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    public void fireCancel() {
        Callback callback = this.f27831c;
        if (callback != null) {
            callback.onCancel(this);
        }
    }

    public void fireDoWork() {
        Callback callback = this.f27831c;
        if (callback != null) {
            callback.onDoWork(this);
        }
    }

    public Activity getActivity() {
        return this.f27829a;
    }

    public int getDialogThemeId() {
        return a(this.f27829a) != 0 ? 0 : 3;
    }

    public AlertDialog onCreateDialog(Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity(), getDialogThemeId());
        String onGetTitleString = onGetTitleString(activity);
        if (onGetTitleString != null) {
            builder.setTitle(onGetTitleString);
        }
        String onGetMessageString = onGetMessageString(activity);
        if (onGetMessageString != null) {
            builder.setMessage(onGetMessageString);
        }
        String onGetPositiveButtonString = onGetPositiveButtonString(activity);
        if (onGetPositiveButtonString != null) {
            builder.setPositiveButton(onGetPositiveButtonString, new a());
        }
        String onGetNegativeButtonString = onGetNegativeButtonString(activity);
        if (onGetNegativeButtonString != null) {
            builder.setNegativeButton(onGetNegativeButtonString, new b());
        }
        return builder.create();
    }

    public abstract String onGetMessageString(Context context);

    public abstract String onGetNegativeButtonString(Context context);

    public abstract String onGetPositiveButtonString(Context context);

    public abstract String onGetTitleString(Context context);

    public void setMessage(CharSequence charSequence) {
        AlertDialog alertDialog = this.f27830b;
        if (alertDialog != null) {
            alertDialog.setMessage(charSequence);
        }
    }

    public void setTitle(CharSequence charSequence) {
        AlertDialog alertDialog = this.f27830b;
        if (alertDialog != null) {
            alertDialog.setTitle(charSequence);
        }
    }

    public void show(Activity activity, Callback callback) {
        this.f27829a = activity;
        this.f27831c = callback;
        if (activity != null && !activity.isFinishing()) {
            AlertDialog onCreateDialog = onCreateDialog(this.f27829a);
            this.f27830b = onCreateDialog;
            onCreateDialog.setCanceledOnTouchOutside(false);
            this.f27830b.setOnCancelListener(new c());
            this.f27830b.setOnKeyListener(new d());
            this.f27830b.show();
            return;
        }
        HMSLog.e("AbstractDialog", "In show, The activity is null or finishing.");
    }
}
