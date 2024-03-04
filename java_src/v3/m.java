package v3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public class m {
    public static <ResultT> void a(@NonNull Status status, @Nullable ResultT resultt, @NonNull t4.h<ResultT> hVar) {
        if (status.R()) {
            hVar.c(resultt);
        } else {
            hVar.b(com.google.android.gms.common.internal.b.a(status));
        }
    }
}
