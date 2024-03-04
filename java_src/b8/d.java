package b8;

import android.content.Context;
import androidx.annotation.NonNull;
import b8.a;
import com.guochao.faceshow.bean.UserBean;
/* loaded from: classes3.dex */
public interface d<T extends b8.a> {

    /* loaded from: classes3.dex */
    public interface a {
        void onLogout();

        void onUserChanged(UserBean userBean, UserBean userBean2);

        void onUserChanged(UserBean userBean, UserBean userBean2, boolean z10, boolean z11, boolean z12);
    }

    void a(T t10, boolean z10);

    String b();

    @NonNull
    T c();

    void d(T t10, boolean z10, boolean z11, boolean z12);

    String getToken();

    String getUserId();

    String getUserName();

    void init(Context context);

    void registerOnUserChangedListener(a aVar);

    void unregisterOnUserChangedListener(a aVar);
}
