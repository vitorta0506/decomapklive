package si;

import kotlin.text.Typography;
/* loaded from: classes7.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final int f57937a;

    /* renamed from: b  reason: collision with root package name */
    private final int f57938b;

    /* renamed from: c  reason: collision with root package name */
    private int f57939c;

    public g(int i9, int i10) {
        if (i9 < 0) {
            throw new IndexOutOfBoundsException("Lower bound cannot be negative");
        }
        if (i9 <= i10) {
            this.f57937a = i9;
            this.f57938b = i10;
            this.f57939c = i9;
            return;
        }
        throw new IndexOutOfBoundsException("Lower bound cannot be greater then upper bound");
    }

    public boolean a() {
        return this.f57939c >= this.f57938b;
    }

    public int b() {
        return this.f57939c;
    }

    public int c() {
        return this.f57938b;
    }

    public void d(int i9) {
        if (i9 >= this.f57937a) {
            if (i9 <= this.f57938b) {
                this.f57939c = i9;
                return;
            }
            throw new IndexOutOfBoundsException("pos: " + i9 + " > upperBound: " + this.f57938b);
        }
        throw new IndexOutOfBoundsException("pos: " + i9 + " < lowerBound: " + this.f57937a);
    }

    public String toString() {
        return '[' + Integer.toString(this.f57937a) + Typography.greater + Integer.toString(this.f57939c) + Typography.greater + Integer.toString(this.f57938b) + ']';
    }
}
