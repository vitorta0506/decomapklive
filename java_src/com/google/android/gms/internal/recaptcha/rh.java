package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class rh implements dh {

    /* renamed from: a  reason: collision with root package name */
    private final gh f9024a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9025b;

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f9026c;

    /* renamed from: d  reason: collision with root package name */
    private final int f9027d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rh(gh ghVar, String str, Object[] objArr) {
        this.f9024a = ghVar;
        this.f9025b = str;
        this.f9026c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f9027d = charAt;
            return;
        }
        int i9 = charAt & 8191;
        int i10 = 13;
        int i11 = 1;
        while (true) {
            int i12 = i11 + 1;
            char charAt2 = str.charAt(i11);
            if (charAt2 < 55296) {
                this.f9027d = i9 | (charAt2 << i10);
                return;
            }
            i9 |= (charAt2 & 8191) << i10;
            i10 += 13;
            i11 = i12;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.dh
    public final boolean D() {
        return (this.f9027d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.recaptcha.dh
    public final int E() {
        return (this.f9027d & 1) == 1 ? 1 : 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        return this.f9025b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object[] b() {
        return this.f9026c;
    }

    @Override // com.google.android.gms.internal.recaptcha.dh
    public final gh zza() {
        return this.f9024a;
    }
}
