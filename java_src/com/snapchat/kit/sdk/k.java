package com.snapchat.kit.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.gson.Gson;
import com.snapchat.kit.sdk.core.metrics.model.KitPluginType;
import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
import com.snapchat.kit.sdk.core.metrics.model.SkateEvent;
import com.snapchat.kit.sdk.core.metrics.model.SnapKitInitType;
import com.snapchat.kit.sdk.core.security.SecureSharedPreferences;
import java.util.List;
import java.util.Random;
import okhttp3.Cache;
import okhttp3.OkHttpClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final Context f29573a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29574b;

    /* renamed from: c  reason: collision with root package name */
    private final String f29575c;

    /* renamed from: d  reason: collision with root package name */
    private final List<String> f29576d;

    /* renamed from: e  reason: collision with root package name */
    private final SnapKitInitType f29577e;

    /* renamed from: f  reason: collision with root package name */
    private final KitPluginType f29578f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f29579g;
    @Nullable
    @VisibleForTesting(otherwise = 2)

    /* renamed from: h  reason: collision with root package name */
    final String f29580h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context, @NonNull String str, @NonNull String str2, @NonNull List<String> list, @NonNull SnapKitInitType snapKitInitType, @NonNull KitPluginType kitPluginType, boolean z10, @Nullable String str3) {
        this.f29573a = context;
        this.f29574b = str;
        this.f29575c = str2;
        this.f29576d = list;
        this.f29577e = snapKitInitType;
        this.f29578f = kitPluginType;
        this.f29579g = z10;
        this.f29580h = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static be.d a(SharedPreferences sharedPreferences, Gson gson) {
        return new be.d(sharedPreferences, gson);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ce.b b(ce.c cVar) {
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SnapKitAppLifecycleObserver c(he.c cVar) {
        return new SnapKitAppLifecycleObserver(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Gson m() {
        return new Gson();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OkHttpClient p() {
        return new OkHttpClient();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Random q() {
        return new Random();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Handler r() {
        return new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SnapKitInitType d() {
        return this.f29577e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(13:(3:5|6|7)|(6:12|13|(1:15)|16|17|18)|20|21|22|23|(1:25)|26|13|(0)|16|17|18) */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006f A[Catch: Exception -> 0x0084, JsonParseException | IOException | IllegalArgumentException | IllegalStateException | InvalidAlgorithmParameterException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | UnrecoverableEntryException | CertificateException -> 0x008a, TryCatch #0 {JsonParseException | IOException | IllegalArgumentException | IllegalStateException | InvalidAlgorithmParameterException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | UnrecoverableEntryException | CertificateException -> 0x008a, blocks: (B:5:0x0015, B:8:0x0026, B:11:0x002d, B:19:0x0069, B:21:0x006f, B:22:0x007a, B:13:0x0032, B:13:0x0032, B:13:0x0032, B:13:0x0032, B:13:0x0032, B:13:0x0032, B:13:0x0032, B:13:0x0032, B:13:0x0032, B:15:0x003f, B:17:0x0052, B:18:0x0065), top: B:29:0x0015 }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.snapchat.kit.sdk.core.security.SecureSharedPreferences e(com.google.gson.Gson r7, android.content.SharedPreferences r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.f29573a
            java.lang.String r1 = "com.snapchat.connect.sdk.secureSharedPreferences"
            r2 = 0
            android.content.SharedPreferences r0 = r0.getSharedPreferences(r1, r2)
            java.util.Map r1 = r0.getAll()
            boolean r1 = r1.isEmpty()
            r2 = 0
            if (r1 == 0) goto L15
            return r2
        L15:
            java.lang.String r1 = "AndroidKeyStore"
            java.security.KeyStore r1 = java.security.KeyStore.getInstance(r1)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            r1.load(r2)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            r4 = 23
            java.lang.String r5 = "rsa_public"
            if (r3 < r4) goto L32
            boolean r3 = r8.contains(r5)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            if (r3 == 0) goto L2d
            goto L32
        L2d:
            com.snapchat.kit.sdk.core.security.SecretGenerationResult r8 = com.snapchat.kit.sdk.core.security.SecretKeyFactory.getFromKeyStore(r1)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            goto L69
        L32:
            java.lang.String r3 = r8.getString(r5, r2)     // Catch: com.google.gson.JsonParseException -> L3f java.lang.Exception -> L84 java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a
            java.lang.Class<com.snapchat.kit.sdk.core.security.RSAEncryptDecrypt$PublicKeyParams> r4 = com.snapchat.kit.sdk.core.security.RSAEncryptDecrypt.PublicKeyParams.class
            java.lang.Object r3 = r7.fromJson(r3, r4)     // Catch: com.google.gson.JsonParseException -> L3f java.lang.Exception -> L84 java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a
            com.snapchat.kit.sdk.core.security.RSAEncryptDecrypt$PublicKeyParams r3 = (com.snapchat.kit.sdk.core.security.RSAEncryptDecrypt.PublicKeyParams) r3     // Catch: com.google.gson.JsonParseException -> L3f java.lang.Exception -> L84 java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a java.lang.Throwable -> L8a
            r2 = r3
        L3f:
            com.snapchat.kit.sdk.core.security.RSAEncryptDecrypt r3 = new com.snapchat.kit.sdk.core.security.RSAEncryptDecrypt     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            android.content.Context r4 = r6.f29573a     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            r3.<init>(r1, r4, r2)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            com.snapchat.kit.sdk.core.security.RSAEncryptDecrypt$PublicKeyParams r1 = r3.getPublicKeyParams()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            r1 = r1 ^ 1
            if (r1 == 0) goto L65
            android.content.SharedPreferences$Editor r2 = r8.edit()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            com.snapchat.kit.sdk.core.security.RSAEncryptDecrypt$PublicKeyParams r4 = r3.getPublicKeyParams()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            java.lang.String r4 = r7.toJson(r4)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            android.content.SharedPreferences$Editor r2 = r2.putString(r5, r4)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            r2.apply()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
        L65:
            com.snapchat.kit.sdk.core.security.SecretGenerationResult r8 = com.snapchat.kit.sdk.core.security.SecretKeyFactory.getFromSharedPreferences(r8, r3, r1)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
        L69:
            boolean r1 = r8.isNewSecret()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            if (r1 == 0) goto L7a
            android.content.SharedPreferences$Editor r1 = r0.edit()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            android.content.SharedPreferences$Editor r1 = r1.clear()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            r1.apply()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
        L7a:
            com.snapchat.kit.sdk.core.security.AESEncryptDecrypt r1 = new com.snapchat.kit.sdk.core.security.AESEncryptDecrypt     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            javax.crypto.SecretKey r8 = r8.getSecretKey()     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            r1.<init>(r8, r7)     // Catch: java.lang.Exception -> L84 java.lang.Throwable -> L8a
            goto L8f
        L84:
            com.snapchat.kit.sdk.core.security.InsecureEncryptDecrypt r1 = new com.snapchat.kit.sdk.core.security.InsecureEncryptDecrypt
            r1.<init>()
            goto L8f
        L8a:
            com.snapchat.kit.sdk.core.security.InsecureEncryptDecrypt r1 = new com.snapchat.kit.sdk.core.security.InsecureEncryptDecrypt
            r1.<init>()
        L8f:
            com.snapchat.kit.sdk.core.security.SecureSharedPreferences r8 = new com.snapchat.kit.sdk.core.security.SecureSharedPreferences
            r8.<init>(r0, r1, r7)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.snapchat.kit.sdk.k.e(com.google.gson.Gson, android.content.SharedPreferences):com.snapchat.kit.sdk.core.security.SecureSharedPreferences");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f f(@Nullable SecureSharedPreferences secureSharedPreferences, be.d dVar, ce.c cVar, OkHttpClient okHttpClient, dg.a<ie.j> aVar, Gson gson, dg.a<de.b<ServerEvent>> aVar2, ge.f fVar, dg.a<de.b<OpMetric>> aVar3) {
        return new f(this.f29574b, this.f29575c, this.f29576d, this.f29573a, secureSharedPreferences, dVar, cVar, okHttpClient, aVar, gson, aVar2, fVar, aVar3, this.f29578f, this.f29579g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final he.c g(com.snapchat.kit.sdk.core.config.f fVar, he.d dVar, de.b<SkateEvent> bVar, f fVar2, SnapKitInitType snapKitInitType) {
        return new he.c(fVar, dVar, bVar, fVar2, snapKitInitType, this.f29578f, this.f29579g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context h() {
        return this.f29573a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String i() {
        return this.f29574b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String j() {
        return this.f29575c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final KitPluginType k() {
        return this.f29578f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean l() {
        return this.f29579g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SharedPreferences n() {
        return this.f29573a.getSharedPreferences("com.snapchat.connect.sdk.sharedPreferences", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Cache o() {
        return new Cache(this.f29573a.getCacheDir(), PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
    }
}
