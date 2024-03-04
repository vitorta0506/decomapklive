package com.google.auth.oauth2;

import cn.jpush.android.api.JThirdPlatFormInterface;
import com.google.api.client.util.GenericData;
import com.google.auth.Credentials;
import com.google.auth.ServiceAccountSigner$SigningException;
import com.google.common.io.BaseEncoding;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes2.dex */
class m {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static IdToken a(String str, Credentials credentials, com.google.api.client.http.s sVar, String str2, boolean z10, Map<String, ?> map) throws IOException {
        com.google.api.client.http.d dVar = new com.google.api.client.http.d(String.format("https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/%s:generateIdToken", str));
        GenericData genericData = new GenericData();
        genericData.e("audience", str2);
        genericData.e("includeEmail", Boolean.valueOf(z10));
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            genericData.e(entry.getKey(), entry.getValue());
        }
        g5.c cVar = n.f11679f;
        com.google.api.client.http.m b10 = sVar.d(new s5.a(credentials)).b(dVar, new f5.a(cVar, genericData));
        b10.r(new g5.e(cVar));
        b10.t(false);
        com.google.api.client.http.p b11 = b10.b();
        int f10 = b11.f();
        if (f10 < 400 || f10 >= 500) {
            if (f10 == 200) {
                if (b11.b() != null) {
                    return IdToken.create(n.e((g5.b) b11.k(g5.b.class), JThirdPlatFormInterface.KEY_TOKEN, "Error parsing error message response. "));
                }
                throw new IOException("Empty content from generateIDToken server request.");
            }
            throw new IOException(String.format("Unexpected Error code %s trying to getIDToken: %s", Integer.valueOf(f10), b11.l()));
        }
        throw new IOException(String.format("Error code %s trying to getIDToken: %s", Integer.valueOf(f10), n.e(n.d((GenericData) b11.k(GenericData.class), "error", "Error parsing error message response. "), "message", "Error parsing error message response. ")));
    }

    private static String b(String str, Credentials credentials, com.google.api.client.http.s sVar, String str2, Map<String, ?> map) throws IOException {
        com.google.api.client.http.d dVar = new com.google.api.client.http.d(String.format("https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/%s:signBlob", str));
        GenericData genericData = new GenericData();
        genericData.e("payload", str2);
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            genericData.e(entry.getKey(), entry.getValue());
        }
        g5.c cVar = n.f11679f;
        com.google.api.client.http.m b10 = sVar.d(new s5.a(credentials)).b(dVar, new f5.a(cVar, genericData));
        b10.r(new g5.e(cVar));
        b10.t(false);
        com.google.api.client.http.p b11 = b10.b();
        int f10 = b11.f();
        if (f10 < 400 || f10 >= 500) {
            if (f10 == 200) {
                if (b11.b() != null) {
                    return n.e((GenericData) b11.k(GenericData.class), "signedBlob", "Error parsing signature response. ");
                }
                throw new IOException("Empty content from sign blob server request.");
            }
            throw new IOException(String.format("Unexpected Error code %s trying to sign provided bytes: %s", Integer.valueOf(f10), b11.l()));
        }
        throw new IOException(String.format("Error code %s trying to sign provided bytes: %s", Integer.valueOf(f10), n.e(n.d((GenericData) b11.k(GenericData.class), "error", "Error parsing error message response. "), "message", "Error parsing error message response. ")));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] c(String str, Credentials credentials, com.google.api.client.http.s sVar, byte[] bArr, Map<String, ?> map) {
        BaseEncoding b10 = BaseEncoding.b();
        try {
            return b10.d(b(str, credentials, sVar, b10.g(bArr), map));
        } catch (IOException e10) {
            throw new ServiceAccountSigner$SigningException("Failed to sign the provided bytes", e10);
        }
    }
}
