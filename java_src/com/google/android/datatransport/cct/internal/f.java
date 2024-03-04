package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.j;
import java.util.Arrays;
/* loaded from: classes.dex */
final class f extends j {

    /* renamed from: a  reason: collision with root package name */
    private final long f5308a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f5309b;

    /* renamed from: c  reason: collision with root package name */
    private final long f5310c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f5311d;

    /* renamed from: e  reason: collision with root package name */
    private final String f5312e;

    /* renamed from: f  reason: collision with root package name */
    private final long f5313f;

    /* renamed from: g  reason: collision with root package name */
    private final NetworkConnectionInfo f5314g;

    /* loaded from: classes.dex */
    static final class b extends j.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f5315a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f5316b;

        /* renamed from: c  reason: collision with root package name */
        private Long f5317c;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f5318d;

        /* renamed from: e  reason: collision with root package name */
        private String f5319e;

        /* renamed from: f  reason: collision with root package name */
        private Long f5320f;

        /* renamed from: g  reason: collision with root package name */
        private NetworkConnectionInfo f5321g;

        @Override // com.google.android.datatransport.cct.internal.j.a
        public j a() {
            String str = "";
            if (this.f5315a == null) {
                str = " eventTimeMs";
            }
            if (this.f5317c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f5320f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new f(this.f5315a.longValue(), this.f5316b, this.f5317c.longValue(), this.f5318d, this.f5319e, this.f5320f.longValue(), this.f5321g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.j.a
        public j.a b(@Nullable Integer num) {
            this.f5316b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.j.a
        public j.a c(long j10) {
            this.f5315a = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.j.a
        public j.a d(long j10) {
            this.f5317c = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.j.a
        public j.a e(@Nullable NetworkConnectionInfo networkConnectionInfo) {
            this.f5321g = networkConnectionInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.j.a
        j.a f(@Nullable byte[] bArr) {
            this.f5318d = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.j.a
        j.a g(@Nullable String str) {
            this.f5319e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.j.a
        public j.a h(long j10) {
            this.f5320f = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.j
    @Nullable
    public Integer b() {
        return this.f5309b;
    }

    @Override // com.google.android.datatransport.cct.internal.j
    public long c() {
        return this.f5308a;
    }

    @Override // com.google.android.datatransport.cct.internal.j
    public long d() {
        return this.f5310c;
    }

    @Override // com.google.android.datatransport.cct.internal.j
    @Nullable
    public NetworkConnectionInfo e() {
        return this.f5314g;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (this.f5308a == jVar.c() && ((num = this.f5309b) != null ? num.equals(jVar.b()) : jVar.b() == null) && this.f5310c == jVar.d()) {
                if (Arrays.equals(this.f5311d, jVar instanceof f ? ((f) jVar).f5311d : jVar.f()) && ((str = this.f5312e) != null ? str.equals(jVar.g()) : jVar.g() == null) && this.f5313f == jVar.h()) {
                    NetworkConnectionInfo networkConnectionInfo = this.f5314g;
                    if (networkConnectionInfo == null) {
                        if (jVar.e() == null) {
                            return true;
                        }
                    } else if (networkConnectionInfo.equals(jVar.e())) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.j
    @Nullable
    public byte[] f() {
        return this.f5311d;
    }

    @Override // com.google.android.datatransport.cct.internal.j
    @Nullable
    public String g() {
        return this.f5312e;
    }

    @Override // com.google.android.datatransport.cct.internal.j
    public long h() {
        return this.f5313f;
    }

    public int hashCode() {
        long j10 = this.f5308a;
        int i9 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f5309b;
        int hashCode = num == null ? 0 : num.hashCode();
        long j11 = this.f5310c;
        int hashCode2 = (((((i9 ^ hashCode) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f5311d)) * 1000003;
        String str = this.f5312e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j12 = this.f5313f;
        int i10 = (((hashCode2 ^ hashCode3) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003;
        NetworkConnectionInfo networkConnectionInfo = this.f5314g;
        return i10 ^ (networkConnectionInfo != null ? networkConnectionInfo.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f5308a + ", eventCode=" + this.f5309b + ", eventUptimeMs=" + this.f5310c + ", sourceExtension=" + Arrays.toString(this.f5311d) + ", sourceExtensionJsonProto3=" + this.f5312e + ", timezoneOffsetSeconds=" + this.f5313f + ", networkConnectionInfo=" + this.f5314g + "}";
    }

    private f(long j10, @Nullable Integer num, long j11, @Nullable byte[] bArr, @Nullable String str, long j12, @Nullable NetworkConnectionInfo networkConnectionInfo) {
        this.f5308a = j10;
        this.f5309b = num;
        this.f5310c = j11;
        this.f5311d = bArr;
        this.f5312e = str;
        this.f5313f = j12;
        this.f5314g = networkConnectionInfo;
    }
}
