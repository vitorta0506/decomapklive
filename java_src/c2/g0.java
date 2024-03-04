package c2;

import kotlin.UByte;
/* loaded from: classes.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f1503a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1504b;

    /* renamed from: c  reason: collision with root package name */
    private int f1505c;

    /* renamed from: d  reason: collision with root package name */
    private int f1506d;

    public g0(byte[] bArr) {
        this.f1503a = bArr;
        this.f1504b = bArr.length;
    }

    private void a() {
        int i9;
        int i10 = this.f1505c;
        com.google.android.exoplayer2.util.a.f(i10 >= 0 && (i10 < (i9 = this.f1504b) || (i10 == i9 && this.f1506d == 0)));
    }

    public int b() {
        return (this.f1505c * 8) + this.f1506d;
    }

    public boolean c() {
        boolean z10 = (((this.f1503a[this.f1505c] & UByte.MAX_VALUE) >> this.f1506d) & 1) == 1;
        e(1);
        return z10;
    }

    public int d(int i9) {
        int i10 = this.f1505c;
        int min = Math.min(i9, 8 - this.f1506d);
        int i11 = i10 + 1;
        int i12 = ((this.f1503a[i10] & UByte.MAX_VALUE) >> this.f1506d) & (255 >> (8 - min));
        while (min < i9) {
            i12 |= (this.f1503a[i11] & UByte.MAX_VALUE) << min;
            min += 8;
            i11++;
        }
        int i13 = i12 & ((-1) >>> (32 - i9));
        e(i9);
        return i13;
    }

    public void e(int i9) {
        int i10 = i9 / 8;
        int i11 = this.f1505c + i10;
        this.f1505c = i11;
        int i12 = this.f1506d + (i9 - (i10 * 8));
        this.f1506d = i12;
        if (i12 > 7) {
            this.f1505c = i11 + 1;
            this.f1506d = i12 - 8;
        }
        a();
    }
}
