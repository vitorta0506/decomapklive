package com.google.api.gax.rpc;

import java.util.Map;
/* loaded from: classes2.dex */
final class g extends FixedHeaderProvider {
    private static final long serialVersionUID = -4881534091594970538L;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f11272a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Map<String, String> map) {
        this.f11272a = map;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FixedHeaderProvider) {
            Map<String, String> map = this.f11272a;
            Map<String, String> headers = ((FixedHeaderProvider) obj).getHeaders();
            return map == null ? headers == null : map.equals(headers);
        }
        return false;
    }

    @Override // com.google.api.gax.rpc.FixedHeaderProvider, com.google.api.gax.rpc.p
    public Map<String, String> getHeaders() {
        return this.f11272a;
    }

    public int hashCode() {
        Map<String, String> map = this.f11272a;
        return (map == null ? 0 : map.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "FixedHeaderProvider{headers=" + this.f11272a + "}";
    }
}
