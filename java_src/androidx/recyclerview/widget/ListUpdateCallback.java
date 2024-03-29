package androidx.recyclerview.widget;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public interface ListUpdateCallback {
    void onChanged(int i9, int i10, @Nullable Object obj);

    void onInserted(int i9, int i10);

    void onMoved(int i9, int i10);

    void onRemoved(int i9, int i10);
}
