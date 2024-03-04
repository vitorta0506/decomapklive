package com.google.android.exoplayer2.drm;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.c0;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.common.collect.ImmutableMap;
import j3.i;
import j3.l;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public final class j0 implements k0 {

    /* renamed from: a  reason: collision with root package name */
    private final i.a f5824a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f5825b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f5826c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f5827d;

    public j0(@Nullable String str, boolean z10, i.a aVar) {
        com.google.android.exoplayer2.util.a.a((z10 && TextUtils.isEmpty(str)) ? false : true);
        this.f5824a = aVar;
        this.f5825b = str;
        this.f5826c = z10;
        this.f5827d = new HashMap();
    }

    private static byte[] c(i.a aVar, String str, @Nullable byte[] bArr, Map<String, String> map) throws MediaDrmCallbackException {
        j3.a0 a0Var = new j3.a0(aVar.a());
        j3.l a10 = new l.b().i(str).e(map).d(2).c(bArr).b(1).a();
        int i9 = 0;
        j3.l lVar = a10;
        while (true) {
            try {
                j3.j jVar = new j3.j(a0Var, lVar);
                try {
                    byte[] L0 = com.google.android.exoplayer2.util.l0.L0(jVar);
                    com.google.android.exoplayer2.util.l0.m(jVar);
                    return L0;
                } catch (HttpDataSource$InvalidResponseCodeException e10) {
                    String d10 = d(e10, i9);
                    if (d10 != null) {
                        i9++;
                        lVar = lVar.a().i(d10).a();
                        com.google.android.exoplayer2.util.l0.m(jVar);
                    } else {
                        throw e10;
                    }
                }
            } catch (Exception e11) {
                throw new MediaDrmCallbackException(a10, (Uri) com.google.android.exoplayer2.util.a.e(a0Var.o()), a0Var.e(), a0Var.n(), e11);
            }
        }
    }

    @Nullable
    private static String d(HttpDataSource$InvalidResponseCodeException httpDataSource$InvalidResponseCodeException, int i9) {
        Map<String, List<String>> map;
        List<String> list;
        int i10 = httpDataSource$InvalidResponseCodeException.responseCode;
        if (!((i10 == 307 || i10 == 308) && i9 < 5) || (map = httpDataSource$InvalidResponseCodeException.headerFields) == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override // com.google.android.exoplayer2.drm.k0
    public byte[] a(UUID uuid, c0.g gVar) throws MediaDrmCallbackException {
        return c(this.f5824a, gVar.b() + "&signedRequest=" + com.google.android.exoplayer2.util.l0.A(gVar.a()), null, Collections.emptyMap());
    }

    @Override // com.google.android.exoplayer2.drm.k0
    public byte[] b(UUID uuid, c0.a aVar) throws MediaDrmCallbackException {
        String str;
        String b10 = aVar.b();
        if (this.f5826c || TextUtils.isEmpty(b10)) {
            b10 = this.f5825b;
        }
        if (!TextUtils.isEmpty(b10)) {
            HashMap hashMap = new HashMap();
            UUID uuid2 = com.google.android.exoplayer2.i.f6000e;
            if (uuid2.equals(uuid)) {
                str = "text/xml";
            } else {
                str = com.google.android.exoplayer2.i.f5998c.equals(uuid) ? "application/json" : "application/octet-stream";
            }
            hashMap.put("Content-Type", str);
            if (uuid2.equals(uuid)) {
                hashMap.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
            }
            synchronized (this.f5827d) {
                hashMap.putAll(this.f5827d);
            }
            return c(this.f5824a, b10, aVar.a(), hashMap);
        }
        throw new MediaDrmCallbackException(new l.b().h(Uri.EMPTY).a(), Uri.EMPTY, ImmutableMap.of(), 0L, new IllegalStateException("No license URL"));
    }

    public void e(String str, String str2) {
        com.google.android.exoplayer2.util.a.e(str);
        com.google.android.exoplayer2.util.a.e(str2);
        synchronized (this.f5827d) {
            this.f5827d.put(str, str2);
        }
    }
}
