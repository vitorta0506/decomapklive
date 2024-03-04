package l;

import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.guochao.faceshow.aaspring.utils.Language;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.IOException;
/* loaded from: classes.dex */
public class i implements m0<DocumentData> {

    /* renamed from: a  reason: collision with root package name */
    public static final i f54062a = new i();

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f54063b = JsonReader.a.a("t", "f", NotifyType.SOUND, "j", Language.TURKISH, "lh", "ls", "fc", "sc", "sw", "of");

    private i() {
    }

    @Override // l.m0
    /* renamed from: b */
    public DocumentData a(JsonReader jsonReader, float f10) throws IOException {
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        jsonReader.e();
        DocumentData.Justification justification2 = justification;
        String str = null;
        String str2 = null;
        float f11 = 0.0f;
        int i9 = 0;
        float f12 = 0.0f;
        float f13 = 0.0f;
        int i10 = 0;
        int i11 = 0;
        float f14 = 0.0f;
        boolean z10 = true;
        while (jsonReader.o()) {
            switch (jsonReader.A(f54063b)) {
                case 0:
                    str = jsonReader.t();
                    break;
                case 1:
                    str2 = jsonReader.t();
                    break;
                case 2:
                    f11 = (float) jsonReader.q();
                    break;
                case 3:
                    int r10 = jsonReader.r();
                    justification2 = DocumentData.Justification.CENTER;
                    if (r10 <= justification2.ordinal() && r10 >= 0) {
                        justification2 = DocumentData.Justification.values()[r10];
                        break;
                    }
                    break;
                case 4:
                    i9 = jsonReader.r();
                    break;
                case 5:
                    f12 = (float) jsonReader.q();
                    break;
                case 6:
                    f13 = (float) jsonReader.q();
                    break;
                case 7:
                    i10 = s.d(jsonReader);
                    break;
                case 8:
                    i11 = s.d(jsonReader);
                    break;
                case 9:
                    f14 = (float) jsonReader.q();
                    break;
                case 10:
                    z10 = jsonReader.p();
                    break;
                default:
                    jsonReader.C();
                    jsonReader.F();
                    break;
            }
        }
        jsonReader.k();
        return new DocumentData(str, str2, f11, justification2, i9, f12, f13, i10, i11, f14, z10);
    }
}
