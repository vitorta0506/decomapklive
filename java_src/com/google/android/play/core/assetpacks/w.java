package com.google.android.play.core.assetpacks;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.AuthenticationTokenClaims;
import com.facebook.share.internal.ShareConstants;
import com.huawei.hms.push.constant.RemoteMessageConst;
/* loaded from: classes2.dex */
final class w extends com.google.android.play.core.internal.z1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.internal.g f10461a = new com.google.android.play.core.internal.g("AssetPackExtractionService");

    /* renamed from: b  reason: collision with root package name */
    private final Context f10462b;

    /* renamed from: c  reason: collision with root package name */
    private final e0 f10463c;

    /* renamed from: d  reason: collision with root package name */
    private final p3 f10464d;

    /* renamed from: e  reason: collision with root package name */
    private final d1 f10465e;
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    final NotificationManager f10466f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Context context, e0 e0Var, p3 p3Var, d1 d1Var) {
        this.f10462b = context;
        this.f10463c = e0Var;
        this.f10464d = p3Var;
        this.f10465e = d1Var;
        this.f10466f = (NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION);
    }

    private final synchronized void D0(Bundle bundle, com.google.android.play.core.internal.b2 b2Var) throws RemoteException {
        Notification.Builder priority;
        this.f10461a.a("updateServiceState AIDL call", new Object[0]);
        if (com.google.android.play.core.internal.a1.b(this.f10462b) && com.google.android.play.core.internal.a1.a(this.f10462b)) {
            int i9 = bundle.getInt(ShareConstants.WEB_DIALOG_PARAM_ACTION_TYPE);
            this.f10465e.c(b2Var);
            if (i9 != 1) {
                if (i9 == 2) {
                    this.f10464d.d(false);
                    this.f10465e.b();
                    return;
                }
                this.f10461a.b("Unknown action type received: %d", Integer.valueOf(i9));
                b2Var.a(new Bundle());
                return;
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 26) {
                f(bundle.getString("notification_channel_name"));
            }
            this.f10464d.d(true);
            d1 d1Var = this.f10465e;
            String string = bundle.getString("notification_title");
            String string2 = bundle.getString("notification_subtext");
            long j10 = bundle.getLong("notification_timeout", AuthenticationTokenClaims.MAX_TIME_SINCE_TOKEN_ISSUED);
            Parcelable parcelable = bundle.getParcelable("notification_on_click_intent");
            if (i10 >= 26) {
                priority = new Notification.Builder(this.f10462b, "playcore-assetpacks-service-notification-channel").setTimeoutAfter(j10);
            } else {
                priority = new Notification.Builder(this.f10462b).setPriority(-2);
            }
            if (parcelable instanceof PendingIntent) {
                priority.setContentIntent((PendingIntent) parcelable);
            }
            Notification.Builder ongoing = priority.setSmallIcon(17301633).setOngoing(false);
            if (string == null) {
                string = "Downloading additional file";
            }
            Notification.Builder contentTitle = ongoing.setContentTitle(string);
            if (string2 == null) {
                string2 = "Transferring";
            }
            contentTitle.setSubText(string2);
            int i11 = bundle.getInt("notification_color");
            if (i11 != 0) {
                priority.setColor(i11).setVisibility(-1);
            }
            d1Var.a(priority.build());
            this.f10462b.bindService(new Intent(this.f10462b, ExtractionForegroundService.class), this.f10465e, 1);
            return;
        }
        b2Var.a(new Bundle());
    }

    private final synchronized void f(@Nullable String str) {
        if (str == null) {
            str = "File downloads by Play";
        }
        this.f10466f.createNotificationChannel(new NotificationChannel("playcore-assetpacks-service-notification-channel", str, 2));
    }

    @Override // com.google.android.play.core.internal.a2
    public final void F(Bundle bundle, com.google.android.play.core.internal.b2 b2Var) throws RemoteException {
        this.f10461a.a("clearAssetPackStorage AIDL call", new Object[0]);
        if (com.google.android.play.core.internal.a1.b(this.f10462b) && com.google.android.play.core.internal.a1.a(this.f10462b)) {
            this.f10463c.J();
            b2Var.t0(new Bundle());
            return;
        }
        b2Var.a(new Bundle());
    }

    @Override // com.google.android.play.core.internal.a2
    public final void M(Bundle bundle, com.google.android.play.core.internal.b2 b2Var) throws RemoteException {
        D0(bundle, b2Var);
    }
}
