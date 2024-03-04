package ob;

import android.view.View;
import android.widget.TextView;
/* loaded from: classes4.dex */
public abstract class c implements pb.b {

    /* renamed from: a  reason: collision with root package name */
    private View f55563a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f55564b;

    /* renamed from: c  reason: collision with root package name */
    private int f55565c;

    /* renamed from: d  reason: collision with root package name */
    private int f55566d;

    /* renamed from: e  reason: collision with root package name */
    private int f55567e;

    /* renamed from: f  reason: collision with root package name */
    private int f55568f;

    /* renamed from: g  reason: collision with root package name */
    private float f55569g;

    /* renamed from: h  reason: collision with root package name */
    private float f55570h;

    /* renamed from: i  reason: collision with root package name */
    private int f55571i = 16973828;

    /* renamed from: j  reason: collision with root package name */
    private int f55572j = 2000;

    /* renamed from: k  reason: collision with root package name */
    private int f55573k = 3500;

    public /* synthetic */ TextView a(View view) {
        return pb.a.a(this, view);
    }

    public int b() {
        return this.f55571i;
    }

    public int c() {
        return this.f55566d;
    }

    public int d() {
        return this.f55565c;
    }

    public float e() {
        return this.f55569g;
    }

    public int f() {
        return this.f55573k;
    }

    public int g() {
        return this.f55572j;
    }

    public float h() {
        return this.f55570h;
    }

    public View i() {
        return this.f55563a;
    }

    public int j() {
        return this.f55567e;
    }

    public int k() {
        return this.f55568f;
    }

    @Override // pb.b
    public void setDuration(int i9) {
        this.f55566d = i9;
    }

    @Override // pb.b
    public void setGravity(int i9, int i10, int i11) {
        this.f55565c = i9;
        this.f55567e = i10;
        this.f55568f = i11;
    }

    @Override // pb.b
    public void setMargin(float f10, float f11) {
        this.f55569g = f10;
        this.f55570h = f11;
    }

    @Override // pb.b
    public void setText(CharSequence charSequence) {
        TextView textView = this.f55564b;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    @Override // pb.b
    public void setView(View view) {
        this.f55563a = view;
        if (view == null) {
            this.f55564b = null;
        } else {
            this.f55564b = a(view);
        }
    }
}
