package ad;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes4.dex */
public class e implements d {
    @Override // ad.d
    public void log(int i9, @Nullable String str, @NonNull String str2) {
        j.a(str2);
        if (str == null) {
            str = "NO_TAG";
        }
        Log.println(i9, str, str2);
    }
}
