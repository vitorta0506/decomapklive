package vc;

import androidx.annotation.NonNull;
import java.util.List;
/* loaded from: classes4.dex */
public class h {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59122a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f59123b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final String f59124c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final String f59125d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final List<String> f59126e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final List<String> f59127f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final List<String> f59128g;

    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private String f59129a;

        /* renamed from: b  reason: collision with root package name */
        private String f59130b;

        /* renamed from: c  reason: collision with root package name */
        private String f59131c;

        /* renamed from: d  reason: collision with root package name */
        private String f59132d;

        /* renamed from: e  reason: collision with root package name */
        private List<String> f59133e;

        /* renamed from: f  reason: collision with root package name */
        private List<String> f59134f;

        /* renamed from: g  reason: collision with root package name */
        private List<String> f59135g;

        public b h(String str) {
            this.f59130b = str;
            return this;
        }

        public h i() {
            return new h(this);
        }

        public b j(List<String> list) {
            this.f59135g = list;
            return this;
        }

        public b k(String str) {
            this.f59129a = str;
            return this;
        }

        public b l(String str) {
            this.f59132d = str;
            return this;
        }

        public b m(List<String> list) {
            this.f59133e = list;
            return this;
        }

        public b n(List<String> list) {
            this.f59134f = list;
            return this;
        }

        public b o(String str) {
            this.f59131c = str;
            return this;
        }
    }

    @NonNull
    public String a() {
        return this.f59122a;
    }

    @NonNull
    public String b() {
        return this.f59125d;
    }

    public String toString() {
        return "OpenIdDiscoveryDocument{issuer='" + this.f59122a + "', authorizationEndpoint='" + this.f59123b + "', tokenEndpoint='" + this.f59124c + "', jwksUri='" + this.f59125d + "', responseTypesSupported=" + this.f59126e + ", subjectTypesSupported=" + this.f59127f + ", idTokenSigningAlgValuesSupported=" + this.f59128g + '}';
    }

    private h(b bVar) {
        this.f59122a = bVar.f59129a;
        this.f59123b = bVar.f59130b;
        this.f59124c = bVar.f59131c;
        this.f59125d = bVar.f59132d;
        this.f59126e = bVar.f59133e;
        this.f59127f = bVar.f59134f;
        this.f59128g = bVar.f59135g;
    }
}
