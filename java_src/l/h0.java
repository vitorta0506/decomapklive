package l;

import android.graphics.Path;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.Collections;
/* loaded from: classes.dex */
class h0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54061a = JsonReader.a.a("nm", com.huawei.hms.opendevice.c.f27627a, "o", "fillEnabled", "r", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j.i a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        i.d dVar2 = null;
        String str = null;
        i.a aVar = null;
        int i9 = 1;
        boolean z10 = false;
        boolean z11 = false;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54061a);
            if (A == 0) {
                str = jsonReader.t();
            } else if (A == 1) {
                aVar = d.c(jsonReader, dVar);
            } else if (A == 2) {
                dVar2 = d.h(jsonReader, dVar);
            } else if (A == 3) {
                z10 = jsonReader.p();
            } else if (A == 4) {
                i9 = jsonReader.r();
            } else if (A != 5) {
                jsonReader.C();
                jsonReader.F();
            } else {
                z11 = jsonReader.p();
            }
        }
        return new j.i(str, z10, i9 == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, aVar, dVar2 == null ? new i.d(Collections.singletonList(new n.a(100))) : dVar2, z11);
    }
}
