package y;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
public class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RecyclerView.LayoutManager f59992a;

        a(RecyclerView.LayoutManager layoutManager) {
            this.f59992a = layoutManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f59992a.requestLayout();
            this.f59992a.requestSimpleAnimationsInNextLayout();
        }
    }

    public static void a(RecyclerView.LayoutManager layoutManager) {
        layoutManager.postOnAnimation(new a(layoutManager));
    }
}
