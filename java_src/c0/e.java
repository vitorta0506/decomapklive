package c0;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c0.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.UByte;
/* loaded from: classes.dex */
public class e implements a {

    /* renamed from: u  reason: collision with root package name */
    private static final String f1416u = "e";
    @ColorInt

    /* renamed from: a  reason: collision with root package name */
    private int[] f1417a;
    @ColorInt

    /* renamed from: b  reason: collision with root package name */
    private final int[] f1418b;

    /* renamed from: c  reason: collision with root package name */
    private final a.InterfaceC0021a f1419c;

    /* renamed from: d  reason: collision with root package name */
    private ByteBuffer f1420d;

    /* renamed from: e  reason: collision with root package name */
    private byte[] f1421e;

    /* renamed from: f  reason: collision with root package name */
    private short[] f1422f;

    /* renamed from: g  reason: collision with root package name */
    private byte[] f1423g;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f1424h;

    /* renamed from: i  reason: collision with root package name */
    private byte[] f1425i;
    @ColorInt

    /* renamed from: j  reason: collision with root package name */
    private int[] f1426j;

    /* renamed from: k  reason: collision with root package name */
    private int f1427k;

    /* renamed from: l  reason: collision with root package name */
    private c f1428l;

    /* renamed from: m  reason: collision with root package name */
    private Bitmap f1429m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f1430n;

    /* renamed from: o  reason: collision with root package name */
    private int f1431o;

    /* renamed from: p  reason: collision with root package name */
    private int f1432p;

    /* renamed from: q  reason: collision with root package name */
    private int f1433q;

    /* renamed from: r  reason: collision with root package name */
    private int f1434r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private Boolean f1435s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    private Bitmap.Config f1436t;

    public e(@NonNull a.InterfaceC0021a interfaceC0021a, c cVar, ByteBuffer byteBuffer, int i9) {
        this(interfaceC0021a);
        q(cVar, byteBuffer, i9);
    }

