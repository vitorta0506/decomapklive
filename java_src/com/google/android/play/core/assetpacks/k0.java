package com.google.android.play.core.assetpacks;

import java.util.Map;
/* loaded from: classes2.dex */
final class k0 extends b {

    /* renamed from: a  reason: collision with root package name */
    private final long f10312a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f10313b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0(long j10, Map map) {
        this.f10312a = j10;
        this.f10313b = map;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final Map<String, AssetPackState> a() {
        return this.f10313b;
    }

    @Override // com.google.android.play.core.assetpacks.b
    public final long b() {
        return this.f10312a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f10312a == bVar.b() && this.f10313b.equals(bVar.a())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f10312a;
        return this.f10313b.hashCode() ^ ((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003);
    }

    public final String toString() {
        long j10 = this.f10312a;
        String obj = this.f10313b.toString();
        StringBuilder sb2 = new StringBuilder(obj.length() + 61);
        sb2.append("AssetPackStates{totalBytes=");
        sb2.append(j10);
        sb2.append(", packStates=");
        sb2.append(obj);
        sb2.append("}");
        return sb2.toString();
    }
}
