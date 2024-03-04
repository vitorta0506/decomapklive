package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.base.R$drawable;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.zabx;
import com.google.android.gms.common.internal.a0;
import com.google.android.gms.common.internal.d0;
import com.google.android.gms.internal.base.zao;
import com.google.errorprone.annotations.RestrictedInheritance;
import com.huawei.hms.push.constant.RemoteMessageConst;
@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms.*", allowlistAnnotations = {k4.d.class, k4.e.class}, explanation = "Sub classing of GMS Core's APIs are restricted to GMS Core client libs and testing fakes.", link = "go/gmscore-restrictedinheritance")
/* loaded from: classes2.dex */
public class a extends b {
    @GuardedBy("mLock")

    /* renamed from: c  reason: collision with root package name */
    private String f7464c;

    /* renamed from: e  reason: collision with root package name */
    private static final Object f7462e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private static final a f7463f = new a();

    /* renamed from: d  reason: collision with root package name */
    public static final int f7461d = b.f7623a;

    @NonNull
    public static a m() {
        return f7463f;
    }

    @Override // com.google.android.gms.common.b
    @Nullable
    public Intent b(@Nullable Context context, int i9, @Nullable String str) {
        return super.b(context, i9, str);
    }

    @Override // com.google.android.gms.common.b
    @Nullable
    public PendingIntent c(@NonNull Context context, int i9, int i10) {
        return super.c(context, i9, i10);
    }

    @Override // com.google.android.gms.common.b
    @NonNull
    public final String e(int i9) {
        return super.e(i9);
    }

    @Override // com.google.android.gms.common.b
    public int g(@NonNull Context context) {
        return super.g(context);
    }

    @Override // com.google.android.gms.common.b
    public int h(@NonNull Context context, int i9) {
        return super.h(context, i9);
    }

    @Override // com.google.android.gms.common.b
    public final boolean j(int i9) {
        return super.j(i9);
    }

    @Nullable
    public Dialog k(@NonNull Activity activity, int i9, int i10, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return p(activity, i9, d0.b(activity, b(activity, i9, "d"), i10), onCancelListener);
    }

    @Nullable
    public PendingIntent l(@NonNull Context context, @NonNull ConnectionResult connectionResult) {
        if (connectionResult.M()) {
            return connectionResult.L();
        }
        return c(context, connectionResult.I(), 0);
    }

    public boolean n(@NonNull Activity activity, int i9, int i10, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        Dialog k10 = k(activity, i9, i10, onCancelListener);
        if (k10 == null) {
            return false;
        }
        s(activity, k10, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public void o(@NonNull Context context, int i9) {
        t(context, i9, null, d(context, i9, 0, "n"));
    }

    @Nullable
    final Dialog p(@NonNull Context context, int i9, d0 d0Var, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (i9 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843529, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(a0.d(context, i9));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String c10 = a0.c(context, i9);
        if (c10 != null) {
            builder.setPositiveButton(c10, d0Var);
        }
        String g10 = a0.g(context, i9);
        if (g10 != null) {
            builder.setTitle(g10);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i9)), new IllegalArgumentException());
        return builder.create();
    }

    @NonNull
    public final Dialog q(@NonNull Activity activity, @NonNull DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(a0.d(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        s(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    @Nullable
    public final zabx r(Context context, v3.r rVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        zabx zabxVar = new zabx(rVar);
        zao.a(context, zabxVar, intentFilter);
        zabxVar.a(context);
        if (i(context, "com.google.android.gms")) {
            return zabxVar;
        }
        rVar.a();
        zabxVar.b();
        return null;
    }

    final void s(Activity activity, Dialog dialog, String str, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                SupportErrorDialogFragment.P1(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        ErrorDialogFragment.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    final void t(Context context, int i9, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        int i10;
        String str2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i9), null), new IllegalArgumentException());
        if (i9 == 18) {
            u(context);
        } else if (pendingIntent == null) {
            if (i9 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
            }
        } else {
            String f10 = a0.f(context, i9);
            String e10 = a0.e(context, i9);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) com.google.android.gms.common.internal.p.j(context.getSystemService(RemoteMessageConst.NOTIFICATION));
            NotificationCompat.Builder style = new NotificationCompat.Builder(context).setLocalOnly(true).setAutoCancel(true).setContentTitle(f10).setStyle(new NotificationCompat.BigTextStyle().bigText(e10));
            if (e4.h.c(context)) {
                com.google.android.gms.common.internal.p.n(e4.m.e());
                style.setSmallIcon(context.getApplicationInfo().icon).setPriority(2);
                if (e4.h.d(context)) {
                    style.addAction(R$drawable.common_full_open_on_phone, resources.getString(com.google.android.gms.base.R$string.common_open_on_phone), pendingIntent);
                } else {
                    style.setContentIntent(pendingIntent);
                }
            } else {
                style.setSmallIcon(17301642).setTicker(resources.getString(com.google.android.gms.base.R$string.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setContentIntent(pendingIntent).setContentText(e10);
            }
            if (e4.m.h()) {
                com.google.android.gms.common.internal.p.n(e4.m.h());
                synchronized (f7462e) {
                    str2 = this.f7464c;
                }
                if (str2 == null) {
                    str2 = "com.google.android.gms.availability";
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String b10 = a0.b(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", b10, 4));
                    } else if (!b10.contentEquals(notificationChannel.getName())) {
                        notificationChannel.setName(b10);
                        notificationManager.createNotificationChannel(notificationChannel);
                    }
                }
                style.setChannelId(str2);
            }
            Notification build = style.build();
            if (i9 == 1 || i9 == 2 || i9 == 3) {
                d.f7627b.set(false);
                i10 = 10436;
            } else {
                i10 = 39789;
            }
            notificationManager.notify(i10, build);
        }
    }

    final void u(Context context) {
        new f(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    public final boolean v(@NonNull Activity activity, @NonNull v3.e eVar, int i9, int i10, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        Dialog p10 = p(activity, i9, d0.c(eVar, b(activity, i9, "d"), 2), onCancelListener);
        if (p10 == null) {
            return false;
        }
        s(activity, p10, "GooglePlayServicesErrorDialog", onCancelListener);
        return true;
    }

    public final boolean w(@NonNull Context context, @NonNull ConnectionResult connectionResult, int i9) {
        PendingIntent l10;
        if (g4.a.a(context) || (l10 = l(context, connectionResult)) == null) {
            return false;
        }
        t(context, connectionResult.I(), null, PendingIntent.getActivity(context, 0, GoogleApiActivity.a(context, l10, i9, true), k4.g.f53640a | 134217728));
        return true;
    }
}
