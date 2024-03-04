package sd;

import android.graphics.Matrix;
import android.graphics.Path;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
class a {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int f57854a;

        /* renamed from: b  reason: collision with root package name */
        boolean f57855b;

        private b() {
        }
    }

    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        char f57856a;

        /* renamed from: b  reason: collision with root package name */
        float[] f57857b;

        c(char c10, float[] fArr) {
            this.f57856a = c10;
            this.f57857b = fArr;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static void a(Path path, float[] fArr, char c10, char c11, float[] fArr2) {
            int i9;
            int i10;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            float f17;
            char c12 = c11;
            float f18 = fArr[0];
            float f19 = fArr[1];
            float f20 = fArr[2];
            float f21 = fArr[3];
            float f22 = fArr[4];
            float f23 = fArr[5];
            switch (c12) {
                case 'A':
                case 'a':
                    i9 = 7;
                    break;
                case 'C':
                case 'c':
                    i9 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i9 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i9 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i9 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f22, f23);
                    f18 = f22;
                    f20 = f18;
                    f19 = f23;
                    f21 = f19;
                    i9 = 2;
                    break;
            }
            float f24 = f18;
            float f25 = f19;
            float f26 = f22;
            float f27 = f23;
            int i11 = 0;
            char c13 = c10;
            while (i11 < fArr2.length) {
                if (c12 != 'A') {
                    if (c12 == 'C') {
                        i10 = i11;
                        int i12 = i10 + 2;
                        int i13 = i10 + 3;
                        int i14 = i10 + 4;
                        int i15 = i10 + 5;
                        path.cubicTo(fArr2[i10 + 0], fArr2[i10 + 1], fArr2[i12], fArr2[i13], fArr2[i14], fArr2[i15]);
                        f24 = fArr2[i14];
                        float f28 = fArr2[i15];
                        float f29 = fArr2[i12];
                        float f30 = fArr2[i13];
                        f25 = f28;
                        f21 = f30;
                        f20 = f29;
                    } else if (c12 == 'H') {
                        i10 = i11;
                        int i16 = i10 + 0;
                        path.lineTo(fArr2[i16], f25);
                        f24 = fArr2[i16];
                    } else if (c12 == 'Q') {
                        i10 = i11;
                        int i17 = i10 + 0;
                        int i18 = i10 + 1;
                        int i19 = i10 + 2;
                        int i20 = i10 + 3;
                        path.quadTo(fArr2[i17], fArr2[i18], fArr2[i19], fArr2[i20]);
                        float f31 = fArr2[i17];
                        float f32 = fArr2[i18];
                        f24 = fArr2[i19];
                        f25 = fArr2[i20];
                        f20 = f31;
                        f21 = f32;
                    } else if (c12 == 'V') {
                        i10 = i11;
                        int i21 = i10 + 0;
                        path.lineTo(f24, fArr2[i21]);
                        f25 = fArr2[i21];
                    } else if (c12 != 'a') {
                        if (c12 != 'c') {
                            if (c12 == 'h') {
                                int i22 = i11 + 0;
                                path.rLineTo(fArr2[i22], 0.0f);
                                f24 += fArr2[i22];
                            } else if (c12 != 'q') {
                                if (c12 == 'v') {
                                    int i23 = i11 + 0;
                                    path.rLineTo(0.0f, fArr2[i23]);
                                    f13 = fArr2[i23];
                                } else if (c12 == 'L') {
                                    int i24 = i11 + 0;
                                    int i25 = i11 + 1;
                                    path.lineTo(fArr2[i24], fArr2[i25]);
                                    f24 = fArr2[i24];
                                    f25 = fArr2[i25];
                                } else if (c12 == 'M') {
                                    int i26 = i11 + 0;
                                    f24 = fArr2[i26];
                                    int i27 = i11 + 1;
                                    f25 = fArr2[i27];
                                    if (i11 > 0) {
                                        path.lineTo(fArr2[i26], fArr2[i27]);
                                    } else {
                                        path.moveTo(fArr2[i26], fArr2[i27]);
                                        i10 = i11;
                                        f27 = f25;
                                        f26 = f24;
                                    }
                                } else if (c12 == 'S') {
                                    if (c13 == 'c' || c13 == 's' || c13 == 'C' || c13 == 'S') {
                                        f24 = (f24 * 2.0f) - f20;
                                        f25 = (f25 * 2.0f) - f21;
                                    }
                                    float f33 = f25;
                                    int i28 = i11 + 0;
                                    int i29 = i11 + 1;
                                    int i30 = i11 + 2;
                                    int i31 = i11 + 3;
                                    path.cubicTo(f24, f33, fArr2[i28], fArr2[i29], fArr2[i30], fArr2[i31]);
                                    f10 = fArr2[i28];
                                    f11 = fArr2[i29];
                                    f24 = fArr2[i30];
                                    f25 = fArr2[i31];
                                    f20 = f10;
                                    f21 = f11;
                                } else if (c12 == 'T') {
                                    if (c13 == 'q' || c13 == 't' || c13 == 'Q' || c13 == 'T') {
                                        f24 = (f24 * 2.0f) - f20;
                                        f25 = (f25 * 2.0f) - f21;
                                    }
                                    int i32 = i11 + 0;
                                    int i33 = i11 + 1;
                                    path.quadTo(f24, f25, fArr2[i32], fArr2[i33]);
                                    float f34 = fArr2[i32];
                                    float f35 = fArr2[i33];
                                    i10 = i11;
                                    f21 = f25;
                                    f20 = f24;
                                    f24 = f34;
                                    f25 = f35;
                                } else if (c12 == 'l') {
                                    int i34 = i11 + 0;
                                    int i35 = i11 + 1;
                                    path.rLineTo(fArr2[i34], fArr2[i35]);
                                    f24 += fArr2[i34];
                                    f13 = fArr2[i35];
                                } else if (c12 == 'm') {
                                    int i36 = i11 + 0;
                                    f24 += fArr2[i36];
                                    int i37 = i11 + 1;
                                    f25 += fArr2[i37];
                                    if (i11 > 0) {
                                        path.rLineTo(fArr2[i36], fArr2[i37]);
                                    } else {
                                        path.rMoveTo(fArr2[i36], fArr2[i37]);
                                        i10 = i11;
                                        f27 = f25;
                                        f26 = f24;
                                    }
                                } else if (c12 == 's') {
                                    if (c13 == 'c' || c13 == 's' || c13 == 'C' || c13 == 'S') {
                                        float f36 = f24 - f20;
                                        f14 = f25 - f21;
                                        f15 = f36;
                                    } else {
                                        f15 = 0.0f;
                                        f14 = 0.0f;
                                    }
                                    int i38 = i11 + 0;
                                    int i39 = i11 + 1;
                                    int i40 = i11 + 2;
                                    int i41 = i11 + 3;
                                    path.rCubicTo(f15, f14, fArr2[i38], fArr2[i39], fArr2[i40], fArr2[i41]);
                                    f10 = fArr2[i38] + f24;
                                    f11 = fArr2[i39] + f25;
                                    f24 += fArr2[i40];
                                    f12 = fArr2[i41];
                                } else if (c12 == 't') {
                                    if (c13 == 'q' || c13 == 't' || c13 == 'Q' || c13 == 'T') {
                                        f16 = f24 - f20;
                                        f17 = f25 - f21;
                                    } else {
                                        f17 = 0.0f;
                                        f16 = 0.0f;
                                    }
                                    int i42 = i11 + 0;
                                    int i43 = i11 + 1;
                                    path.rQuadTo(f16, f17, fArr2[i42], fArr2[i43]);
                                    float f37 = f16 + f24;
                                    float f38 = f17 + f25;
                                    f24 += fArr2[i42];
                                    f25 += fArr2[i43];
                                    f21 = f38;
                                    f20 = f37;
                                }
                                f25 += f13;
                            } else {
                                int i44 = i11 + 0;
                                int i45 = i11 + 1;
                                int i46 = i11 + 2;
                                int i47 = i11 + 3;
                                path.rQuadTo(fArr2[i44], fArr2[i45], fArr2[i46], fArr2[i47]);
                                f10 = fArr2[i44] + f24;
                                f11 = fArr2[i45] + f25;
                                f24 += fArr2[i46];
                                f12 = fArr2[i47];
                            }
                            i10 = i11;
                        } else {
                            int i48 = i11 + 2;
                            int i49 = i11 + 3;
                            int i50 = i11 + 4;
                            int i51 = i11 + 5;
                            path.rCubicTo(fArr2[i11 + 0], fArr2[i11 + 1], fArr2[i48], fArr2[i49], fArr2[i50], fArr2[i51]);
                            f10 = fArr2[i48] + f24;
                            f11 = fArr2[i49] + f25;
                            f24 += fArr2[i50];
                            f12 = fArr2[i51];
                        }
                        f25 += f12;
                        f20 = f10;
                        f21 = f11;
                        i10 = i11;
                    } else {
                        int i52 = i11 + 5;
                        int i53 = i11 + 6;
                        i10 = i11;
                        c(path, f24, f25, fArr2[i52] + f24, fArr2[i53] + f25, fArr2[i11 + 0], fArr2[i11 + 1], fArr2[i11 + 2], fArr2[i11 + 3] != 0.0f, fArr2[i11 + 4] != 0.0f);
                        f24 += fArr2[i52];
                        f25 += fArr2[i53];
                    }
                    i11 = i10 + i9;
                    c13 = c11;
                    c12 = c13;
                } else {
                    i10 = i11;
                    int i54 = i10 + 5;
                    int i55 = i10 + 6;
                    c(path, f24, f25, fArr2[i54], fArr2[i55], fArr2[i10 + 0], fArr2[i10 + 1], fArr2[i10 + 2], fArr2[i10 + 3] != 0.0f, fArr2[i10 + 4] != 0.0f);
                    f24 = fArr2[i54];
                    f25 = fArr2[i55];
                }
                f21 = f25;
                f20 = f24;
                i11 = i10 + i9;
                c13 = c11;
                c12 = c13;
            }
            fArr[0] = f24;
            fArr[1] = f25;
            fArr[2] = f20;
            fArr[3] = f21;
            fArr[4] = f26;
            fArr[5] = f27;
        }

        private static void b(Path path, double d10, double d11, double d12, double d13, double d14, double d15, double d16, double d17, double d18) {
            double d19 = d12;
            int ceil = (int) Math.ceil(Math.abs((d18 * 4.0d) / 3.141592653589793d));
            double cos = Math.cos(d16);
            double sin = Math.sin(d16);
            double cos2 = Math.cos(d17);
            double sin2 = Math.sin(d17);
            double d20 = -d19;
            double d21 = d20 * cos;
            double d22 = d13 * sin;
            double d23 = (d21 * sin2) - (d22 * cos2);
            double d24 = d20 * sin;
            double d25 = d13 * cos;
            double d26 = (sin2 * d24) + (cos2 * d25);
            double d27 = d18 / ceil;
            double d28 = d17;
            double d29 = d26;
            double d30 = d23;
            int i9 = 0;
            double d31 = d14;
            double d32 = d15;
            while (i9 < ceil) {
                double d33 = d28 + d27;
                double sin3 = Math.sin(d33);
                double cos3 = Math.cos(d33);
                double d34 = (d10 + ((d19 * cos) * cos3)) - (d22 * sin3);
                double d35 = d11 + (d19 * sin * cos3) + (d25 * sin3);
                double d36 = (d21 * sin3) - (d22 * cos3);
                double d37 = (sin3 * d24) + (cos3 * d25);
                double d38 = d33 - d28;
                double tan = Math.tan(d38 / 2.0d);
                double sin4 = (Math.sin(d38) * (Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d)) / 3.0d;
                double d39 = d31 + (d30 * sin4);
                double d40 = cos;
                double d41 = sin;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) d39, (float) (d32 + (d29 * sin4)), (float) (d34 - (sin4 * d36)), (float) (d35 - (sin4 * d37)), (float) d34, (float) d35);
                i9++;
                d27 = d27;
                sin = d41;
                d31 = d34;
                d24 = d24;
                cos = d40;
                d28 = d33;
                d29 = d37;
                d30 = d36;
                ceil = ceil;
                d32 = d35;
                d19 = d12;
            }
        }

        private static void c(Path path, float f10, float f11, float f12, float f13, float f14, float f15, float f16, boolean z10, boolean z11) {
            double d10;
            double d11;
            double radians = Math.toRadians(f16);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d12 = f10;
            double d13 = d12 * cos;
            double d14 = f11;
            double d15 = f14;
            double d16 = (d13 + (d14 * sin)) / d15;
            double d17 = f15;
            double d18 = (((-f10) * sin) + (d14 * cos)) / d17;
            double d19 = f13;
            double d20 = ((f12 * cos) + (d19 * sin)) / d15;
            double d21 = (((-f12) * sin) + (d19 * cos)) / d17;
            double d22 = d16 - d20;
            double d23 = d18 - d21;
            double d24 = (d16 + d20) / 2.0d;
            double d25 = (d18 + d21) / 2.0d;
            double d26 = (d22 * d22) + (d23 * d23);
            if (d26 == 0.0d) {
                return;
            }
            double d27 = (1.0d / d26) - 0.25d;
            if (d27 < 0.0d) {
                float sqrt = (float) (Math.sqrt(d26) / 1.99999d);
                c(path, f10, f11, f12, f13, f14 * sqrt, f15 * sqrt, f16, z10, z11);
                return;
            }
            double sqrt2 = Math.sqrt(d27);
            double d28 = d22 * sqrt2;
            double d29 = sqrt2 * d23;
            if (z10 == z11) {
                d10 = d24 - d29;
                d11 = d25 + d28;
            } else {
                d10 = d24 + d29;
                d11 = d25 - d28;
            }
            double atan2 = Math.atan2(d18 - d11, d16 - d10);
            double atan22 = Math.atan2(d21 - d11, d20 - d10) - atan2;
            int i9 = (atan22 > 0.0d ? 1 : (atan22 == 0.0d ? 0 : -1));
            if (z11 != (i9 >= 0)) {
                atan22 = i9 > 0 ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            double d30 = d10 * d15;
            double d31 = d11 * d17;
            b(path, (d30 * cos) - (d31 * sin), (d30 * sin) + (d31 * cos), d15, d17, d12, d14, radians, atan2, atan22);
        }

        public static void d(c[] cVarArr, Path path) {
            float[] fArr = new float[6];
            char c10 = 'm';
            for (c cVar : cVarArr) {
                a(path, fArr, c10, cVar.f57856a, cVar.f57857b);
                c10 = cVar.f57856a;
            }
        }
    }

    private static void a(List<c> list, char c10, float[] fArr) {
        list.add(new c(c10, fArr));
    }

    static float[] b(@NonNull float[] fArr, int i9, int i10) {
        int i11 = i10 - i9;
        int min = Math.min(i11, fArr.length - i9);
        float[] fArr2 = new float[i11];
        System.arraycopy(fArr, i9, fArr2, 0, min);
        return fArr2;
    }

    public static c[] c(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i9 = 1;
        int i10 = 0;
        while (i9 < str.length()) {
            int g10 = g(str, i9);
            String trim = str.substring(i10, g10).trim();
            if (trim.length() > 0) {
                a(arrayList, trim.charAt(0), f(trim));
            }
            i10 = g10;
            i9 = g10 + 1;
        }
        if (i9 - i10 == 1 && i10 < str.length()) {
            a(arrayList, str.charAt(i10), new float[0]);
        }
        return (c[]) arrayList.toArray(new c[arrayList.size()]);
    }

    public static Path d(String str) {
        Path path = new Path();
        c[] c10 = c(str);
        if (c10 != null) {
            try {
                c.d(c10, path);
                return path;
            } catch (RuntimeException e10) {
                throw new RuntimeException("Error in parsing " + str, e10);
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003a A[LOOP:0: B:3:0x0007->B:24:0x003a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void e(java.lang.String r8, int r9, sd.a.b r10) {
        /*
            r0 = 0
            r10.f57855b = r0
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = 0
        L7:
            int r5 = r8.length()
            if (r1 >= r5) goto L3d
            char r5 = r8.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 == r6) goto L35
            r6 = 69
            if (r5 == r6) goto L33
            r6 = 101(0x65, float:1.42E-43)
            if (r5 == r6) goto L33
            switch(r5) {
                case 44: goto L35;
                case 45: goto L2a;
                case 46: goto L22;
                default: goto L21;
            }
        L21:
            goto L31
        L22:
            if (r3 != 0) goto L27
            r2 = 0
            r3 = 1
            goto L37
        L27:
            r10.f57855b = r7
            goto L35
        L2a:
            if (r1 == r9) goto L31
            if (r2 != 0) goto L31
            r10.f57855b = r7
            goto L35
        L31:
            r2 = 0
            goto L37
        L33:
            r2 = 1
            goto L37
        L35:
            r2 = 0
            r4 = 1
        L37:
            if (r4 == 0) goto L3a
            goto L3d
        L3a:
            int r1 = r1 + 1
            goto L7
        L3d:
            r10.f57854a = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: sd.a.e(java.lang.String, int, sd.a$b):void");
    }

    private static float[] f(String str) {
        int i9 = 1;
        if ((str.charAt(0) == 'z') || (str.charAt(0) == 'Z')) {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            b bVar = new b();
            int length = str.length();
            int i10 = 0;
            while (i9 < length) {
                e(str, i9, bVar);
                int i11 = bVar.f57854a;
                if (i9 < i11) {
                    fArr[i10] = Float.parseFloat(str.substring(i9, i11));
                    i10++;
                }
                i9 = bVar.f57855b ? i11 : i11 + 1;
            }
            return b(fArr, 0, i10);
        } catch (NumberFormatException e10) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e10);
        }
    }

    private static int g(String str, int i9) {
        while (i9 < str.length()) {
            char charAt = str.charAt(i9);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i9;
            }
            i9++;
        }
        return i9;
    }

    public static List<Path> h(float f10, float f11, List<Path> list, List<String> list2) {
        Matrix matrix = new Matrix();
        matrix.setScale(f10, f11);
        ArrayList arrayList = new ArrayList();
        for (Path path : list) {
            Path path2 = new Path();
            path.transform(matrix, path2);
            arrayList.add(path2);
        }
        return arrayList;
    }
}
