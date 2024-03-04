package pj;
/* loaded from: classes7.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    private i f56944a;

    protected abstract i a();

    public synchronized i b() {
        if (this.f56944a == null) {
            this.f56944a = a();
        }
        return this.f56944a;
    }
}
