package b7;
/* loaded from: classes.dex */
public final /* synthetic */ class a {
    public static /* synthetic */ int a(double d10) {
        long doubleToLongBits = Double.doubleToLongBits(d10);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }
}
