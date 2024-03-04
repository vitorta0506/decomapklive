package dagger.android;

import android.app.DialogFragment;
import android.content.Context;
@Deprecated
/* loaded from: classes5.dex */
public abstract class DaggerDialogFragment extends DialogFragment implements c {
    @Override // dagger.android.c
    public b<Object> a() {
        return null;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onAttach(Context context) {
        a.c(this);
        super.onAttach(context);
    }
}
