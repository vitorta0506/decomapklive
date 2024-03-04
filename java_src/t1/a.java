package t1;

import java.lang.Throwable;
/* loaded from: classes.dex */
public interface a<TInput, TResult, TException extends Throwable> {
    TResult apply(TInput tinput) throws Throwable;
}
