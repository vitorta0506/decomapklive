package l;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
class t {

    /* renamed from: b  reason: collision with root package name */
    private static SparseArrayCompat<WeakReference<Interpolator>> f54095b;

    /* renamed from: a  reason: collision with root package name */
    private static final Interpolator f54094a = new LinearInterpolator();

    /* renamed from: c  reason: collision with root package name */
    static JsonReader.a f54096c = JsonReader.a.a("t", NotifyType.SOUND, com.huawei.hms.push.e.f27721a, "o", com.huawei.hms.opendevice.i.TAG, "h", "to", "ti");

    /* renamed from: d  reason: collision with root package name */
    static JsonReader.a f54097d = JsonReader.a.a(com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w, "y");

    t() {
    }

    @Nullable
    private static WeakReference<Interpolator> a(int i9) {
        WeakReference<Interpolator> weakReference;
        synchronized (t.class) {
            weakReference = g().get(i9);
        }
        return weakReference;
    }

    private static Interpolator b(PointF pointF, PointF pointF2) {
        Interpolator linearInterpolator;
        pointF.x = m.g.c(pointF.x, -1.0f, 1.0f);
        pointF.y = m.g.c(pointF.y, -100.0f, 100.0f);
        pointF2.x = m.g.c(pointF2.x, -1.0f, 1.0f);
        float c10 = m.g.c(pointF2.y, -100.0f, 100.0f);
        pointF2.y = c10;
        int i9 = m.h.i(pointF.x, pointF.y, pointF2.x, c10);
        WeakReference<Interpolator> a10 = a(i9);
        Interpolator interpolator = a10 != null ? a10.get() : null;
        if (a10 == null || interpolator == null) {
            try {
                linearInterpolator = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e10) {
                if ("The Path cannot loop back on itself.".equals(e10.getMessage())) {
                    linearInterpolator = PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y);
                } else {
                    linearInterpolator = new LinearInterpolator();
                }
            }
            interpolator = linearInterpolator;
            try {
                h(i9, new WeakReference(interpolator));
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        }
        return interpolator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> n.a<T> c(JsonReader jsonReader, com.airbnb.lottie.d dVar, float f10, m0<T> m0Var, boolean z10, boolean z11) throws IOException {
        if (z10 && z11) {
            return e(dVar, jsonReader, f10, m0Var);
        }
        if (z10) {
            return d(dVar, jsonReader, f10, m0Var);
        }
        return f(jsonReader, f10, m0Var);
    }

    private static <T> n.a<T> d(com.airbnb.lottie.d dVar, JsonReader jsonReader, float f10, m0<T> m0Var) throws IOException {
        Interpolator interpolator;
        Interpolator interpolator2;
        T t10;
        jsonReader.e();
        PointF pointF = null;
        PointF pointF2 = null;
        T t11 = null;
        T t12 = null;
        PointF pointF3 = null;
        PointF pointF4 = null;
        boolean z10 = false;
        float f11 = 0.0f;
        while (jsonReader.o()) {
            switch (jsonReader.A(f54096c)) {
                case 0:
                    f11 = (float) jsonReader.q();
                    break;
                case 1:
                    t12 = m0Var.a(jsonReader, f10);
                    break;
                case 2:
                    t11 = m0Var.a(jsonReader, f10);
                    break;
                case 3:
                    pointF = s.e(jsonReader, 1.0f);
                    break;
                case 4:
                    pointF2 = s.e(jsonReader, 1.0f);
                    break;
                case 5:
                    if (jsonReader.r() != 1) {
                        z10 = false;
                        break;
                    } else {
                        z10 = true;
                        break;
                    }
                case 6:
                    pointF3 = s.e(jsonReader, f10);
                    break;
                case 7:
                    pointF4 = s.e(jsonReader, f10);
                    break;
                default:
                    jsonReader.F();
                    break;
            }
        }
        jsonReader.k();
        if (z10) {
            interpolator2 = f54094a;
            t10 = t12;
        } else {
            if (pointF != null && pointF2 != null) {
                interpolator = b(pointF, pointF2);
            } else {
                interpolator = f54094a;
            }
            interpolator2 = interpolator;
            t10 = t11;
        }
        n.a<T> aVar = new n.a<>(dVar, t12, t10, interpolator2, f11, null);
        aVar.f55189o = pointF3;
        aVar.f55190p = pointF4;
        return aVar;
    }

    private static <T> n.a<T> e(com.airbnb.lottie.d dVar, JsonReader jsonReader, float f10, m0<T> m0Var) throws IOException {
        Interpolator interpolator;
        Interpolator b10;
        Interpolator b11;
        T t10;
        PointF pointF;
        n.a<T> aVar;
        PointF pointF2;
        float f11;
        PointF pointF3;
        jsonReader.e();
        PointF pointF4 = null;
        boolean z10 = false;
        PointF pointF5 = null;
        PointF pointF6 = null;
        PointF pointF7 = null;
        T t11 = null;
        PointF pointF8 = null;
        PointF pointF9 = null;
        PointF pointF10 = null;
        float f12 = 0.0f;
        PointF pointF11 = null;
        T t12 = null;
        while (jsonReader.o()) {
            switch (jsonReader.A(f54096c)) {
                case 0:
                    pointF2 = pointF4;
                    f12 = (float) jsonReader.q();
                    break;
                case 1:
                    pointF2 = pointF4;
                    t11 = m0Var.a(jsonReader, f10);
                    break;
                case 2:
                    pointF2 = pointF4;
                    t12 = m0Var.a(jsonReader, f10);
                    break;
                case 3:
                    pointF2 = pointF4;
                    f11 = f12;
                    PointF pointF12 = pointF11;
                    if (jsonReader.w() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.e();
                        float f13 = 0.0f;
                        float f14 = 0.0f;
                        float f15 = 0.0f;
                        float f16 = 0.0f;
                        while (jsonReader.o()) {
                            int A = jsonReader.A(f54097d);
                            if (A == 0) {
                                JsonReader.Token w6 = jsonReader.w();
                                JsonReader.Token token = JsonReader.Token.NUMBER;
                                if (w6 == token) {
                                    f15 = (float) jsonReader.q();
                                    f13 = f15;
                                } else {
                                    jsonReader.c();
                                    f13 = (float) jsonReader.q();
                                    f15 = jsonReader.w() == token ? (float) jsonReader.q() : f13;
                                    jsonReader.j();
                                }
                            } else if (A != 1) {
                                jsonReader.F();
                            } else {
                                JsonReader.Token w8 = jsonReader.w();
                                JsonReader.Token token2 = JsonReader.Token.NUMBER;
                                if (w8 == token2) {
                                    f16 = (float) jsonReader.q();
                                    f14 = f16;
                                } else {
                                    jsonReader.c();
                                    f14 = (float) jsonReader.q();
                                    f16 = jsonReader.w() == token2 ? (float) jsonReader.q() : f14;
                                    jsonReader.j();
                                }
                            }
                        }
                        PointF pointF13 = new PointF(f13, f14);
                        PointF pointF14 = new PointF(f15, f16);
                        jsonReader.k();
                        pointF8 = pointF14;
                        pointF7 = pointF13;
                        pointF11 = pointF12;
                        f12 = f11;
                        break;
                    } else {
                        pointF5 = s.e(jsonReader, f10);
                        f12 = f11;
                        pointF11 = pointF12;
                        break;
                    }
                case 4:
                    if (jsonReader.w() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.e();
                        float f17 = 0.0f;
                        float f18 = 0.0f;
                        float f19 = 0.0f;
                        float f20 = 0.0f;
                        while (jsonReader.o()) {
                            PointF pointF15 = pointF11;
                            int A2 = jsonReader.A(f54097d);
                            if (A2 != 0) {
                                pointF3 = pointF4;
                                if (A2 != 1) {
                                    jsonReader.F();
                                } else {
                                    JsonReader.Token w10 = jsonReader.w();
                                    JsonReader.Token token3 = JsonReader.Token.NUMBER;
                                    if (w10 == token3) {
                                        f20 = (float) jsonReader.q();
                                        f12 = f12;
                                        f18 = f20;
                                    } else {
                                        float f21 = f12;
                                        jsonReader.c();
                                        float q10 = (float) jsonReader.q();
                                        float q11 = jsonReader.w() == token3 ? (float) jsonReader.q() : q10;
                                        jsonReader.j();
                                        f12 = f21;
                                        pointF11 = pointF15;
                                        pointF4 = pointF3;
                                        f20 = q11;
                                        f18 = q10;
                                    }
                                }
                            } else {
                                pointF3 = pointF4;
                                float f22 = f12;
                                JsonReader.Token w11 = jsonReader.w();
                                JsonReader.Token token4 = JsonReader.Token.NUMBER;
                                if (w11 == token4) {
                                    f19 = (float) jsonReader.q();
                                    f12 = f22;
                                    f17 = f19;
                                } else {
                                    jsonReader.c();
                                    f17 = (float) jsonReader.q();
                                    f19 = jsonReader.w() == token4 ? (float) jsonReader.q() : f17;
                                    jsonReader.j();
                                    f12 = f22;
                                }
                            }
                            pointF11 = pointF15;
                            pointF4 = pointF3;
                        }
                        pointF2 = pointF4;
                        f11 = f12;
                        PointF pointF16 = new PointF(f17, f18);
                        PointF pointF17 = new PointF(f19, f20);
                        jsonReader.k();
                        pointF10 = pointF17;
                        pointF9 = pointF16;
                        f12 = f11;
                        break;
                    } else {
                        pointF2 = pointF4;
                        pointF6 = s.e(jsonReader, f10);
                        break;
                    }
                case 5:
                    if (jsonReader.r() == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                        continue;
                    }
                case 6:
                    pointF11 = s.e(jsonReader, f10);
                    continue;
                case 7:
                    pointF4 = s.e(jsonReader, f10);
                    continue;
                default:
                    pointF2 = pointF4;
                    jsonReader.F();
                    break;
            }
            pointF4 = pointF2;
        }
        PointF pointF18 = pointF4;
        float f23 = f12;
        PointF pointF19 = pointF11;
        jsonReader.k();
        if (z10) {
            interpolator = f54094a;
            t10 = t11;
        } else {
            if (pointF5 != null && pointF6 != null) {
                interpolator = b(pointF5, pointF6);
            } else if (pointF7 != null && pointF8 != null && pointF9 != null && pointF10 != null) {
                b10 = b(pointF7, pointF9);
                b11 = b(pointF8, pointF10);
                t10 = t12;
                interpolator = null;
                if (b10 == null && b11 != null) {
                    pointF = pointF19;
                    aVar = new n.a<>(dVar, t11, t10, b10, b11, f23, null);
                } else {
                    pointF = pointF19;
                    aVar = new n.a<>(dVar, t11, t10, interpolator, f23, null);
                }
                aVar.f55189o = pointF;
                aVar.f55190p = pointF18;
                return aVar;
            } else {
                interpolator = f54094a;
            }
            t10 = t12;
        }
        b10 = null;
        b11 = null;
        if (b10 == null) {
        }
        pointF = pointF19;
        aVar = new n.a<>(dVar, t11, t10, interpolator, f23, null);
        aVar.f55189o = pointF;
        aVar.f55190p = pointF18;
        return aVar;
    }

    private static <T> n.a<T> f(JsonReader jsonReader, float f10, m0<T> m0Var) throws IOException {
        return new n.a<>(m0Var.a(jsonReader, f10));
    }

    private static SparseArrayCompat<WeakReference<Interpolator>> g() {
        if (f54095b == null) {
            f54095b = new SparseArrayCompat<>();
        }
        return f54095b;
    }

    private static void h(int i9, WeakReference<Interpolator> weakReference) {
        synchronized (t.class) {
            f54095b.put(i9, weakReference);
        }
    }
}
