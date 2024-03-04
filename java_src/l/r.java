package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
public class r implements m0<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public static final r f54091a = new r();

    private r() {
    }

    @Override // l.m0
    /* renamed from: b */
    public Integer a(JsonReader jsonReader, float f10) throws IOException {
        return Integer.valueOf(Math.round(s.g(jsonReader) * f10));
    }
}
