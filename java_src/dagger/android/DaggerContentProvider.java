package dagger.android;

import android.content.ContentProvider;
import androidx.annotation.CallSuper;
/* loaded from: classes5.dex */
public abstract class DaggerContentProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    @CallSuper
    public boolean onCreate() {
        a.f(this);
        return true;
    }
}
