package lb;

import android.view.View;
import android.widget.LinearLayout;
import com.guochao.faceshow.views.wheelview.WheelView;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private List<View> f54257a;

    /* renamed from: b  reason: collision with root package name */
    private List<View> f54258b;

    /* renamed from: c  reason: collision with root package name */
    private WheelView f54259c;

    public e(WheelView wheelView) {
        this.f54259c = wheelView;
    }

    private List<View> a(View view, List<View> list) {
        if (list == null) {
            list = new LinkedList<>();
        }
        list.add(view);
        return list;
    }

    private View c(List<View> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        View view = list.get(0);
        list.remove(0);
        return view;
    }

    private void g(View view, int i9) {
        int b10 = this.f54259c.getViewAdapter().b();
        if ((i9 < 0 || i9 >= b10) && !this.f54259c.t()) {
            this.f54258b = a(view, this.f54258b);
            return;
        }
        while (i9 < 0) {
            i9 += b10;
        }
        int i10 = i9 % b10;
        this.f54257a = a(view, this.f54257a);
    }

    public void b() {
        List<View> list = this.f54257a;
        if (list != null) {
            list.clear();
        }
        List<View> list2 = this.f54258b;
        if (list2 != null) {
            list2.clear();
        }
    }

    public View d() {
        return c(this.f54258b);
    }

    public View e() {
        return c(this.f54257a);
    }

    public int f(LinearLayout linearLayout, int i9, a aVar) {
        int i10 = i9;
        int i11 = 0;
        while (i11 < linearLayout.getChildCount()) {
            if (aVar.a(i10)) {
                i11++;
            } else {
                g(linearLayout.getChildAt(i11), i10);
                linearLayout.removeViewAt(i11);
                if (i11 == 0) {
                    i9++;
                }
            }
            i10++;
        }
        return i9;
    }
}