    @ColorInt
    private int i(int i9, int i10, int i11) {
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = i9; i17 < this.f1432p + i9; i17++) {
            byte[] bArr = this.f1425i;
            if (i17 >= bArr.length || i17 >= i10) {
                break;
            }
            int i18 = this.f1417a[bArr[i17] & UByte.MAX_VALUE];
            if (i18 != 0) {
                i12 += (i18 >> 24) & 255;
                i13 += (i18 >> 16) & 255;
                i14 += (i18 >> 8) & 255;
                i15 += i18 & 255;
                i16++;
            }
        }
        int i19 = i9 + i11;
        for (int i20 = i19; i20 < this.f1432p + i19; i20++) {
            byte[] bArr2 = this.f1425i;
            if (i20 >= bArr2.length || i20 >= i10) {
                break;
            }
            int i21 = this.f1417a[bArr2[i20] & UByte.MAX_VALUE];
            if (i21 != 0) {
                i12 += (i21 >> 24) & 255;
                i13 += (i21 >> 16) & 255;
                i14 += (i21 >> 8) & 255;
                i15 += i21 & 255;
                i16++;
            }
        }
        if (i16 == 0) {
            return 0;
        }
        return ((i12 / i16) << 24) | ((i13 / i16) << 16) | ((i14 / i16) << 8) | (i15 / i16);
    }

    private void j(b bVar) {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int[] iArr = this.f1426j;
        int i14 = bVar.f1391d;
        int i15 = this.f1432p;
        int i16 = i14 / i15;
        int i17 = bVar.f1389b / i15;
        int i18 = bVar.f1390c / i15;
        int i19 = bVar.f1388a / i15;
        boolean z10 = this.f1427k == 0;
        int i20 = this.f1434r;
        int i21 = this.f1433q;
        byte[] bArr = this.f1425i;
        int[] iArr2 = this.f1417a;
        Boolean bool = this.f1435s;
        int i22 = 8;
        int i23 = 0;
        int i24 = 0;
        int i25 = 1;
        while (i23 < i16) {
            Boolean bool2 = bool;
            if (bVar.f1392e) {
                if (i24 >= i16) {
                    i9 = i16;
                    int i26 = i25 + 1;
                    if (i26 == 2) {
                        i25 = i26;
                        i24 = 4;
                    } else if (i26 == 3) {
                        i25 = i26;
                        i24 = 2;
                        i22 = 4;
                    } else if (i26 != 4) {
                        i25 = i26;
                    } else {
                        i25 = i26;
                        i24 = 1;
                        i22 = 2;
                    }
                } else {
                    i9 = i16;
                }
                i10 = i24 + i22;
            } else {
                i9 = i16;
                i10 = i24;
                i24 = i23;
            }
            int i27 = i24 + i17;
            boolean z11 = i15 == 1;
            if (i27 < i21) {
                int i28 = i27 * i20;
                int i29 = i28 + i19;
                int i30 = i29 + i18;
                int i31 = i28 + i20;
                if (i31 < i30) {
                    i30 = i31;
                }
                i11 = i10;
                int i32 = i23 * i15 * bVar.f1390c;
                if (z11) {
                    int i33 = i29;
                    while (i33 < i30) {
                        int i34 = i17;
                        int i35 = iArr2[bArr[i32] & UByte.MAX_VALUE];
                        if (i35 != 0) {
                            iArr[i33] = i35;
                        } else if (z10 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i32 += i15;
                        i33++;
                        i17 = i34;
                    }
                } else {
                    i13 = i17;
                    int i36 = ((i30 - i29) * i15) + i32;
                    int i37 = i29;
                    while (true) {
                        i12 = i18;
                        if (i37 < i30) {
                            int i38 = i(i32, i36, bVar.f1390c);
                            if (i38 != 0) {
                                iArr[i37] = i38;
                            } else if (z10 && bool2 == null) {
                                bool2 = Boolean.TRUE;
                            }
                            i32 += i15;
                            i37++;
                            i18 = i12;
                        }
                    }
                    bool = bool2;
                    i23++;
                    i17 = i13;
                    i18 = i12;
                    i16 = i9;
                    i24 = i11;
                }
            } else {
                i11 = i10;
            }
            i13 = i17;
            i12 = i18;
            bool = bool2;
            i23++;
            i17 = i13;
            i18 = i12;
            i16 = i9;
            i24 = i11;
        }
        Boolean bool3 = bool;
        if (this.f1435s == null) {
            this.f1435s = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
        }
    }

    private void k(b bVar) {
        b bVar2 = bVar;
        int[] iArr = this.f1426j;
        int i9 = bVar2.f1391d;
        int i10 = bVar2.f1389b;
        int i11 = bVar2.f1390c;
        int i12 = bVar2.f1388a;
        boolean z10 = this.f1427k == 0;
        int i13 = this.f1434r;
        byte[] bArr = this.f1425i;
        int[] iArr2 = this.f1417a;
        int i14 = 0;
        byte b10 = -1;
        while (i14 < i9) {
            int i15 = (i14 + i10) * i13;
            int i16 = i15 + i12;
            int i17 = i16 + i11;
            int i18 = i15 + i13;
            if (i18 < i17) {
                i17 = i18;
            }
            int i19 = bVar2.f1390c * i14;
            int i20 = i16;
            while (i20 < i17) {
                byte b11 = bArr[i19];
                int i21 = i9;
                int i22 = b11 & UByte.MAX_VALUE;
                if (i22 != b10) {
                    int i23 = iArr2[i22];
                    if (i23 != 0) {
                        iArr[i20] = i23;
                    } else {
                        b10 = b11;
                    }
                }
                i19++;
                i20++;
                i9 = i21;
            }
            i14++;
            bVar2 = bVar;
        }
        Boolean bool = this.f1435s;
        this.f1435s = Boolean.valueOf((bool != null && bool.booleanValue()) || (this.f1435s == null && z10 && b10 != -1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void l(b bVar) {
        int i9;
        int i10;
        short s10;
        e eVar = this;
        if (bVar != null) {
            eVar.f1420d.position(bVar.f1397j);
        }
        if (bVar == null) {
            c cVar = eVar.f1428l;
            i9 = cVar.f1404f;
            i10 = cVar.f1405g;
        } else {
            i9 = bVar.f1390c;
            i10 = bVar.f1391d;
        }
        int i11 = i9 * i10;
        byte[] bArr = eVar.f1425i;
        if (bArr == null || bArr.length < i11) {
            eVar.f1425i = eVar.f1419c.b(i11);
        }
        byte[] bArr2 = eVar.f1425i;
        if (eVar.f1422f == null) {
            eVar.f1422f = new short[4096];
        }
        short[] sArr = eVar.f1422f;
        if (eVar.f1423g == null) {
            eVar.f1423g = new byte[4096];
        }
        byte[] bArr3 = eVar.f1423g;
        if (eVar.f1424h == null) {
            eVar.f1424h = new byte[4097];
        }
        byte[] bArr4 = eVar.f1424h;
        int p10 = p();
        int i12 = 1 << p10;
        int i13 = i12 + 1;
        int i14 = i12 + 2;
        int i15 = p10 + 1;
        int i16 = (1 << i15) - 1;
        int i17 = 0;
        for (int i18 = 0; i18 < i12; i18++) {
            sArr[i18] = 0;
            bArr3[i18] = (byte) i18;
        }
        byte[] bArr5 = eVar.f1421e;
        int i19 = i15;
        int i20 = i14;
        int i21 = i16;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = -1;
        int i28 = 0;
        int i29 = 0;
        while (true) {
            if (i17 >= i11) {
                break;
            }
            if (i22 == 0) {
                i22 = o();
                if (i22 <= 0) {
                    eVar.f1431o = 3;
                    break;
                }
                i23 = 0;
            }
            i25 += (bArr5[i23] & UByte.MAX_VALUE) << i24;
            i23++;
            i22--;
            int i30 = i24 + 8;
            int i31 = i20;
            int i32 = i19;
            int i33 = i27;
            int i34 = i15;
            int i35 = i28;
            while (true) {
                if (i30 < i32) {
                    i27 = i33;
                    i20 = i31;
                    i24 = i30;
                    eVar = this;
                    i28 = i35;
                    i15 = i34;
                    i19 = i32;
                    break;
                }
                int i36 = i14;
                int i37 = i25 & i21;
                i25 >>= i32;
                i30 -= i32;
                if (i37 == i12) {
                    i21 = i16;
                    i32 = i34;
                    i31 = i36;
                    i14 = i31;
                    i33 = -1;
                } else if (i37 == i13) {
                    i24 = i30;
                    i28 = i35;
                    i20 = i31;
                    i15 = i34;
                    i14 = i36;
                    i27 = i33;
                    i19 = i32;
                    eVar = this;
                    break;
                } else if (i33 == -1) {
                    bArr2[i26] = bArr3[i37];
                    i26++;
                    i17++;
                    i33 = i37;
                    i35 = i33;
                    i14 = i36;
                    i30 = i30;
                } else {
                    if (i37 >= i31) {
                        bArr4[i29] = (byte) i35;
                        i29++;
                        s10 = i33;
                    } else {
                        s10 = i37;
                    }
                    while (s10 >= i12) {
                        bArr4[i29] = bArr3[s10];
                        i29++;
                        s10 = sArr[s10];
                    }
                    i35 = bArr3[s10] & UByte.MAX_VALUE;
                    byte b10 = (byte) i35;
                    bArr2[i26] = b10;
                    while (true) {
                        i26++;
                        i17++;
                        if (i29 <= 0) {
                            break;
                        }
                        i29--;
                        bArr2[i26] = bArr4[i29];
                    }
                    byte[] bArr6 = bArr4;
                    if (i31 < 4096) {
                        sArr[i31] = (short) i33;
                        bArr3[i31] = b10;
                        i31++;
                        if ((i31 & i21) == 0 && i31 < 4096) {
                            i32++;
                            i21 += i31;
                        }
                    }
                    i33 = i37;
                    i14 = i36;
                    i30 = i30;
                    bArr4 = bArr6;
                }
            }
        }
        Arrays.fill(bArr2, i26, i11, (byte) 0);
    }

    private Bitmap n() {
        Boolean bool = this.f1435s;
        Bitmap c10 = this.f1419c.c(this.f1434r, this.f1433q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f1436t);
        c10.setHasAlpha(true);
        return c10;
    }

    private int o() {
        int p10 = p();
        if (p10 <= 0) {
            return p10;
        }
        ByteBuffer byteBuffer = this.f1420d;
        byteBuffer.get(this.f1421e, 0, Math.min(p10, byteBuffer.remaining()));
        return p10;
    }

    private int p() {
        return this.f1420d.get() & UByte.MAX_VALUE;
    }

    private Bitmap r(b bVar, b bVar2) {
        int i9;
        int i10;
        Bitmap bitmap;
        int[] iArr = this.f1426j;
        int i11 = 0;
        if (bVar2 == null) {
            Bitmap bitmap2 = this.f1429m;
            if (bitmap2 != null) {
                this.f1419c.a(bitmap2);
            }
            this.f1429m = null;
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && bVar2.f1394g == 3 && this.f1429m == null) {
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && (i10 = bVar2.f1394g) > 0) {
            if (i10 == 2) {
                if (!bVar.f1393f) {
                    c cVar = this.f1428l;
                    int i12 = cVar.f1410l;
                    if (bVar.f1398k == null || cVar.f1408j != bVar.f1395h) {
                        i11 = i12;
                    }
                }
                int i13 = bVar2.f1391d;
                int i14 = this.f1432p;
                int i15 = i13 / i14;
                int i16 = bVar2.f1389b / i14;
                int i17 = bVar2.f1390c / i14;
                int i18 = bVar2.f1388a / i14;
                int i19 = this.f1434r;
                int i20 = (i16 * i19) + i18;
                int i21 = (i15 * i19) + i20;
                while (i20 < i21) {
                    int i22 = i20 + i17;
                    for (int i23 = i20; i23 < i22; i23++) {
                        iArr[i23] = i11;
                    }
                    i20 += this.f1434r;
                }
            } else if (i10 == 3 && (bitmap = this.f1429m) != null) {
                int i24 = this.f1434r;
                bitmap.getPixels(iArr, 0, i24, 0, 0, i24, this.f1433q);
            }
        }
        l(bVar);
        if (!bVar.f1392e && this.f1432p == 1) {
            k(bVar);
        } else {
            j(bVar);
        }
        if (this.f1430n && ((i9 = bVar.f1394g) == 0 || i9 == 1)) {
            if (this.f1429m == null) {
                this.f1429m = n();
            }
            Bitmap bitmap3 = this.f1429m;
            int i25 = this.f1434r;
            bitmap3.setPixels(iArr, 0, i25, 0, 0, i25, this.f1433q);
        }
        Bitmap n9 = n();
        int i26 = this.f1434r;
        n9.setPixels(iArr, 0, i26, 0, 0, i26, this.f1433q);
        return n9;
    }

    @Override // c0.a
    @Nullable
    public synchronized Bitmap a() {
        if (this.f1428l.f1401c <= 0 || this.f1427k < 0) {
            String str = f1416u;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, "Unable to decode frame, frameCount=" + this.f1428l.f1401c + ", framePointer=" + this.f1427k);
            }
            this.f1431o = 1;
        }
        int i9 = this.f1431o;
        if (i9 != 1 && i9 != 2) {
            this.f1431o = 0;
            if (this.f1421e == null) {
                this.f1421e = this.f1419c.b(255);
            }
            b bVar = this.f1428l.f1403e.get(this.f1427k);
            int i10 = this.f1427k - 1;
            b bVar2 = i10 >= 0 ? this.f1428l.f1403e.get(i10) : null;
            int[] iArr = bVar.f1398k;
            if (iArr == null) {
                iArr = this.f1428l.f1399a;
            }
            this.f1417a = iArr;
            if (iArr == null) {
                String str2 = f1416u;
                if (Log.isLoggable(str2, 3)) {
                    Log.d(str2, "No valid color table found for frame #" + this.f1427k);
                }
                this.f1431o = 1;
                return null;
            }
            if (bVar.f1393f) {
                System.arraycopy(iArr, 0, this.f1418b, 0, iArr.length);
                int[] iArr2 = this.f1418b;
                this.f1417a = iArr2;
                iArr2[bVar.f1395h] = 0;
                if (bVar.f1394g == 2 && this.f1427k == 0) {
                    this.f1435s = Boolean.TRUE;
                }
            }
            return r(bVar, bVar2);
        }
        String str3 = f1416u;
        if (Log.isLoggable(str3, 3)) {
            Log.d(str3, "Unable to decode frame, status=" + this.f1431o);
        }
        return null;
    }

    @Override // c0.a
    public void b() {
        this.f1427k = (this.f1427k + 1) % this.f1428l.f1401c;
    }

    @Override // c0.a
    public int c() {
        return this.f1428l.f1401c;
    }

    @Override // c0.a
    public void clear() {
        this.f1428l = null;
        byte[] bArr = this.f1425i;
        if (bArr != null) {
            this.f1419c.e(bArr);
        }
        int[] iArr = this.f1426j;
        if (iArr != null) {
            this.f1419c.f(iArr);
        }
        Bitmap bitmap = this.f1429m;
        if (bitmap != null) {
            this.f1419c.a(bitmap);
        }
        this.f1429m = null;
        this.f1420d = null;
        this.f1435s = null;
        byte[] bArr2 = this.f1421e;
        if (bArr2 != null) {
            this.f1419c.e(bArr2);
        }
    }

    @Override // c0.a
    public void d(@NonNull Bitmap.Config config) {
        if (config != Bitmap.Config.ARGB_8888 && config != Bitmap.Config.RGB_565) {
            throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
        }
        this.f1436t = config;
    }

    @Override // c0.a
    public int e() {
        int i9;
        if (this.f1428l.f1401c <= 0 || (i9 = this.f1427k) < 0) {
            return 0;
        }
        return m(i9);
    }

    @Override // c0.a
    public void f() {
        this.f1427k = -1;
    }

    @Override // c0.a
    public int g() {
        return this.f1427k;
    }

    @Override // c0.a
    @NonNull
    public ByteBuffer getData() {
        return this.f1420d;
    }

    @Override // c0.a
    public int h() {
        return this.f1420d.limit() + this.f1425i.length + (this.f1426j.length * 4);
    }

    public int m(int i9) {
        if (i9 >= 0) {
            c cVar = this.f1428l;
            if (i9 < cVar.f1401c) {
                return cVar.f1403e.get(i9).f1396i;
            }
        }
        return -1;
    }

    public synchronized void q(@NonNull c cVar, @NonNull ByteBuffer byteBuffer, int i9) {
        if (i9 > 0) {
            int highestOneBit = Integer.highestOneBit(i9);
            this.f1431o = 0;
            this.f1428l = cVar;
            this.f1427k = -1;
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f1420d = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f1420d.order(ByteOrder.LITTLE_ENDIAN);
            this.f1430n = false;
            Iterator<b> it = cVar.f1403e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (it.next().f1394g == 3) {
                    this.f1430n = true;
                    break;
                }
            }
            this.f1432p = highestOneBit;
            int i10 = cVar.f1404f;
            this.f1434r = i10 / highestOneBit;
            int i11 = cVar.f1405g;
            this.f1433q = i11 / highestOneBit;
            this.f1425i = this.f1419c.b(i10 * i11);
            this.f1426j = this.f1419c.d(this.f1434r * this.f1433q);
        } else {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i9);
        }
    }

    public e(@NonNull a.InterfaceC0021a interfaceC0021a) {
        this.f1418b = new int[256];
        this.f1436t = Bitmap.Config.ARGB_8888;
        this.f1419c = interfaceC0021a;
        this.f1428l = new c();
    }
}
