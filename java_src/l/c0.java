package l;

import android.graphics.PointF;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
class c0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54050a = JsonReader.a.a("nm", "sy", "pt", "p", "r", "or", "os", "ir", "is", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PolystarShape a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        String str = null;
        PolystarShape.Type type = null;
        i.b bVar = null;
        i.m<PointF, PointF> mVar = null;
        i.b bVar2 = null;
        i.b bVar3 = null;
        i.b bVar4 = null;
        i.b bVar5 = null;
        i.b bVar6 = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            switch (jsonReader.A(f54050a)) {
                case 0:
                    str = jsonReader.t();
                    break;
                case 1:
                    type = PolystarShape.Type.forValue(jsonReader.r());
                    break;
                case 2:
                    bVar = d.f(jsonReader, dVar, false);
                    break;
                case 3:
                    mVar = a.b(jsonReader, dVar);
                    break;
                case 4:
                    bVar2 = d.f(jsonReader, dVar, false);
                    break;
                case 5:
                    bVar4 = d.e(jsonReader, dVar);
                    break;
                case 6:
                    bVar6 = d.f(jsonReader, dVar, false);
                    break;
                case 7:
                    bVar3 = d.e(jsonReader, dVar);
                    break;
                case 8:
                    bVar5 = d.f(jsonReader, dVar, false);
                    break;
                case 9:
                    z10 = jsonReader.p();
                    break;
                default:
                    jsonReader.C();
                    jsonReader.F();
                    break;
            }
        }
        return new PolystarShape(str, type, bVar, mVar, bVar2, bVar3, bVar4, bVar5, bVar6, z10);
    }
}
