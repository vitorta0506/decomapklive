package l;

import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.List;
/* loaded from: classes.dex */
public class d {
    private static <T> List<n.a<T>> a(JsonReader jsonReader, float f10, com.airbnb.lottie.d dVar, m0<T> m0Var) throws IOException {
        return u.a(jsonReader, dVar, f10, m0Var, false);
    }

    private static <T> List<n.a<T>> b(JsonReader jsonReader, com.airbnb.lottie.d dVar, m0<T> m0Var) throws IOException {
        return u.a(jsonReader, dVar, 1.0f, m0Var, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i.a c(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        return new i.a(b(jsonReader, dVar, g.f54057a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i.j d(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        return new i.j(b(jsonReader, dVar, i.f54062a));
    }

    public static i.b e(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        return f(jsonReader, dVar, true);
    }

    public static i.b f(JsonReader jsonReader, com.airbnb.lottie.d dVar, boolean z10) throws IOException {
        return new i.b(a(jsonReader, z10 ? m.h.e() : 1.0f, dVar, l.f54080a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i.c g(JsonReader jsonReader, com.airbnb.lottie.d dVar, int i9) throws IOException {
        return new i.c(b(jsonReader, dVar, new o(i9)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i.d h(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        return new i.d(b(jsonReader, dVar, r.f54091a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i.f i(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        return new i.f(u.a(jsonReader, dVar, m.h.e(), b0.f54047a, true));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i.g j(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        return new i.g(b(jsonReader, dVar, f0.f54056a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i.h k(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        return new i.h(a(jsonReader, m.h.e(), dVar, g0.f54058a));
    }
}
