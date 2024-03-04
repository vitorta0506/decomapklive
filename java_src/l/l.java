package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
public class l implements m0<Float> {

    /* renamed from: a  reason: collision with root package name */
    public static final l f54080a = new l();

    private l() {
    }

    @Override // l.m0
    /* renamed from: b */
    public Float a(JsonReader jsonReader, float f10) throws IOException {
        return Float.valueOf(s.g(jsonReader) * f10);
    }
}
