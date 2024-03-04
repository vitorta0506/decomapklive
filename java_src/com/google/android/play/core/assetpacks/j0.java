package com.google.android.play.core.assetpacks;

import java.util.Objects;
/* loaded from: classes2.dex */
final class j0 extends AssetPackState {

    /* renamed from: a  reason: collision with root package name */
    private final String f10296a;

    /* renamed from: b  reason: collision with root package name */
    private final int f10297b;

    /* renamed from: c  reason: collision with root package name */
    private final int f10298c;

    /* renamed from: d  reason: collision with root package name */
    private final long f10299d;

    /* renamed from: e  reason: collision with root package name */
    private final long f10300e;

    /* renamed from: f  reason: collision with root package name */
    private final int f10301f;

    /* renamed from: g  reason: collision with root package name */
    private final int f10302g;

    /* renamed from: h  reason: collision with root package name */
    private final String f10303h;

    /* renamed from: i  reason: collision with root package name */
    private final String f10304i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(String str, int i9, int i10, long j10, long j11, int i11, int i12, String str2, String str3) {
        Objects.requireNonNull(str, "Null name");
        this.f10296a = str;
        this.f10297b = i9;
        this.f10298c = i10;
        this.f10299d = j10;
        this.f10300e = j11;
        this.f10301f = i11;
        this.f10302g = i12;
        Objects.requireNonNull(str2, "Null availableVersionTag");
        this.f10303h = str2;
        Objects.requireNonNull(str3, "Null installedVersionTag");
        this.f10304i = str3;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final long a() {
        return this.f10299d;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int b() {
        return this.f10298c;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final String c() {
        return this.f10296a;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int d() {
        return this.f10297b;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final long e() {
        return this.f10300e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AssetPackState) {
            AssetPackState assetPackState = (AssetPackState) obj;
            if (this.f10296a.equals(assetPackState.c()) && this.f10297b == assetPackState.d() && this.f10298c == assetPackState.b() && this.f10299d == assetPackState.a() && this.f10300e == assetPackState.e() && this.f10301f == assetPackState.f() && this.f10302g == assetPackState.g() && this.f10303h.equals(assetPackState.j()) && this.f10304i.equals(assetPackState.k())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int f() {
        return this.f10301f;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final int g() {
        return this.f10302g;
    }

    public final int hashCode() {
        int hashCode = this.f10296a.hashCode();
        int i9 = this.f10297b;
        int i10 = this.f10298c;
        long j10 = this.f10299d;
        long j11 = this.f10300e;
        return ((((((((((((((((hashCode ^ 1000003) * 1000003) ^ i9) * 1000003) ^ i10) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f10301f) * 1000003) ^ this.f10302g) * 1000003) ^ this.f10303h.hashCode()) * 1000003) ^ this.f10304i.hashCode();
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final String j() {
        return this.f10303h;
    }

    @Override // com.google.android.play.core.assetpacks.AssetPackState
    public final String k() {
        return this.f10304i;
    }

    public final String toString() {
        String str = this.f10296a;
        int i9 = this.f10297b;
        int i10 = this.f10298c;
        long j10 = this.f10299d;
        long j11 = this.f10300e;
        int i11 = this.f10301f;
        int i12 = this.f10302g;
        String str2 = this.f10303h;
        String str3 = this.f10304i;
        StringBuilder sb2 = new StringBuilder(str.length() + 261 + str2.length() + str3.length());
        sb2.append("AssetPackState{name=");
        sb2.append(str);
        sb2.append(", status=");
        sb2.append(i9);
        sb2.append(", errorCode=");
        sb2.append(i10);
        sb2.append(", bytesDownloaded=");
        sb2.append(j10);
        sb2.append(", totalBytesToDownload=");
        sb2.append(j11);
        sb2.append(", transferProgressPercentage=");
        sb2.append(i11);
        sb2.append(", updateAvailability=");
        sb2.append(i12);
        sb2.append(", availableVersionTag=");
        sb2.append(str2);
        sb2.append(", installedVersionTag=");
        sb2.append(str3);
        sb2.append("}");
        return sb2.toString();
    }
}
