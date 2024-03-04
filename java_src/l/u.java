package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
class u {

    /* renamed from: a  reason: collision with root package name */
    static JsonReader.a f54098a = JsonReader.a.a("k");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> List<n.a<T>> a(JsonReader jsonReader, com.airbnb.lottie.d dVar, float f10, m0<T> m0Var, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.w() == JsonReader.Token.STRING) {
            dVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.e();
        while (jsonReader.o()) {
            if (jsonReader.A(f54098a) != 0) {
                jsonReader.F();
            } else if (jsonReader.w() == JsonReader.Token.BEGIN_ARRAY) {
                jsonReader.c();
                if (jsonReader.w() == JsonReader.Token.NUMBER) {
                    arrayList.add(t.c(jsonReader, dVar, f10, m0Var, false, z10));
                } else {
                    while (jsonReader.o()) {
                        arrayList.add(t.c(jsonReader, dVar, f10, m0Var, true, z10));
                    }
                }
                jsonReader.j();
            } else {
                arrayList.add(t.c(jsonReader, dVar, f10, m0Var, false, z10));
            }
        }
        jsonReader.k();
        b(arrayList);
        return arrayList;
    }

    public static <T> void b(List<? extends n.a<T>> list) {
        int i9;
        T t10;
        int size = list.size();
        int i10 = 0;
        while (true) {
            i9 = size - 1;
            if (i10 >= i9) {
                break;
            }
            n.a<T> aVar = list.get(i10);
            i10++;
            n.a<T> aVar2 = list.get(i10);
            aVar.f55182h = Float.valueOf(aVar2.f55181g);
            if (aVar.f55177c == null && (t10 = aVar2.f55176b) != null) {
                aVar.f55177c = t10;
                if (aVar instanceof f.i) {
                    ((f.i) aVar).i();
                }
            }
        }
        n.a<T> aVar3 = list.get(i9);
        if ((aVar3.f55176b == null || aVar3.f55177c == null) && list.size() > 1) {
            list.remove(aVar3);
        }
    }
}
