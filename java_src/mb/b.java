package mb;

import android.content.Context;
import android.graphics.Typeface;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public abstract class b extends a {

    /* renamed from: k  reason: collision with root package name */
    private static int f54937k = 24;

    /* renamed from: l  reason: collision with root package name */
    private static int f54938l = 16;

    /* renamed from: d  reason: collision with root package name */
    protected Context f54941d;

    /* renamed from: e  reason: collision with root package name */
    protected LayoutInflater f54942e;

    /* renamed from: f  reason: collision with root package name */
    protected int f54943f;

    /* renamed from: g  reason: collision with root package name */
    protected int f54944g;

    /* renamed from: h  reason: collision with root package name */
    protected int f54945h;

    /* renamed from: i  reason: collision with root package name */
    private int f54946i;

    /* renamed from: b  reason: collision with root package name */
    private int f54939b = -15724528;

    /* renamed from: c  reason: collision with root package name */
    private int f54940c = 24;

    /* renamed from: j  reason: collision with root package name */
    private ArrayList<View> f54947j = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: protected */
    public b(Context context, int i9, int i10, int i11, int i12, int i13) {
        this.f54946i = 0;
        this.f54941d = context;
        this.f54943f = i9;
        this.f54944g = i10;
        this.f54946i = i11;
        f54937k = i12;
        f54938l = i13;
        this.f54942e = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    private TextView g(View view, int i9) {
        if (i9 == 0) {
            try {
                if (view instanceof TextView) {
                    return (TextView) view;
                }
            } catch (ClassCastException e10) {
                Log.e("AbstractWheelAdapter", "You must supply a resource ID for a TextView");
                throw new IllegalStateException("AbstractWheelAdapter requires the resource ID to be a TextView", e10);
            }
        }
        if (i9 != 0) {
            return (TextView) view.findViewById(i9);
        }
        return null;
    }

    private View h(int i9, ViewGroup viewGroup) {
        if (i9 != -1) {
            if (i9 != 0) {
                return this.f54942e.inflate(i9, viewGroup, false);
            }
            return null;
        }
        return new TextView(this.f54941d);
    }

    @Override // mb.c
    public View a(int i9, View view, ViewGroup viewGroup) {
        if (i9 < 0 || i9 >= b()) {
            return null;
        }
        if (view == null) {
            view = h(this.f54943f, viewGroup);
        }
        TextView g10 = g(view, this.f54944g);
        if (!this.f54947j.contains(g10)) {
            this.f54947j.add(g10);
        }
        if (g10 != null) {
            CharSequence e10 = e(i9);
            if (e10 == null) {
                e10 = "";
            }
            g10.setText(e10);
            if (i9 == this.f54946i) {
                g10.setTextSize(f54937k);
            } else {
                g10.setTextSize(f54938l);
            }
            if (this.f54943f == -1) {
                d(g10);
            }
        }
        return view;
    }

    @Override // mb.c
    public View c(View view, ViewGroup viewGroup) {
        if (view == null) {
            view = h(this.f54945h, viewGroup);
        }
        if (this.f54945h == -1 && (view instanceof TextView)) {
            d((TextView) view);
        }
        return view;
    }

    protected void d(TextView textView) {
        textView.setTextColor(this.f54939b);
        textView.setGravity(17);
        textView.setTextSize(this.f54940c);
        textView.setLines(1);
        textView.setTypeface(Typeface.SANS_SERIF, 1);
    }

    protected abstract CharSequence e(int i9);

    public ArrayList<View> f() {
        return this.f54947j;
    }

    public void i(int i9) {
        this.f54944g = i9;
    }
}
