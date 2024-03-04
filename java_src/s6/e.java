package s6;

import androidx.annotation.Nullable;
import kotlin.KotlinVersion;
/* loaded from: classes2.dex */
public final class e {
    @Nullable
    public static String a() {
        try {
            return KotlinVersion.CURRENT.toString();
        } catch (NoClassDefFoundError unused) {
            return null;
        }
    }
}
