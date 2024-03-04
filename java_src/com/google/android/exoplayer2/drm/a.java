package com.google.android.exoplayer2.drm;

import io.jsonwebtoken.JwsHeader;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
final class a {
    public static byte[] a(byte[] bArr) {
        return com.google.android.exoplayer2.util.l0.f6985a >= 27 ? bArr : com.google.android.exoplayer2.util.l0.h0(c(com.google.android.exoplayer2.util.l0.A(bArr)));
    }

    public static byte[] b(byte[] bArr) {
        if (com.google.android.exoplayer2.util.l0.f6985a >= 27) {
            return bArr;
        }
        try {
            JSONObject jSONObject = new JSONObject(com.google.android.exoplayer2.util.l0.A(bArr));
            StringBuilder sb2 = new StringBuilder("{\"keys\":[");
            JSONArray jSONArray = jSONObject.getJSONArray("keys");
            for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                if (i9 != 0) {
                    sb2.append(",");
                }
                JSONObject jSONObject2 = jSONArray.getJSONObject(i9);
                sb2.append("{\"k\":\"");
                sb2.append(d(jSONObject2.getString("k")));
                sb2.append("\",\"kid\":\"");
                sb2.append(d(jSONObject2.getString(JwsHeader.KEY_ID)));
                sb2.append("\",\"kty\":\"");
                sb2.append(jSONObject2.getString("kty"));
                sb2.append("\"}");
            }
            sb2.append("]}");
            return com.google.android.exoplayer2.util.l0.h0(sb2.toString());
        } catch (JSONException e10) {
            com.google.android.exoplayer2.util.r.d("ClearKeyUtil", "Failed to adjust response data: " + com.google.android.exoplayer2.util.l0.A(bArr), e10);
            return bArr;
        }
    }

    private static String c(String str) {
        return str.replace('+', '-').replace(IOUtils.DIR_SEPARATOR_UNIX, '_');
    }

    private static String d(String str) {
        return str.replace('-', '+').replace('_', IOUtils.DIR_SEPARATOR_UNIX);
    }
}
