package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
class j0 {

    /* renamed from: a  reason: collision with root package name */
    static JsonReader.a f54070a = JsonReader.a.a("nm", "ind", "ks", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j.k a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        int i9 = 0;
        String str = null;
        i.h hVar = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54070a);
            if (A == 0) {
                str = jsonReader.t();
            } else if (A == 1) {
                i9 = jsonReader.r();
            } else if (A == 2) {
                hVar = d.k(jsonReader, dVar);
            } else if (A != 3) {
                jsonReader.F();
            } else {
                z10 = jsonReader.p();
            }
        }
        return new j.k(str, i9, hVar, z10);
    }
}
