package t1;
/* loaded from: classes.dex */
public final class b {
    public static <TInput, TResult, TException extends Throwable> TResult a(int i9, TInput tinput, a<TInput, TResult, TException> aVar, c<TInput, TResult> cVar) throws Throwable {
        TResult apply;
        if (i9 < 1) {
            return aVar.apply(tinput);
        }
        do {
            apply = aVar.apply(tinput);
            tinput = cVar.a(tinput, apply);
            if (tinput == null) {
                break;
            }
            i9--;
        } while (i9 >= 1);
        return apply;
    }
}
