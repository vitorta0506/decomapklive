package z2;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import com.tencent.thumbplayer.api.TPOptionalID;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import x2.b;
/* loaded from: classes.dex */
final class b {

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f60299h = {0, 7, 8, 15};

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f60300i = {0, 119, -120, -1};

    /* renamed from: j  reason: collision with root package name */
    private static final byte[] f60301j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: a  reason: collision with root package name */
    private final Paint f60302a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f60303b;

    /* renamed from: c  reason: collision with root package name */
    private final Canvas f60304c;

    /* renamed from: d  reason: collision with root package name */
    private final C0702b f60305d;

    /* renamed from: e  reason: collision with root package name */
    private final a f60306e;

    /* renamed from: f  reason: collision with root package name */
    private final h f60307f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f60308g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f60309a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f60310b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f60311c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f60312d;

        public a(int i9, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f60309a = i9;
            this.f60310b = iArr;
            this.f60311c = iArr2;
            this.f60312d = iArr3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0702b {

        /* renamed from: a  reason: collision with root package name */
        public final int f60313a;

        /* renamed from: b  reason: collision with root package name */
        public final int f60314b;

        /* renamed from: c  reason: collision with root package name */
        public final int f60315c;

        /* renamed from: d  reason: collision with root package name */
        public final int f60316d;

        /* renamed from: e  reason: collision with root package name */
        public final int f60317e;

        /* renamed from: f  reason: collision with root package name */
        public final int f60318f;

        public C0702b(int i9, int i10, int i11, int i12, int i13, int i14) {
            this.f60313a = i9;
            this.f60314b = i10;
            this.f60315c = i11;
            this.f60316d = i12;
            this.f60317e = i13;
            this.f60318f = i14;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f60319a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f60320b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f60321c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f60322d;

        public c(int i9, boolean z10, byte[] bArr, byte[] bArr2) {
            this.f60319a = i9;
            this.f60320b = z10;
            this.f60321c = bArr;
            this.f60322d = bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f60323a;

        /* renamed from: b  reason: collision with root package name */
        public final int f60324b;

        /* renamed from: c  reason: collision with root package name */
        public final int f60325c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<e> f60326d;

        public d(int i9, int i10, int i11, SparseArray<e> sparseArray) {
            this.f60323a = i9;
            this.f60324b = i10;
            this.f60325c = i11;
            this.f60326d = sparseArray;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f60327a;

        /* renamed from: b  reason: collision with root package name */
        public final int f60328b;

        public e(int i9, int i10) {
            this.f60327a = i9;
            this.f60328b = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f60329a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f60330b;

        /* renamed from: c  reason: collision with root package name */
        public final int f60331c;

        /* renamed from: d  reason: collision with root package name */
        public final int f60332d;

        /* renamed from: e  reason: collision with root package name */
        public final int f60333e;

        /* renamed from: f  reason: collision with root package name */
        public final int f60334f;

        /* renamed from: g  reason: collision with root package name */
        public final int f60335g;

        /* renamed from: h  reason: collision with root package name */
        public final int f60336h;

        /* renamed from: i  reason: collision with root package name */
        public final int f60337i;

        /* renamed from: j  reason: collision with root package name */
        public final int f60338j;

        /* renamed from: k  reason: collision with root package name */
        public final SparseArray<g> f60339k;

        public f(int i9, boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, SparseArray<g> sparseArray) {
            this.f60329a = i9;
            this.f60330b = z10;
            this.f60331c = i10;
            this.f60332d = i11;
            this.f60333e = i12;
            this.f60334f = i13;
            this.f60335g = i14;
            this.f60336h = i15;
            this.f60337i = i16;
            this.f60338j = i17;
            this.f60339k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray<g> sparseArray = fVar.f60339k;
            for (int i9 = 0; i9 < sparseArray.size(); i9++) {
                this.f60339k.put(sparseArray.keyAt(i9), sparseArray.valueAt(i9));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final int f60340a;

        /* renamed from: b  reason: collision with root package name */
        public final int f60341b;

        /* renamed from: c  reason: collision with root package name */
        public final int f60342c;

        /* renamed from: d  reason: collision with root package name */
        public final int f60343d;

        /* renamed from: e  reason: collision with root package name */
        public final int f60344e;

        /* renamed from: f  reason: collision with root package name */
        public final int f60345f;

        public g(int i9, int i10, int i11, int i12, int i13, int i14) {
            this.f60340a = i9;
            this.f60341b = i10;
            this.f60342c = i11;
            this.f60343d = i12;
            this.f60344e = i13;
            this.f60345f = i14;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final int f60346a;

        /* renamed from: b  reason: collision with root package name */
        public final int f60347b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray<f> f60348c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<a> f60349d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        public final SparseArray<c> f60350e = new SparseArray<>();

        /* renamed from: f  reason: collision with root package name */
        public final SparseArray<a> f60351f = new SparseArray<>();

        /* renamed from: g  reason: collision with root package name */
        public final SparseArray<c> f60352g = new SparseArray<>();
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        public C0702b f60353h;
        @Nullable

        /* renamed from: i  reason: collision with root package name */
        public d f60354i;

        public h(int i9, int i10) {
            this.f60346a = i9;
            this.f60347b = i10;
        }

        public void a() {
            this.f60348c.clear();
            this.f60349d.clear();
            this.f60350e.clear();
            this.f60351f.clear();
            this.f60352g.clear();
            this.f60353h = null;
            this.f60354i = null;
        }
    }

    public b(int i9, int i10) {
        Paint paint = new Paint();
        this.f60302a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f60303b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f60304c = new Canvas();
        this.f60305d = new C0702b(719, 575, 0, 719, 0, 575);
        this.f60306e = new a(0, c(), d(), e());
        this.f60307f = new h(i9, i10);
    }

    private static byte[] a(int i9, int i10, a0 a0Var) {
        byte[] bArr = new byte[i9];
        for (int i11 = 0; i11 < i9; i11++) {
            bArr[i11] = (byte) a0Var.h(i10);
        }
        return bArr;
    }

    private static int[] c() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] d() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i9 = 1; i9 < 16; i9++) {
            if (i9 < 8) {
                iArr[i9] = f(255, (i9 & 1) != 0 ? 255 : 0, (i9 & 2) != 0 ? 255 : 0, (i9 & 4) != 0 ? 255 : 0);
            } else {
                iArr[i9] = f(255, (i9 & 1) != 0 ? 127 : 0, (i9 & 2) != 0 ? 127 : 0, (i9 & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] e() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i9 = 0; i9 < 256; i9++) {
            if (i9 < 8) {
                iArr[i9] = f(63, (i9 & 1) != 0 ? 255 : 0, (i9 & 2) != 0 ? 255 : 0, (i9 & 4) == 0 ? 0 : 255);
            } else {
                int i10 = i9 & TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE;
                if (i10 == 0) {
                    iArr[i9] = f(255, ((i9 & 1) != 0 ? 85 : 0) + ((i9 & 16) != 0 ? 170 : 0), ((i9 & 2) != 0 ? 85 : 0) + ((i9 & 32) != 0 ? 170 : 0), ((i9 & 4) == 0 ? 0 : 85) + ((i9 & 64) == 0 ? 0 : 170));
                } else if (i10 == 8) {
                    iArr[i9] = f(127, ((i9 & 1) != 0 ? 85 : 0) + ((i9 & 16) != 0 ? 170 : 0), ((i9 & 2) != 0 ? 85 : 0) + ((i9 & 32) != 0 ? 170 : 0), ((i9 & 4) == 0 ? 0 : 85) + ((i9 & 64) == 0 ? 0 : 170));
                } else if (i10 == 128) {
                    iArr[i9] = f(255, ((i9 & 1) != 0 ? 43 : 0) + 127 + ((i9 & 16) != 0 ? 85 : 0), ((i9 & 2) != 0 ? 43 : 0) + 127 + ((i9 & 32) != 0 ? 85 : 0), ((i9 & 4) == 0 ? 0 : 43) + 127 + ((i9 & 64) == 0 ? 0 : 85));
                } else if (i10 == 136) {
                    iArr[i9] = f(255, ((i9 & 1) != 0 ? 43 : 0) + ((i9 & 16) != 0 ? 85 : 0), ((i9 & 2) != 0 ? 43 : 0) + ((i9 & 32) != 0 ? 85 : 0), ((i9 & 4) == 0 ? 0 : 43) + ((i9 & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static int f(int i9, int i10, int i11, int i12) {
        return (i9 << 24) | (i10 << 16) | (i11 << 8) | i12;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0083 A[LOOP:0: B:3:0x0009->B:33:0x0083, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int g(com.google.android.exoplayer2.util.a0 r13, int[] r14, @androidx.annotation.Nullable byte[] r15, int r16, int r17, @androidx.annotation.Nullable android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L9:
            r3 = 2
            int r4 = r13.h(r3)
            r5 = 1
            if (r4 == 0) goto L14
            r11 = r2
        L12:
            r12 = 1
            goto L61
        L14:
            boolean r4 = r13.g()
            r6 = 3
            if (r4 == 0) goto L28
            int r4 = r13.h(r6)
            int r4 = r4 + r6
            int r3 = r13.h(r3)
        L24:
            r11 = r2
            r12 = r4
            r4 = r3
            goto L61
        L28:
            boolean r4 = r13.g()
            if (r4 == 0) goto L31
            r11 = r2
            r4 = 0
            goto L12
        L31:
            int r4 = r13.h(r3)
            if (r4 == 0) goto L5e
            if (r4 == r5) goto L5a
            if (r4 == r3) goto L4e
            if (r4 == r6) goto L41
            r11 = r2
            r4 = 0
        L3f:
            r12 = 0
            goto L61
        L41:
            r4 = 8
            int r4 = r13.h(r4)
            int r4 = r4 + 29
            int r3 = r13.h(r3)
            goto L24
        L4e:
            r4 = 4
            int r4 = r13.h(r4)
            int r4 = r4 + 12
            int r3 = r13.h(r3)
            goto L24
        L5a:
            r11 = r2
            r4 = 0
            r12 = 2
            goto L61
        L5e:
            r4 = 0
            r11 = 1
            goto L3f
        L61:
            if (r12 == 0) goto L7f
            if (r8 == 0) goto L7f
            if (r15 == 0) goto L69
            r4 = r15[r4]
        L69:
            r2 = r14[r4]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r12
            float r6 = (float) r2
            int r2 = r1 + 1
            float r7 = (float) r2
            r2 = r19
            r5 = r6
            r6 = r7
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L7f:
            int r10 = r10 + r12
            if (r11 == 0) goto L83
            return r10
        L83:
            r2 = r11
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: z2.b.g(com.google.android.exoplayer2.util.a0, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008e A[LOOP:0: B:3:0x0009->B:36:0x008e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int h(com.google.android.exoplayer2.util.a0 r13, int[] r14, @androidx.annotation.Nullable byte[] r15, int r16, int r17, @androidx.annotation.Nullable android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L9:
            r3 = 4
            int r4 = r13.h(r3)
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L16
            r11 = r2
        L13:
            r12 = 1
            goto L6e
        L16:
            boolean r4 = r13.g()
            r7 = 3
            if (r4 != 0) goto L2c
            int r3 = r13.h(r7)
            if (r3 == 0) goto L29
            int r5 = r3 + 2
            r11 = r2
            r12 = r5
            r4 = 0
            goto L6e
        L29:
            r4 = 0
            r11 = 1
            goto L4d
        L2c:
            boolean r4 = r13.g()
            if (r4 != 0) goto L3f
            int r4 = r13.h(r5)
            int r5 = r4 + 4
            int r4 = r13.h(r3)
        L3c:
            r11 = r2
            r12 = r5
            goto L6e
        L3f:
            int r4 = r13.h(r5)
            if (r4 == 0) goto L6b
            if (r4 == r6) goto L67
            if (r4 == r5) goto L5c
            if (r4 == r7) goto L4f
            r11 = r2
            r4 = 0
        L4d:
            r12 = 0
            goto L6e
        L4f:
            r4 = 8
            int r4 = r13.h(r4)
            int r5 = r4 + 25
            int r4 = r13.h(r3)
            goto L3c
        L5c:
            int r4 = r13.h(r3)
            int r5 = r4 + 9
            int r4 = r13.h(r3)
            goto L3c
        L67:
            r11 = r2
            r4 = 0
            r12 = 2
            goto L6e
        L6b:
            r11 = r2
            r4 = 0
            goto L13
        L6e:
            if (r12 == 0) goto L8a
            if (r8 == 0) goto L8a
            if (r15 == 0) goto L76
            r4 = r15[r4]
        L76:
            r2 = r14[r4]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r12
            float r5 = (float) r2
            int r2 = r1 + 1
            float r6 = (float) r2
            r2 = r19
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L8a:
            int r10 = r10 + r12
            if (r11 == 0) goto L8e
            return r10
        L8e:
            r2 = r11
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: z2.b.h(com.google.android.exoplayer2.util.a0, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    private static int i(a0 a0Var, int[] iArr, @Nullable byte[] bArr, int i9, int i10, @Nullable Paint paint, Canvas canvas) {
        boolean z10;
        int h10;
        int i11 = i9;
        boolean z11 = false;
        while (true) {
            byte h11 = a0Var.h(8);
            if (h11 != 0) {
                z10 = z11;
                h10 = 1;
            } else if (!a0Var.g()) {
                int h12 = a0Var.h(7);
                if (h12 != 0) {
                    z10 = z11;
                    h10 = h12;
                    h11 = 0;
                } else {
                    h11 = 0;
                    z10 = true;
                    h10 = 0;
                }
            } else {
                z10 = z11;
                h10 = a0Var.h(7);
                h11 = a0Var.h(8);
            }
            if (h10 != 0 && paint != null) {
                if (bArr != null) {
                    h11 = bArr[h11];
                }
                paint.setColor(iArr[h11]);
                canvas.drawRect(i11, i10, i11 + h10, i10 + 1, paint);
            }
            i11 += h10;
            if (z10) {
                return i11;
            }
            z11 = z10;
        }
    }

    private static void j(byte[] bArr, int[] iArr, int i9, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        a0 a0Var = new a0(bArr);
        int i12 = i10;
        int i13 = i11;
        byte[] bArr5 = null;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        while (a0Var.b() != 0) {
            int h10 = a0Var.h(8);
            if (h10 != 240) {
                switch (h10) {
                    case 16:
                        if (i9 == 3) {
                            bArr3 = bArr5 == null ? f60300i : bArr5;
                        } else if (i9 == 2) {
                            bArr3 = bArr7 == null ? f60299h : bArr7;
                        } else {
                            bArr2 = null;
                            i12 = g(a0Var, iArr, bArr2, i12, i13, paint, canvas);
                            a0Var.c();
                            continue;
                        }
                        bArr2 = bArr3;
                        i12 = g(a0Var, iArr, bArr2, i12, i13, paint, canvas);
                        a0Var.c();
                        continue;
                    case 17:
                        if (i9 == 3) {
                            bArr4 = bArr6 == null ? f60301j : bArr6;
                        } else {
                            bArr4 = null;
                        }
                        i12 = h(a0Var, iArr, bArr4, i12, i13, paint, canvas);
                        a0Var.c();
                        continue;
                    case 18:
                        i12 = i(a0Var, iArr, null, i12, i13, paint, canvas);
                        continue;
                    default:
                        switch (h10) {
                            case 32:
                                bArr7 = a(4, 4, a0Var);
                                continue;
                            case 33:
                                bArr5 = a(4, 8, a0Var);
                                continue;
                            case 34:
                                bArr6 = a(16, 8, a0Var);
                                continue;
                            default:
                                continue;
                        }
                }
            } else {
                i13 += 2;
                i12 = i10;
            }
        }
    }

    private static void k(c cVar, a aVar, int i9, int i10, int i11, @Nullable Paint paint, Canvas canvas) {
        int[] iArr;
        if (i9 == 3) {
            iArr = aVar.f60312d;
        } else if (i9 == 2) {
            iArr = aVar.f60311c;
        } else {
            iArr = aVar.f60310b;
        }
        int[] iArr2 = iArr;
        j(cVar.f60321c, iArr2, i9, i10, i11, paint, canvas);
        j(cVar.f60322d, iArr2, i9, i10, i11 + 1, paint, canvas);
    }

    private static a l(a0 a0Var, int i9) {
        int h10;
        int i10;
        int h11;
        int h12;
        int i11;
        int i12 = 8;
        int h13 = a0Var.h(8);
        a0Var.r(8);
        int i13 = 2;
        int i14 = i9 - 2;
        int[] c10 = c();
        int[] d10 = d();
        int[] e10 = e();
        while (i14 > 0) {
            int h14 = a0Var.h(i12);
            int h15 = a0Var.h(i12);
            int i15 = i14 - 2;
            int[] iArr = (h15 & 128) != 0 ? c10 : (h15 & 64) != 0 ? d10 : e10;
            if ((h15 & 1) != 0) {
                h12 = a0Var.h(i12);
                i11 = a0Var.h(i12);
                h10 = a0Var.h(i12);
                h11 = a0Var.h(i12);
                i10 = i15 - 4;
            } else {
                int h16 = a0Var.h(4) << 4;
                h10 = a0Var.h(4) << 4;
                i10 = i15 - 2;
                h11 = a0Var.h(i13) << 6;
                h12 = a0Var.h(6) << i13;
                i11 = h16;
            }
            if (h12 == 0) {
                i11 = 0;
                h10 = 0;
                h11 = 255;
            }
            double d11 = h12;
            double d12 = i11 - 128;
            double d13 = h10 - 128;
            iArr[h14] = f((byte) (255 - (h11 & 255)), l0.p((int) (d11 + (1.402d * d12)), 0, 255), l0.p((int) ((d11 - (0.34414d * d13)) - (d12 * 0.71414d)), 0, 255), l0.p((int) (d11 + (d13 * 1.772d)), 0, 255));
            i14 = i10;
            h13 = h13;
            i12 = 8;
            i13 = 2;
        }
        return new a(h13, c10, d10, e10);
    }

    private static C0702b m(a0 a0Var) {
        int i9;
        int i10;
        int i11;
        int i12;
        a0Var.r(4);
        boolean g10 = a0Var.g();
        a0Var.r(3);
        int h10 = a0Var.h(16);
        int h11 = a0Var.h(16);
        if (g10) {
            int h12 = a0Var.h(16);
            int h13 = a0Var.h(16);
            int h14 = a0Var.h(16);
            i10 = a0Var.h(16);
            i9 = h13;
            i12 = h14;
            i11 = h12;
        } else {
            i9 = h10;
            i10 = h11;
            i11 = 0;
            i12 = 0;
        }
        return new C0702b(h10, h11, i11, i9, i12, i10);
    }

    private static c n(a0 a0Var) {
        byte[] bArr;
        int h10 = a0Var.h(16);
        a0Var.r(4);
        int h11 = a0Var.h(2);
        boolean g10 = a0Var.g();
        a0Var.r(1);
        byte[] bArr2 = l0.f6990f;
        if (h11 == 1) {
            a0Var.r(a0Var.h(8) * 16);
        } else if (h11 == 0) {
            int h12 = a0Var.h(16);
            int h13 = a0Var.h(16);
            if (h12 > 0) {
                bArr2 = new byte[h12];
                a0Var.k(bArr2, 0, h12);
            }
            if (h13 > 0) {
                bArr = new byte[h13];
                a0Var.k(bArr, 0, h13);
                return new c(h10, g10, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new c(h10, g10, bArr2, bArr);
    }

    private static d o(a0 a0Var, int i9) {
        int h10 = a0Var.h(8);
        int h11 = a0Var.h(4);
        int h12 = a0Var.h(2);
        a0Var.r(2);
        int i10 = i9 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i10 > 0) {
            int h13 = a0Var.h(8);
            a0Var.r(8);
            i10 -= 6;
            sparseArray.put(h13, new e(a0Var.h(16), a0Var.h(16)));
        }
        return new d(h10, h11, h12, sparseArray);
    }

    private static f p(a0 a0Var, int i9) {
        int h10;
        int h11;
        int h12 = a0Var.h(8);
        a0Var.r(4);
        boolean g10 = a0Var.g();
        a0Var.r(3);
        int i10 = 16;
        int h13 = a0Var.h(16);
        int h14 = a0Var.h(16);
        int h15 = a0Var.h(3);
        int h16 = a0Var.h(3);
        int i11 = 2;
        a0Var.r(2);
        int h17 = a0Var.h(8);
        int h18 = a0Var.h(8);
        int h19 = a0Var.h(4);
        int h20 = a0Var.h(2);
        a0Var.r(2);
        int i12 = i9 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i12 > 0) {
            int h21 = a0Var.h(i10);
            int h22 = a0Var.h(i11);
            int h23 = a0Var.h(i11);
            int h24 = a0Var.h(12);
            int i13 = h20;
            a0Var.r(4);
            int h25 = a0Var.h(12);
            i12 -= 6;
            if (h22 == 1 || h22 == 2) {
                i12 -= 2;
                h10 = a0Var.h(8);
                h11 = a0Var.h(8);
            } else {
                h10 = 0;
                h11 = 0;
            }
            sparseArray.put(h21, new g(h22, h23, h24, h25, h10, h11));
            h20 = i13;
            i11 = 2;
            i10 = 16;
        }
        return new f(h12, g10, h13, h14, h15, h16, h17, h18, h19, h20, sparseArray);
    }

    private static void q(a0 a0Var, h hVar) {
        f fVar;
        int h10 = a0Var.h(8);
        int h11 = a0Var.h(16);
        int h12 = a0Var.h(16);
        int d10 = a0Var.d() + h12;
        if (h12 * 8 > a0Var.b()) {
            r.i("DvbParser", "Data field length exceeds limit");
            a0Var.r(a0Var.b());
            return;
        }
        switch (h10) {
            case 16:
                if (h11 == hVar.f60346a) {
                    d dVar = hVar.f60354i;
                    d o10 = o(a0Var, h12);
                    if (o10.f60325c != 0) {
                        hVar.f60354i = o10;
                        hVar.f60348c.clear();
                        hVar.f60349d.clear();
                        hVar.f60350e.clear();
                        break;
                    } else if (dVar != null && dVar.f60324b != o10.f60324b) {
                        hVar.f60354i = o10;
                        break;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.f60354i;
                if (h11 == hVar.f60346a && dVar2 != null) {
                    f p10 = p(a0Var, h12);
                    if (dVar2.f60325c == 0 && (fVar = hVar.f60348c.get(p10.f60329a)) != null) {
                        p10.a(fVar);
                    }
                    hVar.f60348c.put(p10.f60329a, p10);
                    break;
                }
                break;
            case 18:
                if (h11 == hVar.f60346a) {
                    a l10 = l(a0Var, h12);
                    hVar.f60349d.put(l10.f60309a, l10);
                    break;
                } else if (h11 == hVar.f60347b) {
                    a l11 = l(a0Var, h12);
                    hVar.f60351f.put(l11.f60309a, l11);
                    break;
                }
                break;
            case 19:
                if (h11 == hVar.f60346a) {
                    c n9 = n(a0Var);
                    hVar.f60350e.put(n9.f60319a, n9);
                    break;
                } else if (h11 == hVar.f60347b) {
                    c n10 = n(a0Var);
                    hVar.f60352g.put(n10.f60319a, n10);
                    break;
                }
                break;
            case 20:
                if (h11 == hVar.f60346a) {
                    hVar.f60353h = m(a0Var);
                    break;
                }
                break;
        }
        a0Var.s(d10 - a0Var.d());
    }

    public List<x2.b> b(byte[] bArr, int i9) {
        int i10;
        int i11;
        SparseArray<g> sparseArray;
        a0 a0Var = new a0(bArr, i9);
        while (a0Var.b() >= 48 && a0Var.h(8) == 15) {
            q(a0Var, this.f60307f);
        }
        h hVar = this.f60307f;
        d dVar = hVar.f60354i;
        if (dVar == null) {
            return Collections.emptyList();
        }
        C0702b c0702b = hVar.f60353h;
        if (c0702b == null) {
            c0702b = this.f60305d;
        }
        Bitmap bitmap = this.f60308g;
        if (bitmap == null || c0702b.f60313a + 1 != bitmap.getWidth() || c0702b.f60314b + 1 != this.f60308g.getHeight()) {
            Bitmap createBitmap = Bitmap.createBitmap(c0702b.f60313a + 1, c0702b.f60314b + 1, Bitmap.Config.ARGB_8888);
            this.f60308g = createBitmap;
            this.f60304c.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<e> sparseArray2 = dVar.f60326d;
        for (int i12 = 0; i12 < sparseArray2.size(); i12++) {
            this.f60304c.save();
            e valueAt = sparseArray2.valueAt(i12);
            f fVar = this.f60307f.f60348c.get(sparseArray2.keyAt(i12));
            int i13 = valueAt.f60327a + c0702b.f60315c;
            int i14 = valueAt.f60328b + c0702b.f60317e;
            this.f60304c.clipRect(i13, i14, Math.min(fVar.f60331c + i13, c0702b.f60316d), Math.min(fVar.f60332d + i14, c0702b.f60318f));
            a aVar = this.f60307f.f60349d.get(fVar.f60335g);
            if (aVar == null && (aVar = this.f60307f.f60351f.get(fVar.f60335g)) == null) {
                aVar = this.f60306e;
            }
            SparseArray<g> sparseArray3 = fVar.f60339k;
            int i15 = 0;
            while (i15 < sparseArray3.size()) {
                int keyAt = sparseArray3.keyAt(i15);
                g valueAt2 = sparseArray3.valueAt(i15);
                c cVar = this.f60307f.f60350e.get(keyAt);
                c cVar2 = cVar == null ? this.f60307f.f60352g.get(keyAt) : cVar;
                if (cVar2 != null) {
                    i11 = i15;
                    sparseArray = sparseArray3;
                    k(cVar2, aVar, fVar.f60334f, valueAt2.f60342c + i13, i14 + valueAt2.f60343d, cVar2.f60320b ? null : this.f60302a, this.f60304c);
                } else {
                    i11 = i15;
                    sparseArray = sparseArray3;
                }
                i15 = i11 + 1;
                sparseArray3 = sparseArray;
            }
            if (fVar.f60330b) {
                int i16 = fVar.f60334f;
                if (i16 == 3) {
                    i10 = aVar.f60312d[fVar.f60336h];
                } else if (i16 == 2) {
                    i10 = aVar.f60311c[fVar.f60337i];
                } else {
                    i10 = aVar.f60310b[fVar.f60338j];
                }
                this.f60303b.setColor(i10);
                this.f60304c.drawRect(i13, i14, fVar.f60331c + i13, fVar.f60332d + i14, this.f60303b);
            }
            arrayList.add(new b.C0686b().f(Bitmap.createBitmap(this.f60308g, i13, i14, fVar.f60331c, fVar.f60332d)).k(i13 / c0702b.f60313a).l(0).h(i14 / c0702b.f60314b, 0).i(0).n(fVar.f60331c / c0702b.f60313a).g(fVar.f60332d / c0702b.f60314b).a());
            this.f60304c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f60304c.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void r() {
        this.f60307f.a();
    }
}
