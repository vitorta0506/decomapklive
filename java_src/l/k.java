package l;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
/* loaded from: classes.dex */
public class k {

    /* renamed from: f  reason: collision with root package name */
    private static final JsonReader.a f54071f = JsonReader.a.a("ef");

    /* renamed from: g  reason: collision with root package name */
    private static final JsonReader.a f54072g = JsonReader.a.a("nm", NotifyType.VIBRATE);

    /* renamed from: a  reason: collision with root package name */
    private i.a f54073a;

    /* renamed from: b  reason: collision with root package name */
    private i.b f54074b;

    /* renamed from: c  reason: collision with root package name */
    private i.b f54075c;

    /* renamed from: d  reason: collision with root package name */
    private i.b f54076d;

    /* renamed from: e  reason: collision with root package name */
    private i.b f54077e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0052, code lost:
        if (r0.equals("Opacity") == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.airbnb.lottie.parser.moshi.JsonReader r6, com.airbnb.lottie.d r7) throws java.io.IOException {
        /*
            r5 = this;
            r6.e()
            java.lang.String r0 = ""
        L5:
            boolean r1 = r6.o()
            if (r1 == 0) goto L90
            com.airbnb.lottie.parser.moshi.JsonReader$a r1 = l.k.f54072g
            int r1 = r6.A(r1)
            if (r1 == 0) goto L8a
            r2 = 1
            if (r1 == r2) goto L1d
            r6.C()
            r6.F()
            goto L5
        L1d:
            r0.hashCode()
            r1 = -1
            int r3 = r0.hashCode()
            r4 = 0
            switch(r3) {
                case 353103893: goto L55;
                case 397447147: goto L4c;
                case 1041377119: goto L41;
                case 1379387491: goto L36;
                case 1383710113: goto L2b;
                default: goto L29;
            }
        L29:
            r2 = -1
            goto L5f
        L2b:
            java.lang.String r2 = "Softness"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L34
            goto L29
        L34:
            r2 = 4
            goto L5f
        L36:
            java.lang.String r2 = "Shadow Color"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L3f
            goto L29
        L3f:
            r2 = 3
            goto L5f
        L41:
            java.lang.String r2 = "Direction"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L4a
            goto L29
        L4a:
            r2 = 2
            goto L5f
        L4c:
            java.lang.String r3 = "Opacity"
            boolean r3 = r0.equals(r3)
            if (r3 != 0) goto L5f
            goto L29
        L55:
            java.lang.String r2 = "Distance"
            boolean r2 = r0.equals(r2)
            if (r2 != 0) goto L5e
            goto L29
        L5e:
            r2 = 0
        L5f:
            switch(r2) {
                case 0: goto L82;
                case 1: goto L7b;
                case 2: goto L74;
                case 3: goto L6d;
                case 4: goto L66;
                default: goto L62;
            }
        L62:
            r6.F()
            goto L5
        L66:
            i.b r1 = l.d.e(r6, r7)
            r5.f54077e = r1
            goto L5
        L6d:
            i.a r1 = l.d.c(r6, r7)
            r5.f54073a = r1
            goto L5
        L74:
            i.b r1 = l.d.f(r6, r7, r4)
            r5.f54075c = r1
            goto L5
        L7b:
            i.b r1 = l.d.f(r6, r7, r4)
            r5.f54074b = r1
            goto L5
        L82:
            i.b r1 = l.d.e(r6, r7)
            r5.f54076d = r1
            goto L5
        L8a:
            java.lang.String r0 = r6.t()
            goto L5
        L90:
            r6.k()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: l.k.a(com.airbnb.lottie.parser.moshi.JsonReader, com.airbnb.lottie.d):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public j b(JsonReader jsonReader, com.airbnb.lottie.d dVar) throws IOException {
        i.b bVar;
        i.b bVar2;
        i.b bVar3;
        i.b bVar4;
        while (jsonReader.o()) {
            if (jsonReader.A(f54071f) != 0) {
                jsonReader.C();
                jsonReader.F();
            } else {
                jsonReader.c();
                while (jsonReader.o()) {
                    a(jsonReader, dVar);
                }
                jsonReader.j();
            }
        }
        i.a aVar = this.f54073a;
        if (aVar == null || (bVar = this.f54074b) == null || (bVar2 = this.f54075c) == null || (bVar3 = this.f54076d) == null || (bVar4 = this.f54077e) == null) {
            return null;
        }
        return new j(aVar, bVar, bVar2, bVar3, bVar4);
    }
}
