package wc;

import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;
import vc.h;
/* loaded from: classes4.dex */
final class g extends d<vc.h> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // wc.d
    @NonNull
    /* renamed from: c */
    public vc.h b(@NonNull JSONObject jSONObject) throws JSONException {
        return new h.b().k(jSONObject.getString("issuer")).h(jSONObject.getString("authorization_endpoint")).o(jSONObject.getString("token_endpoint")).l(jSONObject.getString("jwks_uri")).m(yc.b.a(jSONObject.getJSONArray("response_types_supported"))).n(yc.b.a(jSONObject.getJSONArray("subject_types_supported"))).j(yc.b.a(jSONObject.getJSONArray("id_token_signing_alg_values_supported"))).i();
    }
}
