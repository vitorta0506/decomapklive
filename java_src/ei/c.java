package ei;

import io.reactivex.k;
import io.reactivex.r;
/* loaded from: classes7.dex */
public abstract class c<T> extends k<T> implements r<T> {
    public final c<T> c() {
        return this instanceof b ? this : new b(this);
    }
}
