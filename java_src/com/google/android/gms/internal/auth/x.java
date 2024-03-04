package com.google.android.gms.internal.auth;
/* loaded from: classes2.dex */
final class x extends z {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f7903b;

    /* renamed from: c  reason: collision with root package name */
    private int f7904c;

    /* renamed from: d  reason: collision with root package name */
    private int f7905d;

    /* renamed from: e  reason: collision with root package name */
    private int f7906e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ x(byte[] bArr, int i9, int i10, boolean z10, w wVar) {
        super(null);
        this.f7906e = Integer.MAX_VALUE;
        this.f7903b = bArr;
        this.f7904c = 0;
    }

    public final int a(int i9) throws zzfa {
        int i10 = this.f7906e;
        this.f7906e = 0;
        int i11 = this.f7904c + this.f7905d;
        this.f7904c = i11;
        if (i11 > 0) {
            this.f7905d = i11;
            this.f7904c = i11 - i11;
        } else {
            this.f7905d = 0;
        }
        return i10;
    }
}
