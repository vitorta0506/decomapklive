package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.CertificateUtil;
import com.facebook.share.internal.ShareConstants;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.concurrent.ExecutionException;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
/* loaded from: classes2.dex */
public class d0 {
    public static boolean A(Intent intent) {
        if (intent == null || r(intent)) {
            return false;
        }
        return B(intent.getExtras());
    }

    public static boolean B(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return "1".equals(bundle.getString("google.c.a.e"));
    }

    static boolean a() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            com.google.firebase.d.l();
            Context k10 = com.google.firebase.d.l().k();
            SharedPreferences sharedPreferences = k10.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("export_to_big_query")) {
                return sharedPreferences.getBoolean("export_to_big_query", false);
            }
            try {
                PackageManager packageManager = k10.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(k10.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                    return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return false;
        } catch (IllegalStateException unused2) {
            Log.i("FirebaseMessaging", "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query");
            return false;
        }
    }

    static MessagingClientEvent b(MessagingClientEvent.Event event, Intent intent) {
        if (intent == null) {
            return null;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            extras = Bundle.EMPTY;
        }
        MessagingClientEvent.a h10 = MessagingClientEvent.p().m(p(extras)).e(event).f(f(extras)).i(m()).k(MessagingClientEvent.SDKPlatform.ANDROID).h(k(extras));
        String h11 = h(extras);
        if (h11 != null) {
            h10.g(h11);
        }
        String o10 = o(extras);
        if (o10 != null) {
            h10.l(o10);
        }
        String c10 = c(extras);
        if (c10 != null) {
            h10.c(c10);
        }
        String i9 = i(extras);
        if (i9 != null) {
            h10.b(i9);
        }
        String e10 = e(extras);
        if (e10 != null) {
            h10.d(e10);
        }
        long n9 = n(extras);
        if (n9 > 0) {
            h10.j(n9);
        }
        return h10.a();
    }

    @Nullable
    static String c(Bundle bundle) {
        return bundle.getString("collapse_key");
    }

    @Nullable
    static String d(Bundle bundle) {
        return bundle.getString("google.c.a.c_id");
    }

    @Nullable
    static String e(Bundle bundle) {
        return bundle.getString("google.c.a.c_l");
    }

    @NonNull
    static String f(Bundle bundle) {
        String string = bundle.getString("google.to");
        if (TextUtils.isEmpty(string)) {
            try {
                return (String) t4.j.a(com.google.firebase.installations.c.o(com.google.firebase.d.l()).getId());
            } catch (InterruptedException | ExecutionException e10) {
                throw new RuntimeException(e10);
            }
        }
        return string;
    }

    @Nullable
    static String g(Bundle bundle) {
        return bundle.getString("google.c.a.m_c");
    }

    @Nullable
    static String h(Bundle bundle) {
        String string = bundle.getString("google.message_id");
        return string == null ? bundle.getString("message_id") : string;
    }

    @Nullable
    static String i(Bundle bundle) {
        return bundle.getString("google.c.a.m_l");
    }

    @Nullable
    static String j(Bundle bundle) {
        return bundle.getString("google.c.a.ts");
    }

    @NonNull
    static MessagingClientEvent.MessageType k(Bundle bundle) {
        if (bundle != null && f0.t(bundle)) {
            return MessagingClientEvent.MessageType.DISPLAY_NOTIFICATION;
        }
        return MessagingClientEvent.MessageType.DATA_MESSAGE;
    }

    @NonNull
    static String l(Bundle bundle) {
        return (bundle == null || !f0.t(bundle)) ? "data" : ServerProtocol.DIALOG_PARAM_DISPLAY;
    }

    @NonNull
    static String m() {
        return com.google.firebase.d.l().k().getPackageName();
    }

    @Nullable
    static long n(Bundle bundle) {
        if (bundle.containsKey("google.c.sender.id")) {
            try {
                return Long.parseLong(bundle.getString("google.c.sender.id"));
            } catch (NumberFormatException e10) {
                Log.w("FirebaseMessaging", "error parsing project number", e10);
            }
        }
        com.google.firebase.d l10 = com.google.firebase.d.l();
        String d10 = l10.o().d();
        if (d10 != null) {
            try {
                return Long.parseLong(d10);
            } catch (NumberFormatException e11) {
                Log.w("FirebaseMessaging", "error parsing sender ID", e11);
            }
        }
        String c10 = l10.o().c();
        if (!c10.startsWith("1:")) {
            try {
                return Long.parseLong(c10);
            } catch (NumberFormatException e12) {
                Log.w("FirebaseMessaging", "error parsing app ID", e12);
            }
        } else {
            String[] split = c10.split(CertificateUtil.DELIMITER);
            if (split.length < 2) {
                return 0L;
            }
            String str = split[1];
            if (str.isEmpty()) {
                return 0L;
            }
            try {
                return Long.parseLong(str);
            } catch (NumberFormatException e13) {
                Log.w("FirebaseMessaging", "error parsing app ID", e13);
            }
        }
        return 0L;
    }

    @Nullable
    static String o(Bundle bundle) {
        String string = bundle.getString("from");
        if (string == null || !string.startsWith("/topics/")) {
            return null;
        }
        return string;
    }

    @NonNull
    static int p(Bundle bundle) {
        Object obj = bundle.get("google.ttl");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (obj instanceof String) {
            try {
                return Integer.parseInt((String) obj);
            } catch (NumberFormatException unused) {
                Log.w("FirebaseMessaging", "Invalid TTL: " + obj);
                return 0;
            }
        }
        return 0;
    }

    @Nullable
    static String q(Bundle bundle) {
        if (bundle.containsKey("google.c.a.udt")) {
            return bundle.getString("google.c.a.udt");
        }
        return null;
    }

    private static boolean r(Intent intent) {
        return FirebaseMessagingService.ACTION_DIRECT_BOOT_REMOTE_INTENT.equals(intent.getAction());
    }

    public static void s(Intent intent) {
        x("_nd", intent.getExtras());
    }

    public static void t(Intent intent) {
        x("_nf", intent.getExtras());
    }

    public static void u(Bundle bundle) {
        y(bundle);
        x("_no", bundle);
    }

    public static void v(Intent intent) {
        if (A(intent)) {
            x("_nr", intent.getExtras());
        }
        if (z(intent)) {
            w(MessagingClientEvent.Event.MESSAGE_DELIVERED, intent, FirebaseMessaging.q());
        }
    }

    private static void w(MessagingClientEvent.Event event, Intent intent, @Nullable l1.f fVar) {
        if (fVar == null) {
            Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
            return;
        }
        MessagingClientEvent b10 = b(event, intent);
        if (b10 == null) {
            return;
        }
        try {
            fVar.a("FCM_CLIENT_EVENT_LOGGING", q6.a.class, l1.b.b("proto"), new l1.d() { // from class: com.google.firebase.messaging.c0
                @Override // l1.d
                public final Object apply(Object obj) {
                    return ((q6.a) obj).c();
                }
            }).a(l1.c.d(q6.a.b().b(b10).a()));
        } catch (RuntimeException e10) {
            Log.w("FirebaseMessaging", "Failed to send big query analytics payload.", e10);
        }
    }

    @VisibleForTesting
    static void x(String str, Bundle bundle) {
        try {
            com.google.firebase.d.l();
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = new Bundle();
            String d10 = d(bundle);
            if (d10 != null) {
                bundle2.putString("_nmid", d10);
            }
            String e10 = e(bundle);
            if (e10 != null) {
                bundle2.putString("_nmn", e10);
            }
            String i9 = i(bundle);
            if (!TextUtils.isEmpty(i9)) {
                bundle2.putString(AnnotatedPrivateKey.LABEL, i9);
            }
            String g10 = g(bundle);
            if (!TextUtils.isEmpty(g10)) {
                bundle2.putString("message_channel", g10);
            }
            String o10 = o(bundle);
            if (o10 != null) {
                bundle2.putString("_nt", o10);
            }
            String j10 = j(bundle);
            if (j10 != null) {
                try {
                    bundle2.putInt("_nmt", Integer.parseInt(j10));
                } catch (NumberFormatException e11) {
                    Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e11);
                }
            }
            String q10 = q(bundle);
            if (q10 != null) {
                try {
                    bundle2.putInt("_ndt", Integer.parseInt(q10));
                } catch (NumberFormatException e12) {
                    Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e12);
                }
            }
            String l10 = l(bundle);
            if ("_nr".equals(str) || "_nf".equals(str)) {
                bundle2.putString("_nmc", l10);
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Logging to scion event=" + str + " scionPayload=" + bundle2);
            }
            z5.a aVar = (z5.a) com.google.firebase.d.l().i(z5.a.class);
            if (aVar != null) {
                aVar.a("fcm", str, bundle2);
            } else {
                Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
            }
        } catch (IllegalStateException unused) {
            Log.e("FirebaseMessaging", "Default FirebaseApp has not been initialized. Skip logging event to GA.");
        }
    }

    private static void y(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if ("1".equals(bundle.getString("google.c.a.tc"))) {
            z5.a aVar = (z5.a) com.google.firebase.d.l().i(z5.a.class);
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Received event with track-conversion=true. Setting user property and reengagement event");
            }
            if (aVar != null) {
                String string = bundle.getString("google.c.a.c_id");
                aVar.b("fcm", "_ln", string);
                Bundle bundle2 = new Bundle();
                bundle2.putString(ShareConstants.FEED_SOURCE_PARAM, "Firebase");
                bundle2.putString("medium", RemoteMessageConst.NOTIFICATION);
                bundle2.putString("campaign", string);
                aVar.a("fcm", "_cmp", bundle2);
                return;
            }
            Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
        } else if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Received event with track-conversion=false. Do not set user property");
        }
    }

    public static boolean z(Intent intent) {
        if (intent == null || r(intent)) {
            return false;
        }
        return a();
    }
}
