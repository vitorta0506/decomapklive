package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* loaded from: classes2.dex */
final class m0 extends l3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f10333a;

    /* renamed from: b  reason: collision with root package name */
    private final long f10334b;

    /* renamed from: c  reason: collision with root package name */
    private final int f10335c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f10336d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f10337e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f10338f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(@Nullable String str, long j10, int i9, boolean z10, boolean z11, @Nullable byte[] bArr) {
        this.f10333a = str;
        this.f10334b = j10;
        this.f10335c = i9;
        this.f10336d = z10;
        this.f10337e = z11;
        this.f10338f = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.l3
    public final int a() {
        return this.f10335c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.l3
    public final long b() {
        return this.f10334b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.l3
    @Nullable
    public final String c() {
        return this.f10333a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.l3
    public final boolean d() {
        return this.f10337e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.l3
    public final boolean e() {
        return this.f10336d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l3) {
            l3 l3Var = (l3) obj;
            String str = this.f10333a;
            if (str != null ? str.equals(l3Var.c()) : l3Var.c() == null) {
                if (this.f10334b == l3Var.b() && this.f10335c == l3Var.a() && this.f10336d == l3Var.e() && this.f10337e == l3Var.d()) {
                    if (Arrays.equals(this.f10338f, l3Var instanceof m0 ? ((m0) l3Var).f10338f : l3Var.f())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.assetpacks.l3
    @Nullable
    public final byte[] f() {
        return this.f10338f;
    }

    public final int hashCode() {
        String str = this.f10333a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j10 = this.f10334b;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ this.f10335c) * 1000003) ^ (true != this.f10336d ? 1237 : 1231)) * 1000003) ^ (true == this.f10337e ? 1231 : 1237)) * 1000003) ^ Arrays.hashCode(this.f10338f);
    }

    public final String toString() {
        String str = this.f10333a;
        long j10 = this.f10334b;
        int i9 = this.f10335c;
        boolean z10 = this.f10336d;
        boolean z11 = this.f10337e;
        String arrays = Arrays.toString(this.f10338f);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 126 + String.valueOf(arrays).length());
        sb2.append("ZipEntry{name=");
        sb2.append(str);
        sb2.append(", size=");
        sb2.append(j10);
        sb2.append(", compressionMethod=");
        sb2.append(i9);
        sb2.append(", isPartial=");
        sb2.append(z10);
        sb2.append(", isEndOfArchive=");
        sb2.append(z11);
        sb2.append(", headerBytes=");
        sb2.append(arrays);
        sb2.append("}");
        return sb2.toString();
    }
}
