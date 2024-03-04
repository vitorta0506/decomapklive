package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
/* loaded from: classes.dex */
final class h extends NetworkConnectionInfo {

    /* renamed from: a  reason: collision with root package name */
    private final NetworkConnectionInfo.NetworkType f5336a;

    /* renamed from: b  reason: collision with root package name */
    private final NetworkConnectionInfo.MobileSubtype f5337b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends NetworkConnectionInfo.a {

        /* renamed from: a  reason: collision with root package name */
        private NetworkConnectionInfo.NetworkType f5338a;

        /* renamed from: b  reason: collision with root package name */
        private NetworkConnectionInfo.MobileSubtype f5339b;

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo a() {
            return new h(this.f5338a, this.f5339b);
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo.a b(@Nullable NetworkConnectionInfo.MobileSubtype mobileSubtype) {
            this.f5339b = mobileSubtype;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo.a c(@Nullable NetworkConnectionInfo.NetworkType networkType) {
            this.f5338a = networkType;
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    @Nullable
    public NetworkConnectionInfo.MobileSubtype b() {
        return this.f5337b;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    @Nullable
    public NetworkConnectionInfo.NetworkType c() {
        return this.f5336a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof NetworkConnectionInfo) {
            NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
            NetworkConnectionInfo.NetworkType networkType = this.f5336a;
            if (networkType != null ? networkType.equals(networkConnectionInfo.c()) : networkConnectionInfo.c() == null) {
                NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f5337b;
                if (mobileSubtype == null) {
                    if (networkConnectionInfo.b() == null) {
                        return true;
                    }
                } else if (mobileSubtype.equals(networkConnectionInfo.b())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        NetworkConnectionInfo.NetworkType networkType = this.f5336a;
        int hashCode = ((networkType == null ? 0 : networkType.hashCode()) ^ 1000003) * 1000003;
        NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f5337b;
        return hashCode ^ (mobileSubtype != null ? mobileSubtype.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f5336a + ", mobileSubtype=" + this.f5337b + "}";
    }

    private h(@Nullable NetworkConnectionInfo.NetworkType networkType, @Nullable NetworkConnectionInfo.MobileSubtype mobileSubtype) {
        this.f5336a = networkType;
        this.f5337b = mobileSubtype;
    }
}
