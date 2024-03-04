package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class ja implements w9 {

    /* renamed from: a  reason: collision with root package name */
    private final z9 f8153a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8154b;

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f8155c;

    /* renamed from: d  reason: collision with root package name */
    private final int f8156d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ja(z9 z9Var, String str, Object[] objArr) {
        this.f8153a = z9Var;
        this.f8154b = str;
        this.f8155c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f8156d = charAt;
            return;
        }
        int i9 = charAt & 8191;
        int i10 = 13;
        int i11 = 1;
        while (true) {
            int i12 = i11 + 1;
            char charAt2 = str.charAt(i11);
            if (charAt2 < 55296) {
                this.f8156d = i9 | (charAt2 << i10);
                return;
            }
            i9 |= (charAt2 & 8191) << i10;
            i10 += 13;
            i11 = i12;
        }
    }

    @Override // com.google.android.gms.internal.measurement.w9
    public final boolean D() {
        return (this.f8156d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.w9
    public final int E() {
        return (this.f8156d & 1) == 1 ? 1 : 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        return this.f8154b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] b() {
        return this.f8155c;
    }

    @Override // com.google.android.gms.internal.measurement.w9
    public final z9 zza() {
        return this.f8153a;
    }
}
