package s;

import android.graphics.Rect;
import android.os.Parcelable;
import android.util.Pair;
import android.view.View;
import androidx.annotation.Nullable;
import java.util.List;
/* loaded from: classes.dex */
public interface a {
    boolean a(int i9);

    int b(int i9);

    void c(int i9);

    @Nullable
    Integer d();

    void e(List<Pair<Rect, View>> list);

    void f();

    void onRestoreInstanceState(@Nullable Parcelable parcelable);

    Parcelable onSaveInstanceState();
}
