package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.model.DocumentData;
import f.o;
import f.q;
import i.k;
import j.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import m.h;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class g extends com.airbnb.lottie.model.layer.a {
    private final StringBuilder B;
    private final RectF C;
    private final Matrix D;
    private final Paint E;
    private final Paint F;
    private final Map<h.c, List<e.d>> G;
    private final LongSparseArray<String> H;
    private final o I;
    private final com.airbnb.lottie.f J;
    private final com.airbnb.lottie.d K;
    @Nullable
    private f.a<Integer, Integer> L;
    @Nullable
    private f.a<Integer, Integer> M;
    @Nullable
    private f.a<Integer, Integer> N;
    @Nullable
    private f.a<Integer, Integer> O;
    @Nullable
    private f.a<Float, Float> P;
    @Nullable
    private f.a<Float, Float> Q;
    @Nullable
    private f.a<Float, Float> R;
    @Nullable
    private f.a<Float, Float> S;
    @Nullable
    private f.a<Float, Float> T;
    @Nullable
    private f.a<Float, Float> U;
    @Nullable
    private f.a<Typeface, Typeface> V;

    /* loaded from: classes.dex */
    class a extends Paint {
        a(int i9) {
            super(i9);
            setStyle(Paint.Style.FILL);
        }
    }

    /* loaded from: classes.dex */
    class b extends Paint {
        b(int i9) {
            super(i9);
            setStyle(Paint.Style.STROKE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3855a;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            f3855a = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3855a[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3855a[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(com.airbnb.lottie.f fVar, Layer layer) {
        super(fVar, layer);
        i.b bVar;
        i.b bVar2;
        i.a aVar;
        i.a aVar2;
        this.B = new StringBuilder(2);
        this.C = new RectF();
        this.D = new Matrix();
        this.E = new a(1);
        this.F = new b(1);
        this.G = new HashMap();
        this.H = new LongSparseArray<>();
        this.J = fVar;
        this.K = layer.b();
        o a10 = layer.s().a();
        this.I = a10;
        a10.a(this);
        i(a10);
        k t10 = layer.t();
        if (t10 != null && (aVar2 = t10.f40822a) != null) {
            f.a<Integer, Integer> a11 = aVar2.a();
            this.L = a11;
            a11.a(this);
            i(this.L);
        }
        if (t10 != null && (aVar = t10.f40823b) != null) {
            f.a<Integer, Integer> a12 = aVar.a();
            this.N = a12;
            a12.a(this);
            i(this.N);
        }
        if (t10 != null && (bVar2 = t10.f40824c) != null) {
            f.a<Float, Float> a13 = bVar2.a();
            this.P = a13;
            a13.a(this);
            i(this.P);
        }
        if (t10 == null || (bVar = t10.f40825d) == null) {
            return;
        }
        f.a<Float, Float> a14 = bVar.a();
        this.R = a14;
        a14.a(this);
        i(this.R);
    }

    private void N(DocumentData.Justification justification, Canvas canvas, float f10) {
        int i9 = c.f3855a[justification.ordinal()];
        if (i9 == 2) {
            canvas.translate(-f10, 0.0f);
        } else if (i9 != 3) {
        } else {
            canvas.translate((-f10) / 2.0f, 0.0f);
        }
    }

    private String O(String str, int i9) {
        int codePointAt = str.codePointAt(i9);
        int charCount = Character.charCount(codePointAt) + i9;
        while (charCount < str.length()) {
            int codePointAt2 = str.codePointAt(charCount);
            if (!b0(codePointAt2)) {
                break;
            }
            charCount += Character.charCount(codePointAt2);
            codePointAt = (codePointAt * 31) + codePointAt2;
        }
        long j10 = codePointAt;
        if (this.H.containsKey(j10)) {
            return this.H.get(j10);
        }
        this.B.setLength(0);
        while (i9 < charCount) {
            int codePointAt3 = str.codePointAt(i9);
            this.B.appendCodePoint(codePointAt3);
            i9 += Character.charCount(codePointAt3);
        }
        String sb2 = this.B.toString();
        this.H.put(j10, sb2);
        return sb2;
    }

    private void P(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private void Q(h.c cVar, Matrix matrix, float f10, DocumentData documentData, Canvas canvas) {
        List<e.d> X = X(cVar);
        for (int i9 = 0; i9 < X.size(); i9++) {
            Path path = X.get(i9).getPath();
            path.computeBounds(this.C, false);
            this.D.set(matrix);
            this.D.preTranslate(0.0f, (-documentData.f3746g) * h.e());
            this.D.preScale(f10, f10);
            path.transform(this.D);
            if (documentData.f3750k) {
                T(path, this.E, canvas);
                T(path, this.F, canvas);
            } else {
                T(path, this.F, canvas);
                T(path, this.E, canvas);
            }
        }
    }

    private void R(String str, DocumentData documentData, Canvas canvas) {
        if (documentData.f3750k) {
            P(str, this.E, canvas);
            P(str, this.F, canvas);
            return;
        }
        P(str, this.F, canvas);
        P(str, this.E, canvas);
    }

    private void S(String str, DocumentData documentData, Canvas canvas, float f10) {
        int i9 = 0;
        while (i9 < str.length()) {
            String O = O(str, i9);
            i9 += O.length();
            R(O, documentData, canvas);
            canvas.translate(this.E.measureText(O) + f10, 0.0f);
        }
    }

    private void T(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void U(String str, DocumentData documentData, Matrix matrix, h.b bVar, Canvas canvas, float f10, float f11) {
        float floatValue;
        for (int i9 = 0; i9 < str.length(); i9++) {
            h.c cVar = this.K.c().get(h.c.c(str.charAt(i9), bVar.a(), bVar.c()));
            if (cVar != null) {
                Q(cVar, matrix, f11, documentData, canvas);
                float b10 = ((float) cVar.b()) * f11 * h.e() * f10;
                float f12 = documentData.f3744e / 10.0f;
                f.a<Float, Float> aVar = this.S;
                if (aVar != null) {
                    floatValue = aVar.h().floatValue();
                } else {
                    f.a<Float, Float> aVar2 = this.R;
                    if (aVar2 != null) {
                        floatValue = aVar2.h().floatValue();
                    }
                    canvas.translate(b10 + (f12 * f10), 0.0f);
                }
                f12 += floatValue;
                canvas.translate(b10 + (f12 * f10), 0.0f);
            }
        }
    }

    private void V(DocumentData documentData, Matrix matrix, h.b bVar, Canvas canvas) {
        float f10;
        f.a<Float, Float> aVar = this.U;
        if (aVar != null) {
            f10 = aVar.h().floatValue();
        } else {
            f.a<Float, Float> aVar2 = this.T;
            if (aVar2 != null) {
                f10 = aVar2.h().floatValue();
            } else {
                f10 = documentData.f3742c;
            }
        }
        float f11 = f10 / 100.0f;
        float g10 = h.g(matrix);
        String str = documentData.f3740a;
        float e10 = documentData.f3745f * h.e();
        List<String> Z = Z(str);
        int size = Z.size();
        for (int i9 = 0; i9 < size; i9++) {
            String str2 = Z.get(i9);
            float Y = Y(str2, bVar, f11, g10);
            canvas.save();
            N(documentData.f3743d, canvas, Y);
            canvas.translate(0.0f, (i9 * e10) - (((size - 1) * e10) / 2.0f));
            U(str2, documentData, matrix, bVar, canvas, g10, f11);
            canvas.restore();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0097 A[LOOP:0: B:20:0x0095->B:21:0x0097, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void W(com.airbnb.lottie.model.DocumentData r7, h.b r8, android.graphics.Matrix r9, android.graphics.Canvas r10) {
        /*
            r6 = this;
            android.graphics.Typeface r8 = r6.a0(r8)
            if (r8 != 0) goto L7
            return
        L7:
            java.lang.String r9 = r7.f3740a
            com.airbnb.lottie.f r0 = r6.J
            r0.G()
            android.graphics.Paint r0 = r6.E
            r0.setTypeface(r8)
            f.a<java.lang.Float, java.lang.Float> r8 = r6.U
            if (r8 == 0) goto L22
            java.lang.Object r8 = r8.h()
            java.lang.Float r8 = (java.lang.Float) r8
            float r8 = r8.floatValue()
            goto L33
        L22:
            f.a<java.lang.Float, java.lang.Float> r8 = r6.T
            if (r8 == 0) goto L31
            java.lang.Object r8 = r8.h()
            java.lang.Float r8 = (java.lang.Float) r8
            float r8 = r8.floatValue()
            goto L33
        L31:
            float r8 = r7.f3742c
        L33:
            android.graphics.Paint r0 = r6.E
            float r1 = m.h.e()
            float r1 = r1 * r8
            r0.setTextSize(r1)
            android.graphics.Paint r0 = r6.F
            android.graphics.Paint r1 = r6.E
            android.graphics.Typeface r1 = r1.getTypeface()
            r0.setTypeface(r1)
            android.graphics.Paint r0 = r6.F
            android.graphics.Paint r1 = r6.E
            float r1 = r1.getTextSize()
            r0.setTextSize(r1)
            float r0 = r7.f3745f
            float r1 = m.h.e()
            float r0 = r0 * r1
            int r1 = r7.f3744e
            float r1 = (float) r1
            r2 = 1092616192(0x41200000, float:10.0)
            float r1 = r1 / r2
            f.a<java.lang.Float, java.lang.Float> r2 = r6.S
            if (r2 == 0) goto L72
            java.lang.Object r2 = r2.h()
            java.lang.Float r2 = (java.lang.Float) r2
            float r2 = r2.floatValue()
        L70:
            float r1 = r1 + r2
            goto L81
        L72:
            f.a<java.lang.Float, java.lang.Float> r2 = r6.R
            if (r2 == 0) goto L81
            java.lang.Object r2 = r2.h()
            java.lang.Float r2 = (java.lang.Float) r2
            float r2 = r2.floatValue()
            goto L70
        L81:
            float r2 = m.h.e()
            float r1 = r1 * r2
            float r1 = r1 * r8
            r8 = 1120403456(0x42c80000, float:100.0)
            float r1 = r1 / r8
            java.util.List r8 = r6.Z(r9)
            int r9 = r8.size()
            r2 = 0
        L95:
            if (r2 >= r9) goto Lce
            java.lang.Object r3 = r8.get(r2)
            java.lang.String r3 = (java.lang.String) r3
            android.graphics.Paint r4 = r6.F
            float r4 = r4.measureText(r3)
            int r5 = r3.length()
            int r5 = r5 + (-1)
            float r5 = (float) r5
            float r5 = r5 * r1
            float r4 = r4 + r5
            r10.save()
            com.airbnb.lottie.model.DocumentData$Justification r5 = r7.f3743d
            r6.N(r5, r10, r4)
            int r4 = r9 + (-1)
            float r4 = (float) r4
            float r4 = r4 * r0
            r5 = 1073741824(0x40000000, float:2.0)
            float r4 = r4 / r5
            float r5 = (float) r2
            float r5 = r5 * r0
            float r5 = r5 - r4
            r4 = 0
            r10.translate(r4, r5)
            r6.S(r3, r7, r10, r1)
            r10.restore()
            int r2 = r2 + 1
            goto L95
        Lce:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.layer.g.W(com.airbnb.lottie.model.DocumentData, h.b, android.graphics.Matrix, android.graphics.Canvas):void");
    }

    private List<e.d> X(h.c cVar) {
        if (this.G.containsKey(cVar)) {
            return this.G.get(cVar);
        }
        List<j> a10 = cVar.a();
        int size = a10.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i9 = 0; i9 < size; i9++) {
            arrayList.add(new e.d(this.J, this, a10.get(i9)));
        }
        this.G.put(cVar, arrayList);
        return arrayList;
    }

    private float Y(String str, h.b bVar, float f10, float f11) {
        float f12 = 0.0f;
        for (int i9 = 0; i9 < str.length(); i9++) {
            h.c cVar = this.K.c().get(h.c.c(str.charAt(i9), bVar.a(), bVar.c()));
            if (cVar != null) {
                f12 = (float) (f12 + (cVar.b() * f10 * h.e() * f11));
            }
        }
        return f12;
    }

    private List<String> Z(String str) {
        return Arrays.asList(str.replaceAll(IOUtils.LINE_SEPARATOR_WINDOWS, "\r").replaceAll(IOUtils.LINE_SEPARATOR_UNIX, "\r").split("\r"));
    }

    @Nullable
    private Typeface a0(h.b bVar) {
        Typeface h10;
        f.a<Typeface, Typeface> aVar = this.V;
        if (aVar == null || (h10 = aVar.h()) == null) {
            Typeface H = this.J.H(bVar.a(), bVar.c());
            return H != null ? H : bVar.d();
        }
        return h10;
    }

    private boolean b0(int i9) {
        return Character.getType(i9) == 16 || Character.getType(i9) == 27 || Character.getType(i9) == 6 || Character.getType(i9) == 28 || Character.getType(i9) == 19;
    }

    @Override // com.airbnb.lottie.model.layer.a, h.e
    public <T> void c(T t10, @Nullable n.c<T> cVar) {
        super.c(t10, cVar);
        if (t10 == com.airbnb.lottie.k.f3705a) {
            f.a<Integer, Integer> aVar = this.M;
            if (aVar != null) {
                F(aVar);
            }
            if (cVar == null) {
                this.M = null;
                return;
            }
            q qVar = new q(cVar);
            this.M = qVar;
            qVar.a(this);
            i(this.M);
        } else if (t10 == com.airbnb.lottie.k.f3706b) {
            f.a<Integer, Integer> aVar2 = this.O;
            if (aVar2 != null) {
                F(aVar2);
            }
            if (cVar == null) {
                this.O = null;
                return;
            }
            q qVar2 = new q(cVar);
            this.O = qVar2;
            qVar2.a(this);
            i(this.O);
        } else if (t10 == com.airbnb.lottie.k.f3723s) {
            f.a<Float, Float> aVar3 = this.Q;
            if (aVar3 != null) {
                F(aVar3);
            }
            if (cVar == null) {
                this.Q = null;
                return;
            }
            q qVar3 = new q(cVar);
            this.Q = qVar3;
            qVar3.a(this);
            i(this.Q);
        } else if (t10 == com.airbnb.lottie.k.f3724t) {
            f.a<Float, Float> aVar4 = this.S;
            if (aVar4 != null) {
                F(aVar4);
            }
            if (cVar == null) {
                this.S = null;
                return;
            }
            q qVar4 = new q(cVar);
            this.S = qVar4;
            qVar4.a(this);
            i(this.S);
        } else if (t10 == com.airbnb.lottie.k.F) {
            f.a<Float, Float> aVar5 = this.U;
            if (aVar5 != null) {
                F(aVar5);
            }
            if (cVar == null) {
                this.U = null;
                return;
            }
            q qVar5 = new q(cVar);
            this.U = qVar5;
            qVar5.a(this);
            i(this.U);
        } else if (t10 == com.airbnb.lottie.k.M) {
            f.a<Typeface, Typeface> aVar6 = this.V;
            if (aVar6 != null) {
                F(aVar6);
            }
            if (cVar == null) {
                this.V = null;
                return;
            }
            q qVar6 = new q(cVar);
            this.V = qVar6;
            qVar6.a(this);
            i(this.V);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, e.e
    public void d(RectF rectF, Matrix matrix, boolean z10) {
        super.d(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.K.b().width(), this.K.b().height());
    }

    @Override // com.airbnb.lottie.model.layer.a
    void t(Canvas canvas, Matrix matrix, int i9) {
        canvas.save();
        if (!this.J.n0()) {
            canvas.concat(matrix);
        }
        DocumentData h10 = this.I.h();
        h.b bVar = this.K.g().get(h10.f3741b);
        if (bVar == null) {
            canvas.restore();
            return;
        }
        f.a<Integer, Integer> aVar = this.M;
        if (aVar != null) {
            this.E.setColor(aVar.h().intValue());
        } else {
            f.a<Integer, Integer> aVar2 = this.L;
            if (aVar2 != null) {
                this.E.setColor(aVar2.h().intValue());
            } else {
                this.E.setColor(h10.f3747h);
            }
        }
        f.a<Integer, Integer> aVar3 = this.O;
        if (aVar3 != null) {
            this.F.setColor(aVar3.h().intValue());
        } else {
            f.a<Integer, Integer> aVar4 = this.N;
            if (aVar4 != null) {
                this.F.setColor(aVar4.h().intValue());
            } else {
                this.F.setColor(h10.f3748i);
            }
        }
        int intValue = ((this.f3844v.h() == null ? 100 : this.f3844v.h().h().intValue()) * 255) / 100;
        this.E.setAlpha(intValue);
        this.F.setAlpha(intValue);
        f.a<Float, Float> aVar5 = this.Q;
        if (aVar5 != null) {
            this.F.setStrokeWidth(aVar5.h().floatValue());
        } else {
            f.a<Float, Float> aVar6 = this.P;
            if (aVar6 != null) {
                this.F.setStrokeWidth(aVar6.h().floatValue());
            } else {
                this.F.setStrokeWidth(h10.f3749j * h.e() * h.g(matrix));
            }
        }
        if (this.J.n0()) {
            V(h10, matrix, bVar, canvas);
        } else {
            W(h10, bVar, matrix, canvas);
        }
        canvas.restore();
    }
}
