package l;

import android.graphics.Path;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54086a = JsonReader.a.a("nm", "g", "o", "t", NotifyType.SOUND, com.huawei.hms.push.e.f27721a, "r", "hd");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f54087b = JsonReader.a.a("p", "k");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j.e a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        i.d dVar2 = null;
        Path.FillType fillType = Path.FillType.WINDING;
        String str = null;
        GradientType gradientType = null;
        i.c cVar = null;
        i.f fVar = null;
        i.f fVar2 = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            switch (jsonReader.A(f54086a)) {
                case 0:
                    str = jsonReader.t();
                    break;
                case 1:
                    int i9 = -1;
                    jsonReader.e();
                    while (jsonReader.o()) {
                        int A = jsonReader.A(f54087b);
                        if (A == 0) {
                            i9 = jsonReader.r();
                        } else if (A != 1) {
                            jsonReader.C();
                            jsonReader.F();
                        } else {
                            cVar = d.g(jsonReader, dVar, i9);
                        }
                    }
                    jsonReader.k();
                    break;
                case 2:
                    dVar2 = d.h(jsonReader, dVar);
                    break;
                case 3:
                    gradientType = jsonReader.r() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    fVar = d.i(jsonReader, dVar);
                    break;
                case 5:
                    fVar2 = d.i(jsonReader, dVar);
                    break;
                case 6:
                    fillType = jsonReader.r() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 7:
                    z10 = jsonReader.p();
                    break;
                default:
                    jsonReader.C();
                    jsonReader.F();
                    break;
            }
        }
        return new j.e(str, gradientType, fillType, cVar, dVar2 == null ? new i.d(Collections.singletonList(new n.a(100))) : dVar2, fVar, fVar2, null, null, z10);
    }
}
