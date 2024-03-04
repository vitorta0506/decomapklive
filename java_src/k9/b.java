package k9;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes3.dex */
public abstract class b {
    private a onDataSetChangeListener;

    /* loaded from: classes3.dex */
    public interface a {
        void onChange();
    }

    public abstract int getCount();

    public abstract Object getItem(int i9);

    public abstract int getPopularity(int i9);

    public abstract View getView(Context context, int i9, ViewGroup viewGroup);

    public final void notifyDataSetChanged() {
        a aVar = this.onDataSetChangeListener;
        if (aVar == null) {
            return;
        }
        aVar.onChange();
    }

    public abstract void onThemeColorChanged(View view, int i9);

    public void setOnDataSetChangeListener(a aVar) {
        this.onDataSetChangeListener = aVar;
    }
}
