package l;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54052a = JsonReader.a.a("ef");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f54053b = JsonReader.a.a("ty", NotifyType.VIBRATE);

    @Nullable
    private static j.a a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        jsonReader.e();
        j.a aVar = null;
        while (true) {
            boolean z10 = false;
            while (jsonReader.o()) {
                int A = jsonReader.A(f54053b);
                if (A != 0) {
                    if (A != 1) {
                        jsonReader.C();
                        jsonReader.F();
                    } else if (z10) {
                        aVar = new j.a(d.e(jsonReader, dVar));
                    } else {
                        jsonReader.F();
                    }
                } else if (jsonReader.r() == 0) {
                    z10 = true;
                }
            }
            jsonReader.k();
            return aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static j.a b(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        j.a aVar = null;
        while (jsonReader.o()) {
            if (jsonReader.A(f54052a) != 0) {
                jsonReader.C();
                jsonReader.F();
            } else {
                jsonReader.c();
                while (jsonReader.o()) {
                    j.a a10 = a(jsonReader, dVar);
                    if (a10 != null) {
                        aVar = a10;
                    }
                }
                jsonReader.j();
            }
        }
        return aVar;
    }
}
