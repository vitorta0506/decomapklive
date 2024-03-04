package androidx.constraintlayout.core.widgets;
/* loaded from: classes.dex */
public class Rectangle {
    public int height;
    public int width;

    /* renamed from: x  reason: collision with root package name */
    public int f826x;

    /* renamed from: y  reason: collision with root package name */
    public int f827y;

    public boolean contains(int i9, int i10) {
        int i11;
        int i12 = this.f826x;
        return i9 >= i12 && i9 < i12 + this.width && i10 >= (i11 = this.f827y) && i10 < i11 + this.height;
    }

    public int getCenterX() {
        return (this.f826x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f827y + this.height) / 2;
    }

    void grow(int i9, int i10) {
        this.f826x -= i9;
        this.f827y -= i10;
        this.width += i9 * 2;
        this.height += i10 * 2;
    }

    boolean intersects(Rectangle rectangle) {
        int i9;
        int i10;
        int i11 = this.f826x;
        int i12 = rectangle.f826x;
        return i11 >= i12 && i11 < i12 + rectangle.width && (i9 = this.f827y) >= (i10 = rectangle.f827y) && i9 < i10 + rectangle.height;
    }

    public void setBounds(int i9, int i10, int i11, int i12) {
        this.f826x = i9;
        this.f827y = i10;
        this.width = i11;
        this.height = i12;
    }
}
