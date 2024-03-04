package l;

import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
/* loaded from: classes.dex */
class l0 {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f54081a = JsonReader.a.a(NotifyType.SOUND, com.huawei.hms.push.e.f27721a, "o", "nm", "m", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ShapeTrimPath a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        String str = null;
        ShapeTrimPath.Type type = null;
        i.b bVar = null;
        i.b bVar2 = null;
        i.b bVar3 = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54081a);
            if (A == 0) {
                bVar = d.f(jsonReader, dVar, false);
            } else if (A == 1) {
                bVar2 = d.f(jsonReader, dVar, false);
            } else if (A == 2) {
                bVar3 = d.f(jsonReader, dVar, false);
            } else if (A == 3) {
                str = jsonReader.t();
            } else if (A == 4) {
                type = ShapeTrimPath.Type.forId(jsonReader.r());
            } else if (A != 5) {
                jsonReader.F();
            } else {
                z10 = jsonReader.p();
            }
        }
        return new ShapeTrimPath(str, type, bVar, bVar2, bVar3, z10);
    }
}
