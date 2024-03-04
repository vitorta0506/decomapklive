package l;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54099a = JsonReader.a.a("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", PushConstants.PUSH_NOTIFICATION_CREATE_TIMES_TAMP, "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f54100b = JsonReader.a.a("d", "a");

    /* renamed from: c  reason: collision with root package name */
    private static final JsonReader.a f54101c = JsonReader.a.a("ty", "nm");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f54102a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f54102a = iArr;
            try {
                iArr[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f54102a[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static Layer a(com.airbnb.lottie.d dVar) {
        Rect b10 = dVar.b();
        return new Layer(Collections.emptyList(), dVar, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new i.l(), 0, 0, 0, 0.0f, 0.0f, b10.width(), b10.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false, null, null);
    }

    public static Layer b(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        ArrayList arrayList;
        ArrayList arrayList2;
        Layer.MatteType matteType = Layer.MatteType.NONE;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        jsonReader.e();
        Float valueOf = Float.valueOf(1.0f);
        Float valueOf2 = Float.valueOf(0.0f);
        Layer.MatteType matteType2 = matteType;
        Layer.LayerType layerType = null;
        String str = null;
        i.l lVar = null;
        i.j jVar = null;
        i.k kVar = null;
        i.b bVar = null;
        j.a aVar = null;
        j jVar2 = null;
        long j10 = -1;
        float f10 = 0.0f;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        float f11 = 1.0f;
        float f12 = 0.0f;
        int i12 = 0;
        int i13 = 0;
        boolean z10 = false;
        float f13 = 0.0f;
        long j11 = 0;
        String str2 = null;
        String str3 = "UNSET";
        while (jsonReader.o()) {
            switch (jsonReader.A(f54099a)) {
                case 0:
                    str3 = jsonReader.t();
                    break;
                case 1:
                    j11 = jsonReader.r();
                    break;
                case 2:
                    str = jsonReader.t();
                    break;
                case 3:
                    int r10 = jsonReader.r();
                    layerType = Layer.LayerType.UNKNOWN;
                    if (r10 >= layerType.ordinal()) {
                        break;
                    } else {
                        layerType = Layer.LayerType.values()[r10];
                        break;
                    }
                case 4:
                    j10 = jsonReader.r();
                    break;
                case 5:
                    i9 = (int) (jsonReader.r() * m.h.e());
                    break;
                case 6:
                    i10 = (int) (jsonReader.r() * m.h.e());
                    break;
                case 7:
                    i11 = Color.parseColor(jsonReader.t());
                    break;
                case 8:
                    lVar = c.g(jsonReader, dVar);
                    break;
                case 9:
                    int r11 = jsonReader.r();
                    if (r11 >= Layer.MatteType.values().length) {
                        dVar.a("Unsupported matte type: " + r11);
                        break;
                    } else {
                        matteType2 = Layer.MatteType.values()[r11];
                        int i14 = a.f54102a[matteType2.ordinal()];
                        if (i14 == 1) {
                            dVar.a("Unsupported matte type: Luma");
                        } else if (i14 == 2) {
                            dVar.a("Unsupported matte type: Luma Inverted");
                        }
                        dVar.r(1);
                        break;
                    }
                case 10:
                    jsonReader.c();
                    while (jsonReader.o()) {
                        arrayList3.add(x.a(jsonReader, dVar));
                    }
                    dVar.r(arrayList3.size());
                    jsonReader.j();
                    break;
                case 11:
                    jsonReader.c();
                    while (jsonReader.o()) {
                        j.c a10 = h.a(jsonReader, dVar);
                        if (a10 != null) {
                            arrayList4.add(a10);
                        }
                    }
                    jsonReader.j();
                    break;
                case 12:
                    jsonReader.e();
                    while (jsonReader.o()) {
                        int A = jsonReader.A(f54100b);
                        if (A == 0) {
                            jVar = d.d(jsonReader, dVar);
                        } else if (A != 1) {
                            jsonReader.C();
                            jsonReader.F();
                        } else {
                            jsonReader.c();
                            if (jsonReader.o()) {
                                kVar = b.a(jsonReader, dVar);
                            }
                            while (jsonReader.o()) {
                                jsonReader.F();
                            }
                            jsonReader.j();
                        }
                    }
                    jsonReader.k();
                    break;
                case 13:
                    jsonReader.c();
                    ArrayList arrayList5 = new ArrayList();
                    while (jsonReader.o()) {
                        jsonReader.e();
                        while (jsonReader.o()) {
                            int A2 = jsonReader.A(f54101c);
                            if (A2 == 0) {
                                int r12 = jsonReader.r();
                                if (r12 == 29) {
                                    aVar = e.b(jsonReader, dVar);
                                } else if (r12 == 25) {
                                    jVar2 = new k().b(jsonReader, dVar);
                                }
                            } else if (A2 != 1) {
                                jsonReader.C();
                                jsonReader.F();
                            } else {
                                arrayList5.add(jsonReader.t());
                            }
                        }
                        jsonReader.k();
                    }
                    jsonReader.j();
                    dVar.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList5);
                    break;
                case 14:
                    f11 = (float) jsonReader.q();
                    break;
                case 15:
                    f12 = (float) jsonReader.q();
                    break;
                case 16:
                    i12 = (int) (jsonReader.r() * m.h.e());
                    break;
                case 17:
                    i13 = (int) (jsonReader.r() * m.h.e());
                    break;
                case 18:
                    f10 = (float) jsonReader.q();
                    break;
                case 19:
                    f13 = (float) jsonReader.q();
                    break;
                case 20:
                    bVar = d.f(jsonReader, dVar, false);
                    break;
                case 21:
                    str2 = jsonReader.t();
                    break;
                case 22:
                    z10 = jsonReader.p();
                    break;
                default:
                    jsonReader.C();
                    jsonReader.F();
                    break;
            }
        }
        jsonReader.k();
        ArrayList arrayList6 = new ArrayList();
        if (f10 > 0.0f) {
            arrayList = arrayList3;
            arrayList2 = arrayList6;
            arrayList2.add(new n.a(dVar, valueOf2, valueOf2, null, 0.0f, Float.valueOf(f10)));
        } else {
            arrayList = arrayList3;
            arrayList2 = arrayList6;
        }
        if (f13 <= 0.0f) {
            f13 = dVar.f();
        }
        arrayList2.add(new n.a(dVar, valueOf, valueOf, null, f10, Float.valueOf(f13)));
        arrayList2.add(new n.a(dVar, valueOf2, valueOf2, null, f13, Float.valueOf(Float.MAX_VALUE)));
        if (str3.endsWith(".ai") || "ai".equals(str2)) {
            dVar.a("Convert your Illustrator layers to shape layers.");
        }
        return new Layer(arrayList4, dVar, str3, j11, layerType, j10, str, arrayList, lVar, i9, i10, i11, f11, f12, i12, i13, jVar, kVar, arrayList2, matteType2, bVar, z10, aVar, jVar2);
    }
}
