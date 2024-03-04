package l;

import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static JsonReader.a f54088a = JsonReader.a.a("nm", "g", "o", "t", NotifyType.SOUND, com.huawei.hms.push.e.f27721a, "w", "lc", "lj", "ml", "hd", "d");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f54089b = JsonReader.a.a("p", "k");

    /* renamed from: c  reason: collision with root package name */
    private static final JsonReader.a f54090c = JsonReader.a.a("n", NotifyType.VIBRATE);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.content.a a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        i.c cVar;
        ArrayList arrayList = new ArrayList();
        String str = null;
        GradientType gradientType = null;
        i.c cVar2 = null;
        i.f fVar = null;
        i.f fVar2 = null;
        i.b bVar = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        float f10 = 0.0f;
        i.b bVar2 = null;
        boolean z10 = false;
        i.d dVar2 = null;
        while (jsonReader.o()) {
            switch (jsonReader.A(f54088a)) {
                case 0:
                    str = jsonReader.t();
                    break;
                case 1:
                    int i9 = -1;
                    jsonReader.e();
                    while (jsonReader.o()) {
                        int A = jsonReader.A(f54089b);
                        if (A != 0) {
                            cVar = cVar2;
                            if (A != 1) {
                                jsonReader.C();
                                jsonReader.F();
                            } else {
                                cVar2 = d.g(jsonReader, dVar, i9);
                            }
                        } else {
                            cVar = cVar2;
                            i9 = jsonReader.r();
                        }
                        cVar2 = cVar;
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
                    bVar = d.e(jsonReader, dVar);
                    break;
                case 7:
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.r() - 1];
                    break;
                case 8:
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.r() - 1];
                    break;
                case 9:
                    f10 = (float) jsonReader.q();
                    break;
                case 10:
                    z10 = jsonReader.p();
                    break;
                case 11:
                    jsonReader.c();
                    while (jsonReader.o()) {
                        jsonReader.e();
                        String str2 = null;
                        i.b bVar3 = null;
                        while (jsonReader.o()) {
                            int A2 = jsonReader.A(f54090c);
                            if (A2 != 0) {
                                i.b bVar4 = bVar2;
                                if (A2 != 1) {
                                    jsonReader.C();
                                    jsonReader.F();
                                } else {
                                    bVar3 = d.e(jsonReader, dVar);
                                }
                                bVar2 = bVar4;
                            } else {
                                str2 = jsonReader.t();
                            }
                        }
                        i.b bVar5 = bVar2;
                        jsonReader.k();
                        if (str2.equals("o")) {
                            bVar2 = bVar3;
                        } else {
                            if (str2.equals("d") || str2.equals("g")) {
                                dVar.u(true);
                                arrayList.add(bVar3);
                            }
                            bVar2 = bVar5;
                        }
                    }
                    i.b bVar6 = bVar2;
                    jsonReader.j();
                    if (arrayList.size() == 1) {
                        arrayList.add(arrayList.get(0));
                    }
                    bVar2 = bVar6;
                    break;
                default:
                    jsonReader.C();
                    jsonReader.F();
                    break;
            }
        }
        if (dVar2 == null) {
            dVar2 = new i.d(Collections.singletonList(new n.a(100)));
        }
        return new com.airbnb.lottie.model.content.a(str, gradientType, cVar2, dVar2, fVar, fVar2, bVar, lineCapType, lineJoinType, f10, arrayList, bVar2, z10);
    }
}
