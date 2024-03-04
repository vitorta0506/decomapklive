package y0;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public class b {

    /* renamed from: i  reason: collision with root package name */
    private static final String f59993i = "y0.b";

    /* renamed from: a  reason: collision with root package name */
    private final View f59994a;

    /* renamed from: b  reason: collision with root package name */
    private View f59995b;

    /* renamed from: d  reason: collision with root package name */
    private View f59997d;

    /* renamed from: e  reason: collision with root package name */
    private ViewGroup f59998e;

    /* renamed from: f  reason: collision with root package name */
    private final ViewGroup.LayoutParams f59999f;

    /* renamed from: h  reason: collision with root package name */
    private final int f60001h;

    /* renamed from: c  reason: collision with root package name */
    private int f59996c = -1;

    /* renamed from: g  reason: collision with root package name */
    private int f60000g = 0;

    public b(View view) {
        this.f59994a = view;
        this.f59999f = view.getLayoutParams();
        this.f59997d = view;
        this.f60001h = view.getId();
    }

    private boolean b() {
        if (this.f59998e == null) {
            ViewGroup viewGroup = (ViewGroup) this.f59994a.getParent();
            this.f59998e = viewGroup;
            if (viewGroup == null) {
                Log.e(f59993i, "the source view have not attach to any view");
                return false;
            }
            int childCount = viewGroup.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                if (this.f59994a == this.f59998e.getChildAt(i9)) {
                    this.f60000g = i9;
                    return true;
                }
            }
            return true;
        }
        return true;
    }

    public View a() {
        return this.f59995b;
    }

    public void c(View view) {
        if (this.f59997d == view) {
            return;
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        if (b()) {
            this.f59995b = view;
            this.f59998e.removeView(this.f59997d);
            this.f59995b.setId(this.f60001h);
            this.f59998e.addView(this.f59995b, this.f60000g, this.f59999f);
            this.f59997d = this.f59995b;
        }
    }

    public void d() {
        ViewGroup viewGroup = this.f59998e;
        if (viewGroup != null) {
            viewGroup.removeView(this.f59997d);
            this.f59998e.addView(this.f59994a, this.f60000g, this.f59999f);
            this.f59997d = this.f59994a;
            this.f59995b = null;
            this.f59996c = -1;
        }
    }
}
