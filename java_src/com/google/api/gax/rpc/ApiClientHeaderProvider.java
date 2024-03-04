package com.google.api.gax.rpc;

import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.util.Map;
import org.light.utils.IOUtils;
/* loaded from: classes2.dex */
public class ApiClientHeaderProvider implements p, Serializable {
    static final String QUOTA_PROJECT_ID_HEADER_KEY = "x-goog-user-project";
    private static final long serialVersionUID = -8876627296793342119L;
    private final Map<String, String> headers;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f11228a = ApiClientHeaderProvider.getDefaultApiClientHeaderKey();

        /* renamed from: b  reason: collision with root package name */
        private String f11229b;

        /* renamed from: c  reason: collision with root package name */
        private String f11230c;

        /* renamed from: d  reason: collision with root package name */
        private String f11231d;

        /* renamed from: e  reason: collision with root package name */
        private String f11232e;

        /* renamed from: f  reason: collision with root package name */
        private String f11233f;

        /* renamed from: g  reason: collision with root package name */
        private String f11234g;

        /* renamed from: h  reason: collision with root package name */
        private String f11235h;

        /* renamed from: i  reason: collision with root package name */
        private String f11236i;

        protected a() {
            n(l5.k.b());
            this.f11230c = null;
            this.f11231d = null;
            l(l5.k.a());
            this.f11233f = null;
            this.f11234g = null;
            this.f11235h = ApiClientHeaderProvider.getDefaultResourceHeaderKey();
            this.f11236i = null;
        }

        private String b(String str, String str2) {
            if (str2 == null) {
                return null;
            }
            if (str != null) {
                return str + IOUtils.DIR_SEPARATOR_UNIX + str2;
            }
            throw new IllegalArgumentException("Token name cannot be null");
        }

        public ApiClientHeaderProvider a() {
            return new ApiClientHeaderProvider(this);
        }

        public String c() {
            return this.f11228a;
        }

        public String d() {
            return this.f11230c;
        }

        public String e() {
            return this.f11231d;
        }

        public String f() {
            return this.f11232e;
        }

        public String g() {
            return this.f11229b;
        }

        public String h() {
            return this.f11234g;
        }

        public String i() {
            return this.f11235h;
        }

        public String j() {
            return this.f11236i;
        }

        public String k() {
            return this.f11233f;
        }

        public a l(String str) {
            this.f11232e = b("gax", str);
            return this;
        }

        public a m(String str, String str2) {
            this.f11231d = b(str, str2);
            return this;
        }

        public a n(String str) {
            this.f11229b = b("gl-java", str);
            return this;
        }

        public a o(String str, String str2) {
            this.f11233f = b(str, str2);
            return this;
        }
    }

    protected ApiClientHeaderProvider(a aVar) {
        ImmutableMap.b builder = ImmutableMap.builder();
        if (aVar.c() != null) {
            StringBuilder sb2 = new StringBuilder();
            appendToken(sb2, aVar.g());
            appendToken(sb2, aVar.d());
            appendToken(sb2, aVar.e());
            appendToken(sb2, aVar.f());
            appendToken(sb2, aVar.k());
            if (sb2.length() > 0) {
                builder.h(aVar.c(), sb2.toString());
            }
        }
        if (aVar.i() != null && aVar.j() != null) {
            builder.h(aVar.i(), aVar.j());
        }
        if (aVar.h() != null) {
            builder.h(QUOTA_PROJECT_ID_HEADER_KEY, aVar.h());
        }
        this.headers = builder.a();
    }

    protected static void appendToken(StringBuilder sb2, String str) {
        if (str != null) {
            if (sb2.length() > 0) {
                sb2.append(' ');
            }
            sb2.append(str);
        }
    }

    public static String getDefaultApiClientHeaderKey() {
        return "x-goog-api-client";
    }

    public static String getDefaultResourceHeaderKey() {
        return "google-cloud-resource-prefix";
    }

    public static a newBuilder() {
        return new a();
    }

    @Override // com.google.api.gax.rpc.p
    public Map<String, String> getHeaders() {
        return this.headers;
    }
}
