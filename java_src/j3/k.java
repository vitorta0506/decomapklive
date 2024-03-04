package j3;

import androidx.annotation.Nullable;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class k {
    public static void a(@Nullable i iVar) {
        if (iVar != null) {
            try {
                iVar.close();
            } catch (IOException unused) {
            }
        }
    }
}
