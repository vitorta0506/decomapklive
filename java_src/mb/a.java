package mb;

import android.database.DataSetObserver;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4.dex */
public abstract class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private List<DataSetObserver> f54936a;

    @Override // mb.c
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        if (this.f54936a == null) {
            this.f54936a = new LinkedList();
        }
        this.f54936a.add(dataSetObserver);
    }

    @Override // mb.c
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        List<DataSetObserver> list = this.f54936a;
        if (list != null) {
            list.remove(dataSetObserver);
        }
    }
}
