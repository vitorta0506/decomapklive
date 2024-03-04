package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.d f14195a;

    /* renamed from: b  reason: collision with root package name */
    private final e0 f14196b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.gms.cloudmessaging.b f14197c;

    /* renamed from: d  reason: collision with root package name */
    private final k6.b<s6.i> f14198d;

    /* renamed from: e  reason: collision with root package name */
    private final k6.b<HeartBeatInfo> f14199e;

    /* renamed from: f  reason: collision with root package name */
    private final l6.d f14200f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(com.google.firebase.d dVar, e0 e0Var, k6.b<s6.i> bVar, k6.b<HeartBeatInfo> bVar2, l6.d dVar2) {
        this(dVar, e0Var, new com.google.android.gms.cloudmessaging.b(dVar.k()), bVar, bVar2, dVar2);
    }

    private static String b(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private t4.g<String> c(t4.g<Bundle> gVar) {
        return gVar.h(g.f14068a, new t4.a() { // from class: com.google.firebase.messaging.y
            @Override // t4.a
            public final Object a(t4.g gVar2) {
                String h10;
                h10 = z.this.h(gVar2);
                return h10;
            }
        });
    }

    private String d() {
        try {
            return b(MessageDigest.getInstance("SHA-1").digest(this.f14195a.n().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    @AnyThread
    private String f(Bundle bundle) throws IOException {
        if (bundle != null) {
            String string = bundle.getString("registration_id");
            if (string != null) {
                return string;
            }
            String string2 = bundle.getString(PushConstants.EXTRA_UNREGISTERED);
            if (string2 != null) {
                return string2;
            }
            String string3 = bundle.getString("error");
            if ("RST".equals(string3)) {
                throw new IOException("INSTANCE_ID_RESET");
            }
            if (string3 != null) {
                throw new IOException(string3);
            }
            Log.w("FirebaseMessaging", "Unexpected response: " + bundle, new Throwable());
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String h(t4.g gVar) throws Exception {
        return f((Bundle) gVar.l(IOException.class));
    }

    private void i(String str, String str2, Bundle bundle) throws ExecutionException, InterruptedException {
        HeartBeatInfo.HeartBeat b10;
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        bundle.putString("gmp_app_id", this.f14195a.o().c());
        bundle.putString("gmsv", Integer.toString(this.f14196b.d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f14196b.a());
        bundle.putString("app_ver_name", this.f14196b.b());
        bundle.putString("firebase-app-name-hash", d());
        try {
            String b11 = ((com.google.firebase.installations.f) t4.j.a(this.f14200f.a(false))).b();
            if (!TextUtils.isEmpty(b11)) {
                bundle.putString("Goog-Firebase-Installations-Auth", b11);
            } else {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            }
        } catch (InterruptedException | ExecutionException e10) {
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e10);
        }
        bundle.putString("appid", (String) t4.j.a(this.f14200f.getId()));
        bundle.putString("cliv", "fcm-23.0.8");
        HeartBeatInfo heartBeatInfo = this.f14199e.get();
        s6.i iVar = this.f14198d.get();
        if (heartBeatInfo == null || iVar == null || (b10 = heartBeatInfo.b("fire-iid")) == HeartBeatInfo.HeartBeat.NONE) {
            return;
        }
        bundle.putString("Firebase-Client-Log-Type", Integer.toString(b10.getCode()));
        bundle.putString("Firebase-Client", iVar.getUserAgent());
    }

    private t4.g<Bundle> j(String str, String str2, Bundle bundle) {
        try {
            i(str, str2, bundle);
            return this.f14197c.a(bundle);
        } catch (InterruptedException | ExecutionException e10) {
            return t4.j.d(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t4.g<String> e() {
        return c(j(e0.c(this.f14195a), ProxyConfig.MATCH_ALL_SCHEMES, new Bundle()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t4.g<?> k(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        return c(j(str, "/topics/" + str2, bundle));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t4.g<?> l(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", "/topics/" + str2);
        bundle.putString("delete", "1");
        return c(j(str, "/topics/" + str2, bundle));
    }

    @VisibleForTesting
    z(com.google.firebase.d dVar, e0 e0Var, com.google.android.gms.cloudmessaging.b bVar, k6.b<s6.i> bVar2, k6.b<HeartBeatInfo> bVar3, l6.d dVar2) {
        this.f14195a = dVar;
        this.f14196b = e0Var;
        this.f14197c = bVar;
        this.f14198d = bVar2;
        this.f14199e = bVar3;
        this.f14200f = dVar2;
    }
}
