package l;

import android.graphics.Color;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
class s {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54092a = JsonReader.a.a(com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w, "y");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f54093a;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            f54093a = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f54093a[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f54093a[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static PointF a(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.c();
        float q10 = (float) jsonReader.q();
        float q11 = (float) jsonReader.q();
        while (jsonReader.w() != JsonReader.Token.END_ARRAY) {
            jsonReader.F();
        }
        jsonReader.j();
        return new PointF(q10 * f10, q11 * f10);
    }

    private static PointF b(JsonReader jsonReader, float f10) throws IOException {
        float q10 = (float) jsonReader.q();
        float q11 = (float) jsonReader.q();
        while (jsonReader.o()) {
            jsonReader.F();
        }
        return new PointF(q10 * f10, q11 * f10);
    }

    private static PointF c(JsonReader jsonReader, float f10) throws IOException {
        jsonReader.e();
        float f11 = 0.0f;
        float f12 = 0.0f;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54092a);
            if (A == 0) {
                f11 = g(jsonReader);
            } else if (A != 1) {
                jsonReader.C();
                jsonReader.F();
            } else {
                f12 = g(jsonReader);
            }
        }
        jsonReader.k();
        return new PointF(f11 * f10, f12 * f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public static int d(JsonReader jsonReader) throws IOException {
        jsonReader.c();
        int q10 = (int) (jsonReader.q() * 255.0d);
        int q11 = (int) (jsonReader.q() * 255.0d);
        int q12 = (int) (jsonReader.q() * 255.0d);
        while (jsonReader.o()) {
            jsonReader.F();
        }
        jsonReader.j();
        return Color.argb(255, q10, q11, q12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PointF e(JsonReader jsonReader, float f10) throws IOException {
        int i9 = a.f54093a[jsonReader.w().ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 3) {
                    return c(jsonReader, f10);
                }
                throw new IllegalArgumentException("Unknown point starts with " + jsonReader.w());
            }
            return a(jsonReader, f10);
        }
        return b(jsonReader, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<PointF> f(JsonReader jsonReader, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.c();
        while (jsonReader.w() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.c();
            arrayList.add(e(jsonReader, f10));
            jsonReader.j();
        }
        jsonReader.j();
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float g(JsonReader jsonReader) throws IOException {
        JsonReader.Token w6 = jsonReader.w();
        int i9 = a.f54093a[w6.ordinal()];
        if (i9 != 1) {
            if (i9 == 2) {
                jsonReader.c();
                float q10 = (float) jsonReader.q();
                while (jsonReader.o()) {
                    jsonReader.F();
                }
                jsonReader.j();
                return q10;
            }
            throw new IllegalArgumentException("Unknown value for token of type " + w6);
        }
        return (float) jsonReader.q();
    }
}
