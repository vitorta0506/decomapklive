package l;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
public class b0 implements m0<PointF> {

    /* renamed from: a  reason: collision with root package name */
    public static final b0 f54047a = new b0();

    private b0() {
    }

    @Override // l.m0
    /* renamed from: b */
    public PointF a(JsonReader jsonReader, float f10) throws IOException {
        JsonReader.Token w6 = jsonReader.w();
        if (w6 == JsonReader.Token.BEGIN_ARRAY) {
            return s.e(jsonReader, f10);
        }
        if (w6 == JsonReader.Token.BEGIN_OBJECT) {
            return s.e(jsonReader, f10);
        }
        if (w6 == JsonReader.Token.NUMBER) {
            PointF pointF = new PointF(((float) jsonReader.q()) * f10, ((float) jsonReader.q()) * f10);
            while (jsonReader.o()) {
                jsonReader.F();
            }
            return pointF;
        }
        throw new IllegalArgumentException("Cannot convert json to point. Next token is " + w6);
    }
}
