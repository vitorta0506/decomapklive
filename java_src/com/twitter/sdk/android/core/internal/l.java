package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.models.p;
/* loaded from: classes4.dex */
public class l {
    public static com.twitter.sdk.android.core.models.h a(com.twitter.sdk.android.core.models.d dVar) {
        return (com.twitter.sdk.android.core.models.h) dVar.f35229a.a("player_image");
    }

    public static String b(com.twitter.sdk.android.core.models.d dVar) {
        return (String) dVar.f35229a.a("player_stream_url");
    }

    public static boolean c(com.twitter.sdk.android.core.models.d dVar) {
        return ("player".equals(dVar.f35230b) || "vine".equals(dVar.f35230b)) && d(dVar);
    }

    private static boolean d(com.twitter.sdk.android.core.models.d dVar) {
        p pVar = (p) dVar.f35229a.a("site");
        if (pVar != null) {
            try {
                if (Long.parseLong(pVar.f35316a) == 586671909) {
                    return true;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return false;
    }
}
