package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.facebook.internal.AnalyticsEvents;
import java.io.IOException;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54082a = JsonReader.a.a("ch", "size", "w", AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, "fFamily", "data");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f54083b = JsonReader.a.a("shapes");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h.c a(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.e();
        String str = null;
        String str2 = null;
        double d10 = 0.0d;
        double d11 = 0.0d;
        char c10 = 0;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54082a);
            if (A == 0) {
                c10 = jsonReader.t().charAt(0);
            } else if (A == 1) {
                d10 = jsonReader.q();
            } else if (A == 2) {
                d11 = jsonReader.q();
            } else if (A == 3) {
                str = jsonReader.t();
            } else if (A == 4) {
                str2 = jsonReader.t();
            } else if (A != 5) {
                jsonReader.C();
                jsonReader.F();
            } else {
                jsonReader.e();
                while (jsonReader.o()) {
                    if (jsonReader.A(f54083b) != 0) {
                        jsonReader.C();
                        jsonReader.F();
                    } else {
                        jsonReader.c();
                        while (jsonReader.o()) {
                            arrayList.add((j.j) h.a(jsonReader, dVar));
                        }
                        jsonReader.j();
                    }
                }
                jsonReader.k();
            }
        }
        jsonReader.k();
        return new h.c(arrayList, c10, d10, d11, str, str2);
    }
}
