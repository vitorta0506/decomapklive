package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
final class l0 extends e3 {

    /* renamed from: a  reason: collision with root package name */
    private final int f10325a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10326b;

    /* renamed from: c  reason: collision with root package name */
    private final long f10327c;

    /* renamed from: d  reason: collision with root package name */
    private final long f10328d;

    /* renamed from: e  reason: collision with root package name */
    private final int f10329e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0(int i9, @Nullable String str, long j10, long j11, int i10) {
        this.f10325a = i9;
        this.f10326b = str;
        this.f10327c = j10;
        this.f10328d = j11;
        this.f10329e = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e3
    public final int a() {
        return this.f10325a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e3
    public final int b() {
        return this.f10329e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e3
    public final long c() {
        return this.f10327c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e3
    public final long d() {
        return this.f10328d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.e3
    @Nullable
    public final String e() {
        return this.f10326b;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof e3) {
            e3 e3Var = (e3) obj;
            if (this.f10325a == e3Var.a() && ((str = this.f10326b) != null ? str.equals(e3Var.e()) : e3Var.e() == null) && this.f10327c == e3Var.c() && this.f10328d == e3Var.d() && this.f10329e == e3Var.b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i9 = (this.f10325a ^ 1000003) * 1000003;
        String str = this.f10326b;
        int hashCode = str == null ? 0 : str.hashCode();
        long j10 = this.f10327c;
        long j11 = this.f10328d;
        return ((((((i9 ^ hashCode) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003) ^ this.f10329e;
    }

    public final String toString() {
        int i9 = this.f10325a;
        String str = this.f10326b;
        long j10 = this.f10327c;
        long j11 = this.f10328d;
        int i10 = this.f10329e;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 157);
        sb2.append("SliceCheckpoint{fileExtractionStatus=");
        sb2.append(i9);
        sb2.append(", filePath=");
        sb2.append(str);
        sb2.append(", fileOffset=");
        sb2.append(j10);
        sb2.append(", remainingBytes=");
        sb2.append(j11);
        sb2.append(", previousChunk=");
        sb2.append(i10);
        sb2.append("}");
        return sb2.toString();
    }
}
