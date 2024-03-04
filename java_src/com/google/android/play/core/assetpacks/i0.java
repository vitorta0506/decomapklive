package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
final class i0 extends a {

    /* renamed from: b  reason: collision with root package name */
    private final int f10280b;

    /* renamed from: c  reason: collision with root package name */
    private final String f10281c;

    /* renamed from: d  reason: collision with root package name */
    private final String f10282d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(int i9, @Nullable String str, @Nullable String str2) {
        this.f10280b = i9;
        this.f10281c = str;
        this.f10282d = str2;
    }

    @Override // com.google.android.play.core.assetpacks.a
    @Nullable
    public final String a() {
        return this.f10282d;
    }

    @Override // com.google.android.play.core.assetpacks.a
    public final int b() {
        return this.f10280b;
    }

    @Override // com.google.android.play.core.assetpacks.a
    @Nullable
    public final String c() {
        return this.f10281c;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f10280b == aVar.b() && ((str = this.f10281c) != null ? str.equals(aVar.c()) : aVar.c() == null) && ((str2 = this.f10282d) != null ? str2.equals(aVar.a()) : aVar.a() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i9 = (this.f10280b ^ 1000003) * 1000003;
        String str = this.f10281c;
        int hashCode = (i9 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f10282d;
        return hashCode ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        int i9 = this.f10280b;
        String str = this.f10281c;
        String str2 = this.f10282d;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str2).length());
        sb2.append("AssetPackLocation{packStorageMethod=");
        sb2.append(i9);
        sb2.append(", path=");
        sb2.append(str);
        sb2.append(", assetsPath=");
        sb2.append(str2);
        sb2.append("}");
        return sb2.toString();
    }
}
