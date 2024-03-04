package h4;

import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.common.k;
/* loaded from: classes2.dex */
public interface a extends IInterface {

    /* renamed from: h4.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static abstract class AbstractBinderC0438a extends k implements a {
        public AbstractBinderC0438a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        @NonNull
        public static a f(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof a ? (a) queryLocalInterface : new c(iBinder);
        }
    }
}
