package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i0 {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f54064a = JsonReader.a.a("nm", "hd", "it");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j.j a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        String str = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54064a);
            if (A == 0) {
                str = jsonReader.t();
            } else if (A == 1) {
                z10 = jsonReader.p();
            } else if (A != 2) {
                jsonReader.F();
            } else {
                jsonReader.c();
                while (jsonReader.o()) {
                    j.c a10 = h.a(jsonReader, dVar);
                    if (a10 != null) {
                        arrayList.add(a10);
                    }
                }
                jsonReader.j();
            }
        }
        return new j.j(str, arrayList, z10);
    }
}
