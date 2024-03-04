package com.google.auth.oauth2;

import com.facebook.internal.security.CertificateUtil;
import com.google.auth.ServiceAccountSigner$SigningException;
import com.google.auth.oauth2.e;
import com.google.common.io.BaseEncoding;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private final g f11644a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f11645b;

    /* renamed from: c  reason: collision with root package name */
    private final String f11646c;

    /* renamed from: d  reason: collision with root package name */
    private final String f11647d;

    /* renamed from: e  reason: collision with root package name */
    private final String f11648e;

    /* renamed from: f  reason: collision with root package name */
    private final URI f11649f;

    /* renamed from: g  reason: collision with root package name */
    private final d f11650g;

    /* loaded from: classes2.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        private final g f11651a;

        /* renamed from: b  reason: collision with root package name */
        private final String f11652b;

        /* renamed from: c  reason: collision with root package name */
        private final String f11653c;

        /* renamed from: d  reason: collision with root package name */
        private final String f11654d;

        /* renamed from: e  reason: collision with root package name */
        private String f11655e;

        /* renamed from: f  reason: collision with root package name */
        private Map<String, String> f11656f;

        /* renamed from: g  reason: collision with root package name */
        private d f11657g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public f a() {
            return new f(this.f11651a, this.f11652b, this.f11653c, this.f11654d, this.f11655e, this.f11656f, this.f11657g);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b b(Map<String, String> map) {
            if (map.containsKey("date") && map.containsKey("x-amz-date")) {
                throw new IllegalArgumentException("One of {date, x-amz-date} can be specified, not both.");
            }
            try {
                if (map.containsKey("date")) {
                    this.f11657g = d.a(map.get("date"));
                }
                if (map.containsKey("x-amz-date")) {
                    this.f11657g = d.b(map.get("x-amz-date"));
                }
                this.f11656f = map;
                return this;
            } catch (ParseException e10) {
                throw new IllegalArgumentException("The provided date header value is invalid.", e10);
            }
        }

        private b(g gVar, String str, String str2, String str3) {
            this.f11651a = gVar;
            this.f11652b = str;
            this.f11653c = str2;
            this.f11654d = str3;
        }
    }

    private String a(String str, String str2, String str3, String str4, String str5) {
        return BaseEncoding.a().k().g(i(i(i(i(i(("AWS4" + str2).getBytes(StandardCharsets.UTF_8), str3.getBytes(StandardCharsets.UTF_8)), str4.getBytes(StandardCharsets.UTF_8)), str.getBytes(StandardCharsets.UTF_8)), "aws4_request".getBytes(StandardCharsets.UTF_8)), str5.getBytes(StandardCharsets.UTF_8)));
    }

    private String b(Map<String, String> map, List<String> list) {
        StringBuilder sb2 = new StringBuilder(this.f11646c);
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        sb2.append(this.f11649f.getRawPath().isEmpty() ? FileUtils.RES_PREFIX_STORAGE : this.f11649f.getRawPath());
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        sb2.append(this.f11649f.getRawQuery() != null ? this.f11649f.getRawQuery() : "");
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        StringBuilder sb3 = new StringBuilder();
        for (String str : list) {
            sb3.append(str);
            sb3.append(CertificateUtil.DELIMITER);
            sb3.append(map.get(str));
            sb3.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        sb2.append((CharSequence) sb3);
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        sb2.append(com.google.common.base.i.g(';').d(list));
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        sb2.append(f(this.f11648e.getBytes(StandardCharsets.UTF_8)));
        return f(sb2.toString().getBytes(StandardCharsets.UTF_8));
    }

    private String c(String str, String str2, String str3) {
        return "AWS4-HMAC-SHA256\n" + str2 + IOUtils.LINE_SEPARATOR_UNIX + str3 + IOUtils.LINE_SEPARATOR_UNIX + str;
    }

    private String d(List<String> list, String str, String str2, String str3) {
        return String.format("%s Credential=%s/%s, SignedHeaders=%s, Signature=%s", "AWS4-HMAC-SHA256", str, str2, com.google.common.base.i.g(';').d(list), str3);
    }

    private Map<String, String> e(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("host", this.f11649f.getHost());
        if (!this.f11645b.containsKey("date")) {
            hashMap.put("x-amz-date", str);
        }
        if (this.f11644a.c() != null && !this.f11644a.c().isEmpty()) {
            hashMap.put("x-amz-security-token", this.f11644a.c());
        }
        for (String str2 : this.f11645b.keySet()) {
            hashMap.put(str2.toLowerCase(Locale.US), this.f11645b.get(str2));
        }
        return hashMap;
    }

    private static String f(byte[] bArr) {
        try {
            return BaseEncoding.a().k().g(MessageDigest.getInstance("SHA-256").digest(bArr));
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException("Failed to compute SHA-256 hash.", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b g(g gVar, String str, String str2, String str3) {
        return new b(gVar, str, str2, str3);
    }

    private static byte[] i(byte[] bArr, byte[] bArr2) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(bArr, "HmacSHA256"));
            return mac.doFinal(bArr2);
        } catch (InvalidKeyException e10) {
            throw new ServiceAccountSigner$SigningException("Invalid key used when calculating the AWS V4 Signature", e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new RuntimeException("HmacSHA256 must be supported by the JVM.", e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e h() {
        String next = com.google.common.base.t.h(".").i(this.f11649f.getHost()).iterator().next();
        Map<String, String> e10 = e(this.f11650g.e());
        ArrayList arrayList = new ArrayList();
        for (String str : e10.keySet()) {
            arrayList.add(str.toLowerCase(Locale.US));
        }
        Collections.sort(arrayList);
        String str2 = this.f11650g.d() + FileUtils.RES_PREFIX_STORAGE + this.f11647d + FileUtils.RES_PREFIX_STORAGE + next + FileUtils.RES_PREFIX_STORAGE + "aws4_request";
        String a10 = a(next, this.f11644a.b(), this.f11650g.d(), this.f11647d, c(b(e10, arrayList), this.f11650g.f(), str2));
        return new e.b().i(a10).c(e10).f(this.f11646c).h(this.f11644a).d(str2).j(this.f11649f.toString()).e(this.f11650g.e()).g(this.f11647d).b(d(arrayList, this.f11644a.a(), str2, a10)).a();
    }

    private f(g gVar, String str, String str2, String str3, String str4, Map<String, String> map, d dVar) {
        this.f11644a = (g) com.google.common.base.o.s(gVar);
        this.f11646c = (String) com.google.common.base.o.s(str);
        this.f11649f = URI.create(str2).normalize();
        this.f11647d = (String) com.google.common.base.o.s(str3);
        this.f11648e = str4 == null ? "" : str4;
        this.f11645b = map != null ? new HashMap(map) : new HashMap();
        this.f11650g = dVar == null ? d.c() : dVar;
    }
}
