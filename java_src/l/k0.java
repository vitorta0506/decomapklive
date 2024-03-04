package l;

import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k0 {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f54078a = JsonReader.a.a("nm", com.huawei.hms.opendevice.c.f27627a, "w", "o", "lc", "lj", "ml", "hd", "d");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f54079b = JsonReader.a.a("n", NotifyType.VIBRATE);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static ShapeStroke a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        char c10;
        ArrayList arrayList = new ArrayList();
        String str = null;
        i.b bVar = null;
        i.a aVar = null;
        i.b bVar2 = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        float f10 = 0.0f;
        boolean z10 = false;
        i.d dVar2 = null;
        while (jsonReader.o()) {
            switch (jsonReader.A(f54078a)) {
                case 0:
                    str = jsonReader.t();
                    break;
                case 1:
                    aVar = d.c(jsonReader, dVar);
                    break;
                case 2:
                    bVar2 = d.e(jsonReader, dVar);
                    break;
                case 3:
                    dVar2 = d.h(jsonReader, dVar);
                    break;
                case 4:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.r() - 1];
                    break;
                case 5:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.r() - 1];
                    break;
                case 6:
                    f10 = (float) jsonReader.q();
                    break;
                case 7:
                    z10 = jsonReader.p();
                    break;
                case 8:
                    jsonReader.c();
                    while (jsonReader.o()) {
                        jsonReader.e();
                        String str2 = null;
                        i.b bVar3 = null;
                        while (jsonReader.o()) {
                            int A = jsonReader.A(f54079b);
                            if (A == 0) {
                                str2 = jsonReader.t();
                            } else if (A != 1) {
                                jsonReader.C();
                                jsonReader.F();
                            } else {
                                bVar3 = d.e(jsonReader, dVar);
                            }
                        }
                        jsonReader.k();
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case 100:
                                if (str2.equals("d")) {
                                    c10 = 0;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 103:
                                if (str2.equals("g")) {
                                    c10 = 1;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 111:
                                if (str2.equals("o")) {
                                    c10 = 2;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            default:
                                c10 = 65535;
                                break;
                        }
                        switch (c10) {
                            case 0:
                            case 1:
                                dVar.u(true);
                                arrayList.add(bVar3);
                                break;
                            case 2:
                                bVar = bVar3;
                                break;
                        }
                    }
                    jsonReader.j();
                    if (arrayList.size() != 1) {
                        break;
                    } else {
                        arrayList.add(arrayList.get(0));
                        break;
                    }
                    break;
                default:
                    jsonReader.F();
                    break;
            }
        }
        if (dVar2 == null) {
            dVar2 = new i.d(Collections.singletonList(new n.a(100)));
        }
        return new ShapeStroke(str, bVar, arrayList, aVar, dVar2, bVar2, lineCapType, lineJoinType, f10, z10);
    }
}
