package h6;
/* loaded from: classes2.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<T> f40554a;

    /* renamed from: b  reason: collision with root package name */
    private final T f40555b;

    public T a() {
        return this.f40555b;
    }

    public Class<T> b() {
        return this.f40554a;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f40554a, this.f40555b);
    }
}
