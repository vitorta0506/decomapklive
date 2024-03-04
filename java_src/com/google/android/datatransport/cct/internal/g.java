package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.k;
import java.util.List;
/* loaded from: classes.dex */
final class g extends k {

    /* renamed from: a  reason: collision with root package name */
    private final long f5322a;

    /* renamed from: b  reason: collision with root package name */
    private final long f5323b;

    /* renamed from: c  reason: collision with root package name */
    private final ClientInfo f5324c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f5325d;

    /* renamed from: e  reason: collision with root package name */
    private final String f5326e;

    /* renamed from: f  reason: collision with root package name */
    private final List<j> f5327f;

    /* renamed from: g  reason: collision with root package name */
    private final QosTier f5328g;

    /* loaded from: classes.dex */
    static final class b extends k.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f5329a;

        /* renamed from: b  reason: collision with root package name */
        private Long f5330b;

        /* renamed from: c  reason: collision with root package name */
        private ClientInfo f5331c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f5332d;

        /* renamed from: e  reason: collision with root package name */
        private String f5333e;

        /* renamed from: f  reason: collision with root package name */
        private List<j> f5334f;

        /* renamed from: g  reason: collision with root package name */
        private QosTier f5335g;

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k a() {
            String str = "";
            if (this.f5329a == null) {
                str = " requestTimeMs";
            }
            if (this.f5330b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new g(this.f5329a.longValue(), this.f5330b.longValue(), this.f5331c, this.f5332d, this.f5333e, this.f5334f, this.f5335g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a b(@Nullable ClientInfo clientInfo) {
            this.f5331c = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a c(@Nullable List<j> list) {
            this.f5334f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        k.a d(@Nullable Integer num) {
            this.f5332d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        k.a e(@Nullable String str) {
            this.f5333e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a f(@Nullable QosTier qosTier) {
            this.f5335g = qosTier;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a g(long j10) {
            this.f5329a = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a h(long j10) {
            this.f5330b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public ClientInfo b() {
        return this.f5324c;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public List<j> c() {
        return this.f5327f;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public Integer d() {
        return this.f5325d;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public String e() {
        return this.f5326e;
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List<j> list;
        if (obj == this) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.f5322a == kVar.g() && this.f5323b == kVar.h() && ((clientInfo = this.f5324c) != null ? clientInfo.equals(kVar.b()) : kVar.b() == null) && ((num = this.f5325d) != null ? num.equals(kVar.d()) : kVar.d() == null) && ((str = this.f5326e) != null ? str.equals(kVar.e()) : kVar.e() == null) && ((list = this.f5327f) != null ? list.equals(kVar.c()) : kVar.c() == null)) {
                QosTier qosTier = this.f5328g;
                if (qosTier == null) {
                    if (kVar.f() == null) {
                        return true;
                    }
                } else if (qosTier.equals(kVar.f())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public QosTier f() {
        return this.f5328g;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    public long g() {
        return this.f5322a;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    public long h() {
        return this.f5323b;
    }

    public int hashCode() {
        long j10 = this.f5322a;
        long j11 = this.f5323b;
        int i9 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003;
        ClientInfo clientInfo = this.f5324c;
        int hashCode = (i9 ^ (clientInfo == null ? 0 : clientInfo.hashCode())) * 1000003;
        Integer num = this.f5325d;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f5326e;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<j> list = this.f5327f;
        int hashCode4 = (hashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        QosTier qosTier = this.f5328g;
        return hashCode4 ^ (qosTier != null ? qosTier.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f5322a + ", requestUptimeMs=" + this.f5323b + ", clientInfo=" + this.f5324c + ", logSource=" + this.f5325d + ", logSourceName=" + this.f5326e + ", logEvents=" + this.f5327f + ", qosTier=" + this.f5328g + "}";
    }

    private g(long j10, long j11, @Nullable ClientInfo clientInfo, @Nullable Integer num, @Nullable String str, @Nullable List<j> list, @Nullable QosTier qosTier) {
        this.f5322a = j10;
        this.f5323b = j11;
        this.f5324c = clientInfo;
        this.f5325d = num;
        this.f5326e = str;
        this.f5327f = list;
        this.f5328g = qosTier;
    }
}
