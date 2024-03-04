package l;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* loaded from: classes.dex */
class y {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f54107a = JsonReader.a.a("nm", "mm", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MergePaths a(JsonReader jsonReader) throws IOException {
        String str = null;
        MergePaths.MergePathsMode mergePathsMode = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int A = jsonReader.A(f54107a);
            if (A == 0) {
                str = jsonReader.t();
            } else if (A == 1) {
                mergePathsMode = MergePaths.MergePathsMode.forId(jsonReader.r());
            } else if (A != 2) {
                jsonReader.C();
                jsonReader.F();
            } else {
                z10 = jsonReader.p();
            }
        }
        return new MergePaths(str, mergePathsMode, z10);
    }
}
