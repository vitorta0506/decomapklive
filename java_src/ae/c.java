package ae;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import wd.i;
/* loaded from: classes4.dex */
public class c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a implements AppBarLayout.OnOffsetChangedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ zd.a f744a;

        a(zd.a aVar) {
            this.f744a = aVar;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i9) {
            this.f744a.g(i9 >= 0, appBarLayout.getTotalScrollRange() + i9 <= 0);
        }
    }

    public static void a(View view, i iVar, zd.a aVar) {
        try {
            if (view instanceof CoordinatorLayout) {
                iVar.k().c(false);
                b((ViewGroup) view, aVar);
            }
        } catch (Throwable unused) {
        }
    }

    private static void b(ViewGroup viewGroup, zd.a aVar) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof AppBarLayout) {
                ((AppBarLayout) childAt).addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new a(aVar));
            }
        }
    }
}
