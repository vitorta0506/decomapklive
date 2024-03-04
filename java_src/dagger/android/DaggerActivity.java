package dagger.android;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.Nullable;
/* loaded from: classes5.dex */
public abstract class DaggerActivity extends Activity implements c {
    @Override // dagger.android.c
    public b<Object> a() {
        return null;
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        a.b(this);
        super.onCreate(bundle);
    }
}
