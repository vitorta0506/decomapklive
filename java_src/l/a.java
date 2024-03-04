package l;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54043a = JsonReader.a.a("k", com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w, "y");

    public static i.e a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.w() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.c();
            while (jsonReader.o()) {
                arrayList.add(z.a(jsonReader, dVar));
            }
            jsonReader.j();
            u.b(arrayList);
        } else {
            arrayList.add(new n.a(s.e(jsonReader, m.h.e())));
        }
        return new i.e(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i.m<PointF, PointF> b(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        jsonReader.e();
        i.e eVar = null;
        i.b bVar = null;
        i.b bVar2 = null;
        boolean z10 = false;
        while (jsonReader.w() != JsonReader.Token.END_OBJECT) {
            int A = jsonReader.A(f54043a);
            if (A == 0) {
                eVar = a(jsonReader, dVar);
            } else if (A != 1) {
                if (A != 2) {
                    jsonReader.C();
                    jsonReader.F();
                } else if (jsonReader.w() == JsonReader.Token.STRING) {
                    jsonReader.F();
                    z10 = true;
                } else {
                    bVar2 = d.e(jsonReader, dVar);
                }
            } else if (jsonReader.w() == JsonReader.Token.STRING) {
                jsonReader.F();
                z10 = true;
            } else {
                bVar = d.e(jsonReader, dVar);
            }
        }
        jsonReader.k();
        if (z10) {
            dVar.a("Lottie doesn't support expressions.");
        }
        return eVar != null ? eVar : new i.i(bVar, bVar2);
    }
}
