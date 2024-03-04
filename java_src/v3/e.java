package v3;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.internal.LifecycleCallback;
/* loaded from: classes2.dex */
public interface e {
    @Nullable
    <T extends LifecycleCallback> T N(@NonNull String str, @NonNull Class<T> cls);

    @Nullable
    Activity W0();

    void i(@NonNull String str, @NonNull LifecycleCallback lifecycleCallback);

    void startActivityForResult(@NonNull Intent intent, int i9);
}
