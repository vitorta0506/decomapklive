package ae;
/* loaded from: classes4.dex */
public class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public long f741a;

    /* renamed from: b  reason: collision with root package name */
    private Runnable f742b;

    public a(Runnable runnable, long j10) {
        this.f742b = runnable;
        this.f741a = j10;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Runnable runnable = this.f742b;
            if (runnable != null) {
                runnable.run();
                this.f742b = null;
            }
        } catch (Throwable th2) {
            if (th2 instanceof NoClassDefFoundError) {
                return;
            }
            th2.printStackTrace();
        }
    }
}
