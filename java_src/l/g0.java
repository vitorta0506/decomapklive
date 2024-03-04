package l;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class g0 implements m0<j.h> {

    /* renamed from: a  reason: collision with root package name */
    public static final g0 f54058a = new g0();

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f54059b = JsonReader.a.a(com.huawei.hms.opendevice.c.f27627a, NotifyType.VIBRATE, com.huawei.hms.opendevice.i.TAG, "o");

    private g0() {
    }

    @Override // l.m0
    /* renamed from: b */
    public j.h a(JsonReader jsonReader, float f10) throws IOException {
        if (jsonReader.w() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.c();
        }
        jsonReader.e();
        List<PointF> list = null;
        List<PointF> list2 = null;
        List<PointF> list3 = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54059b);
            if (A == 0) {
                z10 = jsonReader.p();
            } else if (A == 1) {
                list = s.f(jsonReader, f10);
            } else if (A == 2) {
                list2 = s.f(jsonReader, f10);
            } else if (A != 3) {
                jsonReader.C();
                jsonReader.F();
            } else {
                list3 = s.f(jsonReader, f10);
            }
        }
        jsonReader.k();
        if (jsonReader.w() == JsonReader.Token.END_ARRAY) {
            jsonReader.j();
        }
        if (list != null && list2 != null && list3 != null) {
            if (list.isEmpty()) {
                return new j.h(new PointF(), false, Collections.emptyList());
            }
            int size = list.size();
            PointF pointF = list.get(0);
            ArrayList arrayList = new ArrayList(size);
            for (int i9 = 1; i9 < size; i9++) {
                PointF pointF2 = list.get(i9);
                int i10 = i9 - 1;
                arrayList.add(new h.a(m.g.a(list.get(i10), list3.get(i10)), m.g.a(pointF2, list2.get(i9)), pointF2));
            }
            if (z10) {
                PointF pointF3 = list.get(0);
                int i11 = size - 1;
                arrayList.add(new h.a(m.g.a(list.get(i11), list3.get(i11)), m.g.a(pointF3, list2.get(0)), pointF3));
            }
            return new j.h(pointF, z10, arrayList);
        }
        throw new IllegalArgumentException("Shape data was missing information.");
    }
}
