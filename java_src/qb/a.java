package qb;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.TextView;
import pb.e;
import pb.f;
/* loaded from: classes4.dex */
public class a implements f<TextView> {
    @Override // pb.f
    public /* synthetic */ float a() {
        return e.b(this);
    }

    @Override // pb.f
    public /* synthetic */ float c() {
        return e.c(this);
    }

    @Override // pb.f
    public /* synthetic */ int d() {
        return e.a(this);
    }

    @Override // pb.f
    public /* synthetic */ int e() {
        return e.d(this);
    }

    @Override // pb.f
    public /* synthetic */ int f() {
        return e.e(this);
    }

    @Override // pb.f
    /* renamed from: g */
    public TextView b(Context context) {
        TextView textView = new TextView(context);
        textView.setId(16908299);
        textView.setGravity(k(context));
        textView.setTextColor(j(context));
        textView.setTextSize(0, l(context));
        int i9 = i(context);
        int n9 = n(context);
        textView.setPaddingRelative(i9, n9, i9, n9);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView.setBackground(h(context));
        textView.setZ(m(context));
        return textView;
    }

    protected Drawable h(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-2013265920);
        gradientDrawable.setCornerRadius(TypedValue.applyDimension(1, 10.0f, context.getResources().getDisplayMetrics()));
        return gradientDrawable;
    }

    protected int i(Context context) {
        return (int) TypedValue.applyDimension(1, 24.0f, context.getResources().getDisplayMetrics());
    }

    protected int j(Context context) {
        return -285212673;
    }

    protected int k(Context context) {
        return 17;
    }

    protected float l(Context context) {
        return TypedValue.applyDimension(2, 14.0f, context.getResources().getDisplayMetrics());
    }

    protected float m(Context context) {
        return TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics());
    }

    protected int n(Context context) {
        return (int) TypedValue.applyDimension(1, 16.0f, context.getResources().getDisplayMetrics());
    }
}
