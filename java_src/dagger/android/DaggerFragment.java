package dagger.android;

import android.app.Fragment;
import android.content.Context;
@Deprecated
/* loaded from: classes5.dex */
public abstract class DaggerFragment extends Fragment implements c {
    @Override // dagger.android.c
    public b<Object> a() {
        return null;
    }

    @Override // android.app.Fragment
    public void onAttach(Context context) {
        a.c(this);
        super.onAttach(context);
    }
}
