package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
/* loaded from: classes.dex */
public abstract class ActivityResultLauncher<I> {
    @NonNull
    public abstract ActivityResultContract<I, ?> getContract();

    public void launch(I i9) {
        launch(i9, null);
    }

    public abstract void launch(I i9, @Nullable ActivityOptionsCompat activityOptionsCompat);

    @MainThread
    public abstract void unregister();
}
