package b8;

import android.content.Context;
import androidx.annotation.NonNull;
import b8.d;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.manager.user.UserModelUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.AppContentFilter;
import com.guochao.faceshow.utils.Contants;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p9.a;
/* loaded from: classes3.dex */
public class e implements d<UserBean> {

    /* renamed from: d  reason: collision with root package name */
    private static e f1194d;

    /* renamed from: a  reason: collision with root package name */
    UserBean f1195a;

    /* renamed from: b  reason: collision with root package name */
    private Context f1196b;

    /* renamed from: c  reason: collision with root package name */
    private final List<d.a> f1197c = new CopyOnWriteArrayList();

    /* loaded from: classes3.dex */
    class a implements a.e {
        a() {
        }

        @Override // p9.a.e
        public /* synthetic */ void onCrystalsChanged(int i9) {
            p9.b.a(this, i9);
        }

        @Override // p9.a.e
        public void onDiamondsChanged(int i9) {
            UserBean.UserInfoDetail userInfoDetail;
            UserBean userBean = e.this.f1195a;
            if (userBean == null || (userInfoDetail = userBean.userInfoDetail) == null) {
                return;
            }
            userInfoDetail.diamond = i9;
        }
    }

    private int e(Calendar calendar, Calendar calendar2) {
        int i9 = 0;
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar2.set(11, 1);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        while (calendar2.before(calendar)) {
            calendar2.add(6, 1);
            i9++;
        }
        return i9;
    }

    public static d<UserBean> g() {
        if (f1194d == null) {
            synchronized (e.class) {
                if (f1194d == null) {
                    f1194d = new e();
                }
            }
        }
        return f1194d;
    }

    public static void h() {
        UserBean c10 = g().c();
        if (c10.getRecharged() == 1) {
            return;
        }
        c10.setRecharged(1);
        SpUtils.setInt(BaseApplication.getInstance(), Contants.RECHARGED, c10.getRecharged());
        g().a(c10, false);
    }

    @Override // b8.d
    public /* synthetic */ void a(UserBean userBean, boolean z10) {
        b.a(this, userBean, z10);
    }

    @Override // b8.d
    public String b() {
        return c().getAvatar();
    }

    @Override // b8.d
    @NonNull
    /* renamed from: f */
    public UserBean c() {
        UserBean userBean = this.f1195a;
        if (userBean == null) {
            UserBean c10 = com.guochao.faceshow.aaspring.modulars.login.utils.e.c(this.f1196b);
            this.f1195a = c10;
            return c10;
        }
        return userBean;
    }

    @Override // b8.d
    public String getToken() {
        return c().getToken();
    }

    @Override // b8.d
    public String getUserId() {
        return c().getUserId();
    }

    @Override // b8.d
    public String getUserName() {
        return c().getUserName();
    }

    @Override // b8.d
    /* renamed from: i */
    public void d(UserBean userBean, boolean z10, boolean z11, boolean z12) {
        UserSessionViewModel.instance().updateUserSession(UserModelUtils.INSTANCE.convert(userBean));
        if (userBean != null) {
            LogUtils.i("FaceCast:LoginManagerImpltoken", userBean.getToken());
            SpUtils.setStr(this.f1196b, Contants.USER_TOKEN, userBean.getToken());
            com.guochao.faceshow.aaspring.modulars.login.utils.e.h(this.f1196b, userBean, userBean.getToken(), z11);
        }
        z7.a.a().c(userBean);
        if (userBean == null) {
            for (d.a aVar : this.f1197c) {
                aVar.onLogout();
            }
        } else {
            for (d.a aVar2 : this.f1197c) {
                aVar2.onUserChanged(this.f1195a, userBean, z10, z11, z12);
            }
        }
        long selfLong = SpUtils.getSelfLong("last_login_time", -1L);
        SpUtils.setSelfLong("last_login_time", System.currentTimeMillis());
        if (selfLong == -1) {
            SpUtils.setSelfInt("last_login_days", 1);
        } else {
            int selfInt = SpUtils.getSelfInt("last_login_days", 1);
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(selfLong);
            if (calendar.getTimeInMillis() - selfLong >= 172800000) {
                SpUtils.setSelfInt("last_login_days", 1);
            } else {
                int e10 = e(calendar, calendar2);
                if (e10 == 1) {
                    SpUtils.setSelfInt("last_login_days", selfInt + 1);
                } else if (e10 != 0) {
                    SpUtils.setSelfInt("last_login_days", 1);
                }
            }
        }
        this.f1195a = userBean;
        if (userBean != null) {
            BaseFaceCastRequest.f16244w = userBean.userId;
            BaseFaceCastRequest.f16245x = userBean.token;
            LogUtils.i("FaceCast:LoginManagerImplmCurrentUsertoken", userBean.getToken());
        }
        AppContentFilter.INSTANCE.setCurrentUser(this.f1195a);
    }

    @Override // b8.d
    public void init(Context context) {
        this.f1196b = context;
        p9.a.g().c(new a());
    }

    @Override // b8.d
    public void registerOnUserChangedListener(d.a aVar) {
        this.f1197c.add(aVar);
    }

    @Override // b8.d
    public void unregisterOnUserChangedListener(d.a aVar) {
        this.f1197c.remove(aVar);
    }
}
