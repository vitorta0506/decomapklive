package com.facebook.internal.security;

import android.util.Base64;
import android.util.Log;
import androidx.webkit.ProxyConfig;
import com.facebook.FacebookSdk;
import com.facebook.internal.security.OidcSecurityUtil;
import com.tencent.xmagic.license.RSAUtils;
import io.jsonwebtoken.JwsHeader;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import org.light.utils.IOUtils;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0007J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0007R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/security/OidcSecurityUtil;", "", "()V", "OPENID_KEYS_PATH", "", "getOPENID_KEYS_PATH", "()Ljava/lang/String;", "SIGNATURE_ALGORITHM_SHA256", "TIMEOUT_IN_MILLISECONDS", "", "getPublicKeyFromString", "Ljava/security/PublicKey;", "key", "getRawKeyFromEndPoint", JwsHeader.KEY_ID, "verify", "", "publicKey", "data", "signature", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class OidcSecurityUtil {
    @NotNull
    public static final OidcSecurityUtil INSTANCE = new OidcSecurityUtil();
    @NotNull
    private static final String OPENID_KEYS_PATH = "/.well-known/oauth/openid/keys/";
    @NotNull
    public static final String SIGNATURE_ALGORITHM_SHA256 = "SHA256withRSA";
    public static final long TIMEOUT_IN_MILLISECONDS = 5000;

    private OidcSecurityUtil() {
    }

    @JvmStatic
    @NotNull
    public static final PublicKey getPublicKeyFromString(@NotNull String key) {
        String replace$default;
        String replace$default2;
        String replace$default3;
        Intrinsics.checkNotNullParameter(key, "key");
        replace$default = StringsKt__StringsJVMKt.replace$default(key, IOUtils.LINE_SEPARATOR_UNIX, "", false, 4, (Object) null);
        replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "-----BEGIN PUBLIC KEY-----", "", false, 4, (Object) null);
        replace$default3 = StringsKt__StringsJVMKt.replace$default(replace$default2, "-----END PUBLIC KEY-----", "", false, 4, (Object) null);
        byte[] decode = Base64.decode(replace$default3, 0);
        Intrinsics.checkNotNullExpressionValue(decode, "decode(pubKeyString, Base64.DEFAULT)");
        PublicKey generatePublic = KeyFactory.getInstance(RSAUtils.RSA).generatePublic(new X509EncodedKeySpec(decode));
        Intrinsics.checkNotNullExpressionValue(generatePublic, "kf.generatePublic(x509publicKey)");
        return generatePublic;
    }

    @JvmStatic
    @Nullable
    public static final String getRawKeyFromEndPoint(@NotNull final String kid) {
        Intrinsics.checkNotNullParameter(kid, "kid");
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        final URL url = new URL(ProxyConfig.MATCH_HTTPS, Intrinsics.stringPlus("www.", FacebookSdk.getFacebookDomain()), OPENID_KEYS_PATH);
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        FacebookSdk.getExecutor().execute(new Runnable() { // from class: f1.a
            @Override // java.lang.Runnable
            public final void run() {
                OidcSecurityUtil.m169getRawKeyFromEndPoint$lambda1(url, objectRef, kid, reentrantLock, newCondition);
            }
        });
        reentrantLock.lock();
        try {
            newCondition.await(5000L, TimeUnit.MILLISECONDS);
            reentrantLock.unlock();
            return (String) objectRef.element;
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r5v4, types: [T, java.lang.String] */
    /* renamed from: getRawKeyFromEndPoint$lambda-1  reason: not valid java name */
    public static final void m169getRawKeyFromEndPoint$lambda1(URL openIdKeyUrl, Ref.ObjectRef result, String kid, ReentrantLock lock, Condition condition) {
        Intrinsics.checkNotNullParameter(openIdKeyUrl, "$openIdKeyUrl");
        Intrinsics.checkNotNullParameter(result, "$result");
        Intrinsics.checkNotNullParameter(kid, "$kid");
        Intrinsics.checkNotNullParameter(lock, "$lock");
        URLConnection openConnection = openIdKeyUrl.openConnection();
        Objects.requireNonNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        try {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                Intrinsics.checkNotNullExpressionValue(inputStream, "connection.inputStream");
                InputStreamReader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                String readText = TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192));
                httpURLConnection.getInputStream().close();
                result.element = new JSONObject(readText).optString(kid);
                httpURLConnection.disconnect();
                lock.lock();
                try {
                    condition.signal();
                    Unit unit = Unit.INSTANCE;
                } finally {
                }
            } catch (Exception e10) {
                String name = INSTANCE.getClass().getName();
                String message = e10.getMessage();
                if (message == null) {
                    message = "Error getting public key";
                }
                Log.d(name, message);
                httpURLConnection.disconnect();
                lock.lock();
                try {
                    condition.signal();
                    Unit unit2 = Unit.INSTANCE;
                } finally {
                }
            }
        } catch (Throwable th2) {
            httpURLConnection.disconnect();
            lock.lock();
            try {
                condition.signal();
                Unit unit3 = Unit.INSTANCE;
                throw th2;
            } finally {
            }
        }
    }

    @JvmStatic
    public static final boolean verify(@NotNull PublicKey publicKey, @NotNull String data, @NotNull String signature) {
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(signature, "signature");
        try {
            Signature signature2 = Signature.getInstance(SIGNATURE_ALGORITHM_SHA256);
            signature2.initVerify(publicKey);
            byte[] bytes = data.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            signature2.update(bytes);
            byte[] decode = Base64.decode(signature, 8);
            Intrinsics.checkNotNullExpressionValue(decode, "decode(signature, Base64.URL_SAFE)");
            return signature2.verify(decode);
        } catch (Exception unused) {
            return false;
        }
    }

    @NotNull
    public final String getOPENID_KEYS_PATH() {
        return OPENID_KEYS_PATH;
    }
}
