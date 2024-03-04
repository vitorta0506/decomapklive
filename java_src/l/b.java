package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f54045a = JsonReader.a.a("a");

    /* renamed from: b  reason: collision with root package name */
    private static JsonReader.a f54046b = JsonReader.a.a("fc", "sc", "sw", "t");

    public static i.k a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        jsonReader.e();
        i.k kVar = null;
        while (jsonReader.o()) {
            if (jsonReader.A(f54045a) != 0) {
                jsonReader.C();
                jsonReader.F();
            } else {
                kVar = b(jsonReader, dVar);
            }
        }
        jsonReader.k();
        return kVar == null ? new i.k(null, null, null, null) : kVar;
    }

    private static i.k b(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        jsonReader.e();
        i.a aVar = null;
        i.a aVar2 = null;
        i.b bVar = null;
        i.b bVar2 = null;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54046b);
            if (A == 0) {
                aVar = d.c(jsonReader, dVar);
            } else if (A == 1) {
                aVar2 = d.c(jsonReader, dVar);
            } else if (A == 2) {
                bVar = d.e(jsonReader, dVar);
            } else if (A != 3) {
                jsonReader.C();
                jsonReader.F();
            } else {
                bVar2 = d.e(jsonReader, dVar);
            }
        }
        jsonReader.k();
        return new i.k(aVar, aVar2, bVar, bVar2);
    }
}
