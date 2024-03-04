package wc;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.facebook.AccessToken;
import com.linecorp.linesdk.LineIdToken;
import com.linecorp.linesdk.internal.IdTokenKeyType;
import com.linecorp.linesdk.internal.pkce.PKCECode;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: f  reason: collision with root package name */
    private static final xc.c<vc.b> f59441f = new d();

    /* renamed from: g  reason: collision with root package name */
    private static final xc.c<vc.i> f59442g = new c();

    /* renamed from: h  reason: collision with root package name */
    private static final xc.c<?> f59443h = new f();

    /* renamed from: i  reason: collision with root package name */
    private static final xc.c<vc.h> f59444i = new g();

    /* renamed from: j  reason: collision with root package name */
    private static final xc.c<vc.f> f59445j = new wc.c();
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Uri f59446a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final xc.a f59447b;

    /* renamed from: c  reason: collision with root package name */
    private final xc.c<vc.e> f59448c;

    /* renamed from: d  reason: collision with root package name */
    private final h f59449d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final Uri f59450e;

    /* loaded from: classes4.dex */
    private class b extends wc.d<vc.e> {
        private b() {
        }

        private LineIdToken c(String str) throws Exception {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return wc.a.c(str, e.this.f59449d);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: d */
        public vc.e b(@NonNull JSONObject jSONObject) throws JSONException {
            String string = jSONObject.getString("token_type");
            if ("Bearer".equals(string)) {
                try {
                    return new vc.e(new vc.d(jSONObject.getString("access_token"), 1000 * jSONObject.getLong(AccessToken.EXPIRES_IN_KEY), System.currentTimeMillis(), jSONObject.getString("refresh_token")), qc.e.e(jSONObject.getString("scope")), c(jSONObject.optString("id_token")));
                } catch (Exception e10) {
                    throw new JSONException(e10.getMessage());
                }
            }
            throw new JSONException("Illegal token type. token_type=" + string);
        }
    }

    /* loaded from: classes4.dex */
    private static class c extends wc.d<vc.i> {
        private c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public vc.i b(@NonNull JSONObject jSONObject) throws JSONException {
            String string = jSONObject.getString("token_type");
            if ("Bearer".equals(string)) {
                return new vc.i(jSONObject.getString("access_token"), 1000 * jSONObject.getLong(AccessToken.EXPIRES_IN_KEY), jSONObject.getString("refresh_token"), qc.e.e(jSONObject.getString("scope")));
            }
            throw new JSONException("Illegal token type. token_type=" + string);
        }
    }

    /* loaded from: classes4.dex */
    private static class d extends wc.d<vc.b> {
        private d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // wc.d
        @NonNull
        /* renamed from: c */
        public vc.b b(@NonNull JSONObject jSONObject) throws JSONException {
            return new vc.b(jSONObject.getString("client_id"), jSONObject.getLong(AccessToken.EXPIRES_IN_KEY) * 1000, qc.e.e(jSONObject.getString("scope")));
        }
    }

    public e(@NonNull Context context, @NonNull Uri uri, @NonNull Uri uri2) {
        this(uri, uri2, new xc.a(context, "5.7.0"));
    }

    @NonNull
    public qc.c<vc.f> b() {
        qc.c<vc.h> c10 = c();
        if (!c10.g()) {
            return qc.c.a(c10.d(), c10.c());
        }
        qc.c<vc.f> b10 = this.f59447b.b(Uri.parse(c10.e().b()), Collections.emptyMap(), Collections.emptyMap(), f59445j);
        if (!b10.g()) {
            Log.e("LineAuthApiClient", "getJWKSet failed: " + b10);
        }
        return b10;
    }

    @NonNull
    public qc.c<vc.h> c() {
        qc.c<vc.h> b10 = this.f59447b.b(yc.f.e(this.f59450e, new String[0]), Collections.emptyMap(), Collections.emptyMap(), f59444i);
        if (!b10.g()) {
            Log.e("LineAuthApiClient", "getOpenIdDiscoveryDocument failed: " + b10);
        }
        return b10;
    }

    @NonNull
    public qc.c<vc.e> d(@NonNull String str, @NonNull String str2, @NonNull PKCECode pKCECode, @NonNull String str3) {
        return this.f59447b.k(yc.f.e(this.f59446a, "oauth2/v2.1", JThirdPlatFormInterface.KEY_TOKEN), Collections.emptyMap(), yc.f.d("grant_type", "authorization_code", "code", str2, "redirect_uri", str3, "client_id", str, "code_verifier", pKCECode.d(), "id_token_key_type", IdTokenKeyType.JWK.name(), "client_version", "LINE SDK Android v5.7.0"), this.f59448c);
    }

    @NonNull
    public qc.c<vc.i> e(@NonNull String str, @NonNull vc.d dVar) {
        return this.f59447b.k(yc.f.e(this.f59446a, "oauth2/v2.1", JThirdPlatFormInterface.KEY_TOKEN), Collections.emptyMap(), yc.f.d("grant_type", "refresh_token", "refresh_token", dVar.d(), "client_id", str), f59442g);
    }

    @VisibleForTesting
    e(@NonNull Uri uri, @NonNull Uri uri2, @NonNull xc.a aVar) {
        this.f59448c = new b();
        this.f59449d = new h(this);
        this.f59446a = uri2;
        this.f59447b = aVar;
        this.f59450e = uri;
    }
}
