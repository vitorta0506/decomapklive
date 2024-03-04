package androidx.recyclerview.widget;

import androidx.recyclerview.widget.ItemTouchHelper;
/* loaded from: classes.dex */
public class CompatItemTouchHelper extends ItemTouchHelper {
    public CompatItemTouchHelper(ItemTouchHelper.Callback callback) {
        super(callback);
    }

    public ItemTouchHelper.Callback getCallback() {
        return this.mCallback;
    }
}
