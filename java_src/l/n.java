package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
class n {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54084a = JsonReader.a.a("fFamily", "fName", "fStyle", "ascent");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h.b a(JsonReader jsonReader) throws IOException {
        jsonReader.e();
        String str = null;
        String str2 = null;
        String str3 = null;
        float f10 = 0.0f;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54084a);
            if (A == 0) {
                str = jsonReader.t();
            } else if (A == 1) {
                str2 = jsonReader.t();
            } else if (A == 2) {
                str3 = jsonReader.t();
            } else if (A != 3) {
                jsonReader.C();
                jsonReader.F();
            } else {
                f10 = (float) jsonReader.q();
            }
        }
        jsonReader.k();
        return new h.b(str, str2, str3, f10);
    }
}
