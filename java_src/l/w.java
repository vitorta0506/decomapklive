package l;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.guochao.faceshow.aaspring.utils.Language;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54103a = JsonReader.a.a("w", "h", "ip", "op", Language.FRENCH, NotifyType.VIBRATE, "layers", "assets", "fonts", "chars", "markers");

    /* renamed from: b  reason: collision with root package name */
    static JsonReader.a f54104b = JsonReader.a.a("id", "layers", "w", "h", "p", "u");

    /* renamed from: c  reason: collision with root package name */
    private static final JsonReader.a f54105c = JsonReader.a.a("list");

    /* renamed from: d  reason: collision with root package name */
    private static final JsonReader.a f54106d = JsonReader.a.a("cm", "tm", "dr");

    public static com.airbnb.lottie.d a(JsonReader jsonReader) throws IOException {
        HashMap hashMap;
        ArrayList arrayList;
        JsonReader jsonReader2 = jsonReader;
        float e10 = m.h.e();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        SparseArrayCompat<h.c> sparseArrayCompat = new SparseArrayCompat<>();
        com.airbnb.lottie.d dVar = new com.airbnb.lottie.d();
        jsonReader.e();
        int i9 = 0;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        int i10 = 0;
        while (jsonReader.o()) {
            switch (jsonReader2.A(f54103a)) {
                case 0:
                    i9 = jsonReader.r();
                    continue;
                    jsonReader2 = jsonReader;
                case 1:
                    i10 = jsonReader.r();
                    continue;
                    jsonReader2 = jsonReader;
                case 2:
                    f10 = (float) jsonReader.q();
                    continue;
                    jsonReader2 = jsonReader;
                case 3:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f11 = ((float) jsonReader.q()) - 0.01f;
                    break;
                case 4:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f12 = (float) jsonReader.q();
                    break;
                case 5:
                    String[] split = jsonReader.t().split("\\.");
                    if (!m.h.j(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), 4, 4, 0)) {
                        dVar.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                case 6:
                    e(jsonReader2, dVar, arrayList2, longSparseArray);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                case 7:
                    b(jsonReader2, dVar, hashMap2, hashMap3);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                case 8:
                    d(jsonReader2, hashMap4);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                case 9:
                    c(jsonReader2, dVar, sparseArrayCompat);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                case 10:
                    f(jsonReader2, dVar, arrayList3);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    break;
                default:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    jsonReader.C();
                    jsonReader.F();
                    break;
            }
            hashMap4 = hashMap;
            arrayList3 = arrayList;
            jsonReader2 = jsonReader;
        }
        dVar.s(new Rect(0, 0, (int) (i9 * e10), (int) (i10 * e10)), f10, f11, f12, arrayList2, longSparseArray, hashMap2, hashMap3, sparseArrayCompat, hashMap4, arrayList3);
        return dVar;
    }

    private static void b(JsonReader jsonReader, com.airbnb.lottie.d dVar, Map<String, List<Layer>> map, Map<String, com.airbnb.lottie.g> map2) throws IOException {
        jsonReader.c();
        while (jsonReader.o()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.e();
            String str = null;
            String str2 = null;
            String str3 = null;
            int i9 = 0;
            int i10 = 0;
            while (jsonReader.o()) {
                int A = jsonReader.A(f54104b);
                if (A == 0) {
                    str = jsonReader.t();
                } else if (A == 1) {
                    jsonReader.c();
                    while (jsonReader.o()) {
                        Layer b10 = v.b(jsonReader, dVar);
                        longSparseArray.put(b10.d(), b10);
                        arrayList.add(b10);
                    }
                    jsonReader.j();
                } else if (A == 2) {
                    i9 = jsonReader.r();
                } else if (A == 3) {
                    i10 = jsonReader.r();
                } else if (A == 4) {
                    str2 = jsonReader.t();
                } else if (A != 5) {
                    jsonReader.C();
                    jsonReader.F();
                } else {
                    str3 = jsonReader.t();
                }
            }
            jsonReader.k();
            if (str2 != null) {
                com.airbnb.lottie.g gVar = new com.airbnb.lottie.g(i9, i10, str, str2, str3);
                map2.put(gVar.d(), gVar);
            } else {
                map.put(str, arrayList);
            }
        }
        jsonReader.j();
    }

    private static void c(JsonReader jsonReader, com.airbnb.lottie.d dVar, SparseArrayCompat<h.c> sparseArrayCompat) throws IOException {
        jsonReader.c();
        while (jsonReader.o()) {
            h.c a10 = m.a(jsonReader, dVar);
            sparseArrayCompat.put(a10.hashCode(), a10);
        }
        jsonReader.j();
    }

    private static void d(JsonReader jsonReader, Map<String, h.b> map) throws IOException {
        jsonReader.e();
        while (jsonReader.o()) {
            if (jsonReader.A(f54105c) != 0) {
                jsonReader.C();
                jsonReader.F();
            } else {
                jsonReader.c();
                while (jsonReader.o()) {
                    h.b a10 = n.a(jsonReader);
                    map.put(a10.b(), a10);
                }
                jsonReader.j();
            }
        }
        jsonReader.k();
    }

    private static void e(JsonReader jsonReader, com.airbnb.lottie.d dVar, List<Layer> list, LongSparseArray<Layer> longSparseArray) throws IOException {
        jsonReader.c();
        int i9 = 0;
        while (jsonReader.o()) {
            Layer b10 = v.b(jsonReader, dVar);
            if (b10.f() == Layer.LayerType.IMAGE) {
                i9++;
            }
            list.add(b10);
            longSparseArray.put(b10.d(), b10);
            if (i9 > 4) {
                m.d.c("You have " + i9 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        jsonReader.j();
    }

    private static void f(JsonReader jsonReader, com.airbnb.lottie.d dVar, List<h.g> list) throws IOException {
        jsonReader.c();
        while (jsonReader.o()) {
            String str = null;
            jsonReader.e();
            float f10 = 0.0f;
            float f11 = 0.0f;
            while (jsonReader.o()) {
                int A = jsonReader.A(f54106d);
                if (A == 0) {
                    str = jsonReader.t();
                } else if (A == 1) {
                    f10 = (float) jsonReader.q();
                } else if (A != 2) {
                    jsonReader.C();
                    jsonReader.F();
                } else {
                    f11 = (float) jsonReader.q();
                }
            }
            jsonReader.k();
            list.add(new h.g(str, f10, f11));
        }
        jsonReader.j();
    }
}
