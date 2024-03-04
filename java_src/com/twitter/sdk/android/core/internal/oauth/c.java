package com.twitter.sdk.android.core.internal.oauth;

import com.guochao.faceshow.aaspring.utils.Constants;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.l;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.text.Typography;
import okio.ByteString;
import ve.f;
/* loaded from: classes4.dex */
class c {

    /* renamed from: g  reason: collision with root package name */
    private static final SecureRandom f35190g = new SecureRandom();

    /* renamed from: a  reason: collision with root package name */
    private final TwitterAuthConfig f35191a;

    /* renamed from: b  reason: collision with root package name */
    private final TwitterAuthToken f35192b;

    /* renamed from: c  reason: collision with root package name */
    private final String f35193c;

    /* renamed from: d  reason: collision with root package name */
    private final String f35194d;

    /* renamed from: e  reason: collision with root package name */
    private final String f35195e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, String> f35196f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        this.f35191a = twitterAuthConfig;
        this.f35192b = twitterAuthToken;
        this.f35193c = str;
        this.f35194d = str2;
        this.f35195e = str3;
        this.f35196f = map;
    }

    private void a(StringBuilder sb2, String str, String str2) {
        if (str2 != null) {
            sb2.append(' ');
            sb2.append(f.c(str));
            sb2.append("=\"");
            sb2.append(f.c(str2));
            sb2.append("\",");
        }
    }

    private String f(TreeMap<String, String> treeMap) {
        StringBuilder sb2 = new StringBuilder();
        int size = treeMap.size();
        int i9 = 0;
        for (Map.Entry<String, String> entry : treeMap.entrySet()) {
            sb2.append(f.c(f.c(entry.getKey())));
            sb2.append("%3D");
            sb2.append(f.c(f.c(entry.getValue())));
            i9++;
            if (i9 < size) {
                sb2.append("%26");
            }
        }
        return sb2.toString();
    }

    private String g() {
        return String.valueOf(System.nanoTime()) + String.valueOf(Math.abs(f35190g.nextLong()));
    }

    private String h() {
        TwitterAuthToken twitterAuthToken = this.f35192b;
        String str = twitterAuthToken != null ? twitterAuthToken.secret : null;
        return f.e(this.f35191a.b()) + Typography.amp + f.e(str);
    }

    private String i() {
        return Long.toString(System.currentTimeMillis() / 1000);
    }

    String b(String str) {
        try {
            String h10 = h();
            byte[] bytes = str.getBytes("UTF8");
            SecretKeySpec secretKeySpec = new SecretKeySpec(h10.getBytes("UTF8"), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            byte[] doFinal = mac.doFinal(bytes);
            return ByteString.of(doFinal, 0, doFinal.length).base64();
        } catch (UnsupportedEncodingException e10) {
            l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Failed to calculate signature", e10);
            return "";
        } catch (InvalidKeyException e11) {
            l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Failed to calculate signature", e11);
            return "";
        } catch (NoSuchAlgorithmException e12) {
            l.g().e(Constants.ThirdPartyLogin.PLATFORM_TWITTER, "Failed to calculate signature", e12);
            return "";
        }
    }

    String c(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder("OAuth");
        a(sb2, "oauth_callback", this.f35193c);
        a(sb2, "oauth_consumer_key", this.f35191a.a());
        a(sb2, "oauth_nonce", str);
        a(sb2, "oauth_signature", str3);
        a(sb2, "oauth_signature_method", "HMAC-SHA1");
        a(sb2, "oauth_timestamp", str2);
        TwitterAuthToken twitterAuthToken = this.f35192b;
        a(sb2, "oauth_token", twitterAuthToken != null ? twitterAuthToken.token : null);
        a(sb2, "oauth_version", "1.0");
        return sb2.substring(0, sb2.length() - 1);
    }

    String d(String str, String str2) {
        URI create;
        String str3;
        TreeMap<String, String> b10 = f.b(URI.create(this.f35195e), true);
        Map<String, String> map = this.f35196f;
        if (map != null) {
            b10.putAll(map);
        }
        String str4 = this.f35193c;
        if (str4 != null) {
            b10.put("oauth_callback", str4);
        }
        b10.put("oauth_consumer_key", this.f35191a.a());
        b10.put("oauth_nonce", str);
        b10.put("oauth_signature_method", "HMAC-SHA1");
        b10.put("oauth_timestamp", str2);
        TwitterAuthToken twitterAuthToken = this.f35192b;
        if (twitterAuthToken != null && (str3 = twitterAuthToken.token) != null) {
            b10.put("oauth_token", str3);
        }
        b10.put("oauth_version", "1.0");
        String str5 = create.getScheme() + "://" + create.getHost() + create.getPath();
        return this.f35194d.toUpperCase(Locale.ENGLISH) + Typography.amp + f.c(str5) + Typography.amp + f(b10);
    }

    public String e() {
        String g10 = g();
        String i9 = i();
        return c(g10, i9, b(d(g10, i9)));
    }
}
