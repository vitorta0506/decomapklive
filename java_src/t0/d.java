package t0;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import t0.f;
/* loaded from: classes.dex */
public class d implements f<Drawable> {

    /* renamed from: a  reason: collision with root package name */
    private final int f58003a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f58004b;

    public d(int i9, boolean z10) {
        this.f58003a = i9;
        this.f58004b = z10;
    }

    @Override // t0.f
    /* renamed from: b */
    public boolean a(Drawable drawable, f.a aVar) {
        Drawable b10 = aVar.b();
        if (b10 == null) {
            b10 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{b10, drawable});
        transitionDrawable.setCrossFadeEnabled(this.f58004b);
        transitionDrawable.startTransition(this.f58003a);
        aVar.a(transitionDrawable);
        return true;
    }
}
