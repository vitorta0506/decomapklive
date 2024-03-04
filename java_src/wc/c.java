package wc;

import androidx.annotation.NonNull;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import io.jsonwebtoken.JwsHeader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import vc.f;
/* loaded from: classes4.dex */
final class c extends d<vc.f> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // wc.d
    @NonNull
    /* renamed from: c */
    public vc.f b(@NonNull JSONObject jSONObject) throws JSONException {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = jSONObject.getJSONArray("keys");
        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i9);
            arrayList.add(new f.c.a().l(jSONObject2.getString("kty")).h(jSONObject2.getString(JwsHeader.ALGORITHM)).m(jSONObject2.getString("use")).k(jSONObject2.getString(JwsHeader.KEY_ID)).j(jSONObject2.getString("crv")).n(jSONObject2.getString(x.f19108w)).o(jSONObject2.getString("y")).i());
        }
        return new f.b().c(arrayList).b();
    }
}
