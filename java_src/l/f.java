package l;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
/* loaded from: classes.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f54055a = JsonReader.a.a("nm", "p", NotifyType.SOUND, "hd", "d");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j.b a(JsonReader jsonReader, com.airbnb.lottie.d dVar, int i9) throws IOException {
        boolean z10 = i9 == 3;
        String str = null;
        i.m<PointF, PointF> mVar = null;
        i.f fVar = null;
        boolean z11 = false;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54055a);
            if (A == 0) {
                str = jsonReader.t();
            } else if (A == 1) {
                mVar = a.b(jsonReader, dVar);
            } else if (A == 2) {
                fVar = d.i(jsonReader, dVar);
            } else if (A == 3) {
                z11 = jsonReader.p();
            } else if (A != 4) {
                jsonReader.C();
                jsonReader.F();
            } else {
                z10 = jsonReader.r() == 3;
            }
        }
        return new j.b(str, mVar, fVar, z10, z11);
    }
}
