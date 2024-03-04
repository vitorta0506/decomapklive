package sd;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class b extends yd.b {

    /* renamed from: n  reason: collision with root package name */
    protected static final Region f57858n = new Region();

    /* renamed from: o  reason: collision with root package name */
    protected static final Region f57859o = new Region(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);

    /* renamed from: b  reason: collision with root package name */
    protected int f57860b = 1;

    /* renamed from: c  reason: collision with root package name */
    protected int f57861c = 1;

    /* renamed from: d  reason: collision with root package name */
    protected int f57862d = 0;

    /* renamed from: e  reason: collision with root package name */
    protected int f57863e = 0;

    /* renamed from: f  reason: collision with root package name */
    protected int f57864f;

    /* renamed from: g  reason: collision with root package name */
    protected int f57865g;

    /* renamed from: h  reason: collision with root package name */
    protected List<Path> f57866h;

    /* renamed from: i  reason: collision with root package name */
    protected List<Integer> f57867i;

    /* renamed from: j  reason: collision with root package name */
    protected List<Path> f57868j;

    /* renamed from: k  reason: collision with root package name */
    protected List<String> f57869k;

    /* renamed from: l  reason: collision with root package name */
    private Bitmap f57870l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f57871m;

    private void b(int i9, int i10) {
        Bitmap bitmap = this.f57870l;
        if (bitmap != null && i9 == bitmap.getWidth() && i10 == this.f57870l.getHeight()) {
            return;
        }
        this.f57870l = Bitmap.createBitmap(i9, i10, Bitmap.Config.ARGB_8888);
        this.f57871m = true;
    }

    private void d(Canvas canvas) {
        canvas.translate(-this.f57862d, -this.f57863e);
        if (this.f57866h != null) {
            for (int i9 = 0; i9 < this.f57866h.size(); i9++) {
                List<Integer> list = this.f57867i;
                if (list != null && i9 < list.size()) {
                    this.f60173a.setColor(this.f57867i.get(i9).intValue());
                }
                canvas.drawPath(this.f57866h.get(i9), this.f60173a);
            }
        }
    }

    public void c(int i9, int i10, int i11, int i12) {
        this.f57862d = i9;
        this.f57863e = i10;
        this.f57860b = i11;
        this.f57864f = i11;
        this.f57861c = i12;
        this.f57865g = i12;
        Rect bounds = getBounds();
        int i13 = bounds.left;
        int i14 = bounds.top;
        super.setBounds(i13, i14, i11 + i13, i12 + i14);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        if (this.f60173a.getAlpha() == 255) {
            canvas.save();
            canvas.translate(bounds.left - this.f57862d, bounds.top - this.f57863e);
            if (this.f57866h != null) {
                for (int i9 = 0; i9 < this.f57866h.size(); i9++) {
                    List<Integer> list = this.f57867i;
                    if (list != null && i9 < list.size()) {
                        this.f60173a.setColor(this.f57867i.get(i9).intValue());
                    }
                    canvas.drawPath(this.f57866h.get(i9), this.f60173a);
                }
                this.f60173a.setAlpha(255);
            }
            canvas.restore();
            return;
        }
        b(width, height);
        if (this.f57871m) {
            this.f57870l.eraseColor(0);
            d(new Canvas(this.f57870l));
            this.f57871m = false;
        }
        canvas.drawBitmap(this.f57870l, bounds.left, bounds.top, this.f60173a);
    }

    protected boolean e() {
        Integer num;
        Integer num2;
        Integer num3;
        int i9;
        List<Path> list = this.f57866h;
        Integer num4 = null;
        if (list != null) {
            Integer num5 = null;
            num2 = null;
            num3 = null;
            for (Path path : list) {
                Region region = f57858n;
                region.setPath(path, f57859o);
                Rect bounds = region.getBounds();
                num4 = Integer.valueOf(Math.min(num4 == null ? bounds.top : num4.intValue(), bounds.top));
                num5 = Integer.valueOf(Math.min(num5 == null ? bounds.left : num5.intValue(), bounds.left));
                num2 = Integer.valueOf(Math.max(num2 == null ? bounds.right : num2.intValue(), bounds.right));
                num3 = Integer.valueOf(Math.max(num3 == null ? bounds.bottom : num3.intValue(), bounds.bottom));
            }
            num = num4;
            num4 = num5;
        } else {
            num = null;
            num2 = null;
            num3 = null;
        }
        this.f57862d = num4 == null ? 0 : num4.intValue();
        this.f57863e = num == null ? 0 : num.intValue();
        this.f57860b = num2 == null ? 0 : num2.intValue() - this.f57862d;
        int intValue = num3 == null ? 0 : num3.intValue() - this.f57863e;
        this.f57861c = intValue;
        if (this.f57864f == 0) {
            this.f57864f = this.f57860b;
        }
        if (this.f57865g == 0) {
            this.f57865g = intValue;
        }
        Rect bounds2 = getBounds();
        int i10 = this.f57860b;
        if (i10 != 0 && (i9 = this.f57861c) != 0) {
            int i11 = bounds2.left;
            int i12 = bounds2.top;
            super.setBounds(i11, i12, i10 + i11, i9 + i12);
            return true;
        }
        if (this.f57864f == 0) {
            this.f57864f = 1;
        }
        if (this.f57865g == 0) {
            this.f57865g = 1;
        }
        this.f57861c = 1;
        this.f57860b = 1;
        return false;
    }

    public void f(int... iArr) {
        this.f57867i = new ArrayList();
        for (int i9 : iArr) {
            this.f57867i.add(Integer.valueOf(i9));
        }
    }

    public boolean g(String... strArr) {
        this.f57865g = 0;
        this.f57864f = 0;
        this.f57869k = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.f57868j = arrayList;
        this.f57866h = arrayList;
        for (String str : strArr) {
            this.f57869k.add(str);
            this.f57868j.add(a.d(str));
        }
        return e();
    }

    public void h(int i9) {
        Rect bounds = getBounds();
        float height = (i9 * 1.0f) / bounds.height();
        setBounds((int) (bounds.left * height), (int) (bounds.top * height), (int) (bounds.right * height), (int) (bounds.bottom * height));
    }

    public void i(int i9) {
        Rect bounds = getBounds();
        float width = (i9 * 1.0f) / bounds.width();
        setBounds((int) (bounds.left * width), (int) (bounds.top * width), (int) (bounds.right * width), (int) (bounds.bottom * width));
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i9, int i10, int i11, int i12) {
        int i13 = i11 - i9;
        int i14 = i12 - i10;
        List<Path> list = this.f57868j;
        if (list != null && list.size() > 0 && (i13 != this.f57860b || i14 != this.f57861c)) {
            int i15 = this.f57862d;
            int i16 = this.f57863e;
            float f10 = i13;
            float f11 = i14;
            this.f57866h = a.h((f10 * 1.0f) / this.f57864f, (f11 * 1.0f) / this.f57865g, this.f57868j, this.f57869k);
            if (e()) {
                return;
            }
            this.f57860b = i13;
            this.f57861c = i14;
            this.f57862d = (int) (((i15 * 1.0f) * f10) / this.f57864f);
            this.f57863e = (int) (((i16 * 1.0f) * f11) / this.f57865g);
            super.setBounds(i9, i10, i11, i12);
            return;
        }
        super.setBounds(i9, i10, i11, i12);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(@NonNull Rect rect) {
        setBounds(rect.left, rect.top, rect.right, rect.bottom);
    }
}
