package l;

import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
public class g implements m0<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public static final g f54057a = new g();

    private g() {
    }

    @Override // l.m0
    /* renamed from: b */
    public Integer a(JsonReader jsonReader, float f10) throws IOException {
        boolean z10 = jsonReader.w() == JsonReader.Token.BEGIN_ARRAY;
        if (z10) {
            jsonReader.c();
        }
        double q10 = jsonReader.q();
        double q11 = jsonReader.q();
        double q12 = jsonReader.q();
        double q13 = jsonReader.w() == JsonReader.Token.NUMBER ? jsonReader.q() : 1.0d;
        if (z10) {
            jsonReader.j();
        }
        if (q10 <= 1.0d && q11 <= 1.0d && q12 <= 1.0d) {
            q10 *= 255.0d;
            q11 *= 255.0d;
            q12 *= 255.0d;
            if (q13 <= 1.0d) {
                q13 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) q13, (int) q10, (int) q11, (int) q12));
    }
}
