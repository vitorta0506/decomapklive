package l;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
/* loaded from: classes.dex */
class d0 {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f54051a = JsonReader.a.a("nm", "p", NotifyType.SOUND, "r", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j.f a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        String str = null;
        i.m<PointF, PointF> mVar = null;
        i.f fVar = null;
        i.b bVar = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54051a);
            if (A == 0) {
                str = jsonReader.t();
            } else if (A == 1) {
                mVar = a.b(jsonReader, dVar);
            } else if (A == 2) {
                fVar = d.i(jsonReader, dVar);
            } else if (A == 3) {
                bVar = d.e(jsonReader, dVar);
            } else if (A != 4) {
                jsonReader.F();
            } else {
                z10 = jsonReader.p();
            }
        }
        return new j.f(str, mVar, fVar, bVar, z10);
    }
}
