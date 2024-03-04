package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.ClientInfo;
/* loaded from: classes.dex */
final class e extends ClientInfo {

    /* renamed from: a  reason: collision with root package name */
    private final ClientInfo.ClientType f5304a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.cct.internal.a f5305b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends ClientInfo.a {

        /* renamed from: a  reason: collision with root package name */
        private ClientInfo.ClientType f5306a;

        /* renamed from: b  reason: collision with root package name */
        private com.google.android.datatransport.cct.internal.a f5307b;

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo a() {
            return new e(this.f5306a, this.f5307b);
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo.a b(@Nullable com.google.android.datatransport.cct.internal.a aVar) {
            this.f5307b = aVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo.a c(@Nullable ClientInfo.ClientType clientType) {
            this.f5306a = clientType;
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    @Nullable
    public com.google.android.datatransport.cct.internal.a b() {
        return this.f5305b;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    @Nullable
    public ClientInfo.ClientType c() {
        return this.f5304a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ClientInfo) {
            ClientInfo clientInfo = (ClientInfo) obj;
            ClientInfo.ClientType clientType = this.f5304a;
            if (clientType != null ? clientType.equals(clientInfo.c()) : clientInfo.c() == null) {
                com.google.android.datatransport.cct.internal.a aVar = this.f5305b;
                if (aVar == null) {
                    if (clientInfo.b() == null) {
                        return true;
                    }
                } else if (aVar.equals(clientInfo.b())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        ClientInfo.ClientType clientType = this.f5304a;
        int hashCode = ((clientType == null ? 0 : clientType.hashCode()) ^ 1000003) * 1000003;
        com.google.android.datatransport.cct.internal.a aVar = this.f5305b;
        return hashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f5304a + ", androidClientInfo=" + this.f5305b + "}";
    }

    private e(@Nullable ClientInfo.ClientType clientType, @Nullable com.google.android.datatransport.cct.internal.a aVar) {
        this.f5304a = clientType;
        this.f5305b = aVar;
    }
}
