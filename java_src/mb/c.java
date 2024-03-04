package mb;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes4.dex */
public interface c {
    View a(int i9, View view, ViewGroup viewGroup);

    int b();

    View c(View view, ViewGroup viewGroup);

    void registerDataSetObserver(DataSetObserver dataSetObserver);

    void unregisterDataSetObserver(DataSetObserver dataSetObserver);
}
