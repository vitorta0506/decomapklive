package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.guochao.faceshow.aaspring.utils.Language;
import java.io.IOException;
/* loaded from: classes.dex */
class e0 {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f54054a = JsonReader.a.a("nm", com.huawei.hms.opendevice.c.f27627a, "o", Language.TURKISH, "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j.g a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        String str = null;
        i.b bVar = null;
        i.b bVar2 = null;
        i.l lVar = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54054a);
            if (A == 0) {
                str = jsonReader.t();
            } else if (A == 1) {
                bVar = d.f(jsonReader, dVar, false);
            } else if (A == 2) {
                bVar2 = d.f(jsonReader, dVar, false);
            } else if (A == 3) {
                lVar = c.g(jsonReader, dVar);
            } else if (A != 4) {
                jsonReader.F();
            } else {
                z10 = jsonReader.p();
            }
        }
        return new j.g(str, bVar, bVar2, lVar, z10);
    }
}
