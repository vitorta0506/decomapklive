package androidx.databinding;

import androidx.databinding.ViewDataBinding;
/* loaded from: classes.dex */
public abstract class OnRebindCallback<T extends ViewDataBinding> {
    public void onBound(T t10) {
    }

    public void onCanceled(T t10) {
    }

    public boolean onPreBind(T t10) {
        return true;
    }
}
