package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
public class f0 implements m0<n.d> {

    /* renamed from: a  reason: collision with root package name */
    public static final f0 f54056a = new f0();

    private f0() {
    }

    @Override // l.m0
    /* renamed from: b */
    public n.d a(JsonReader jsonReader, float f10) throws IOException {
        boolean z10 = jsonReader.w() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.c();
        }
        float q10 = (float) jsonReader.q();
        float q11 = (float) jsonReader.q();
        while (jsonReader.o()) {
            jsonReader.F();
        }
        if (z10) {
            jsonReader.j();
        }
        return new n.d((q10 / 100.0f) * f10, (q11 / 100.0f) * f10);
    }
}
