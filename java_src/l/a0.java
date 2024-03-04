package l;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
public class a0 implements m0<PointF> {

    /* renamed from: a  reason: collision with root package name */
    public static final a0 f54044a = new a0();

    private a0() {
    }

    @Override // l.m0
    /* renamed from: b */
    public PointF a(JsonReader jsonReader, float f10) throws IOException {
        return s.e(jsonReader, f10);
    }
}
