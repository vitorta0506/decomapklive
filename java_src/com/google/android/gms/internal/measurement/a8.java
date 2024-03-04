package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class a8 extends c8 {

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f7936b;

    /* renamed from: c  reason: collision with root package name */
    private int f7937c;

    /* renamed from: d  reason: collision with root package name */
    private int f7938d;

    /* renamed from: e  reason: collision with root package name */
    private int f7939e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ a8(byte[] bArr, int i9, int i10, boolean z10, z7 z7Var) {
        super(null);
        this.f7939e = Integer.MAX_VALUE;
        this.f7936b = bArr;
        this.f7937c = 0;
    }

    public final int c(int i9) throws zzko {
        int i10 = this.f7939e;
        this.f7939e = 0;
        int i11 = this.f7937c + this.f7938d;
        this.f7937c = i11;
        if (i11 > 0) {
            this.f7938d = i11;
            this.f7937c = i11 - i11;
        } else {
            this.f7938d = 0;
        }
        return i10;
    }
}
