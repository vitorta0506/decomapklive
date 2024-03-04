package x;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
class c extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(RecyclerView.LayoutManager layoutManager) {
        super(layoutManager);
    }

    @Override // x.e
    public void a(View view) {
        b().addDisappearingView(view);
    }
}
