package t0;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public interface f<R> {

    /* loaded from: classes.dex */
    public interface a {
        void a(Drawable drawable);

        @Nullable
        Drawable b();

        View getView();
    }

    boolean a(R r10, a aVar);
}
