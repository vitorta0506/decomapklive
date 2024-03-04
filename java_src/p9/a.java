package p9;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.RechargeDialog;
import com.guochao.faceshow.aaspring.modulars.onevone.filter.FilterRechargeDialog;
import com.guochao.faceshow.aaspring.modulars.onevone.filter.FilterTipDialog;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.mine.model.MyWalletBean;
import com.guochao.faceshow.mine.view.MyWalletActivity;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.views.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: f  reason: collision with root package name */
    private static a f56750f;

    /* renamed from: a  reason: collision with root package name */
    private MyWalletBean f56751a;

    /* renamed from: b  reason: collision with root package name */
    private int f56752b;

    /* renamed from: c  reason: collision with root package name */
    private int f56753c;

    /* renamed from: d  reason: collision with root package name */
    private List<e> f56754d;

    /* renamed from: e  reason: collision with root package name */
    public ArrayMap<String, Boolean> f56755e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p9.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0613a extends com.guochao.faceshow.aaspring.base.http.callback.c<MyWalletBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f f56756a;

        C0613a(f fVar) {
            this.f56756a = fVar;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(MyWalletBean myWalletBean, @NonNull FaceCastBaseResponse<MyWalletBean> faceCastBaseResponse) {
            if (myWalletBean != null) {
                a.this.t(myWalletBean);
                f fVar = this.f56756a;
                if (fVar != null) {
                    fVar.onResponse();
                }
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<MyWalletBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LifecycleOwner f56758a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean[] f56759b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f56760c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f56761d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ f f56762e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ boolean f56763f;

        b(LifecycleOwner lifecycleOwner, boolean[] zArr, boolean z10, int i9, f fVar, boolean z11) {
            this.f56758a = lifecycleOwner;
            this.f56759b = zArr;
            this.f56760c = z10;
            this.f56761d = i9;
            this.f56762e = fVar;
            this.f56763f = z11;
        }

        @Override // java.lang.Runnable
        public void run() {
            Activity currTopActivity;
            LifecycleOwner lifecycleOwner = this.f56758a;
            if ((lifecycleOwner instanceof Activity) && (((Activity) lifecycleOwner).isFinishing() || ((Activity) this.f56758a).isDestroyed())) {
                return;
            }
            LifecycleOwner lifecycleOwner2 = this.f56758a;
            if (!(lifecycleOwner2 instanceof Fragment) || (!((Fragment) lifecycleOwner2).isDetached() && ((Fragment) this.f56758a).isAdded())) {
                boolean[] zArr = this.f56759b;
                if (zArr[0]) {
                    return;
                }
                zArr[0] = true;
                if ((!this.f56760c && a.this.f56751a.getDiamond().intValue() >= this.f56761d) || (this.f56760c && a.this.f56751a.getTokenNum() >= this.f56761d)) {
                    f fVar = this.f56762e;
                    if (fVar != null) {
                        fVar.onResponse();
                    }
                } else if (this.f56763f) {
                    f fVar2 = this.f56762e;
                    if (fVar2 != null) {
                        fVar2.onCustomRecharge();
                    }
                } else {
                    LifecycleOwner lifecycleOwner3 = this.f56758a;
                    if (lifecycleOwner3 instanceof Activity) {
                        currTopActivity = (Activity) lifecycleOwner3;
                    } else if (lifecycleOwner3 instanceof Fragment) {
                        currTopActivity = ((Fragment) lifecycleOwner3).getActivity();
                    } else {
                        currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
                    }
                    a.this.w(currTopActivity);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<MyWalletBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LifecycleOwner f56765a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean[] f56766b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Runnable f56767c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f56768d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f56769e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ f f56770f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ boolean f56771g;

        c(LifecycleOwner lifecycleOwner, boolean[] zArr, Runnable runnable, boolean z10, int i9, f fVar, boolean z11) {
            this.f56765a = lifecycleOwner;
            this.f56766b = zArr;
            this.f56767c = runnable;
            this.f56768d = z10;
            this.f56769e = i9;
            this.f56770f = fVar;
            this.f56771g = z11;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(MyWalletBean myWalletBean, @NonNull FaceCastBaseResponse<MyWalletBean> faceCastBaseResponse) {
            LifecycleOwner lifecycleOwner = this.f56765a;
            if ((lifecycleOwner instanceof Activity) && (((Activity) lifecycleOwner).isFinishing() || ((Activity) this.f56765a).isDestroyed())) {
                return;
            }
            LifecycleOwner lifecycleOwner2 = this.f56765a;
            if (((lifecycleOwner2 instanceof Fragment) && (((Fragment) lifecycleOwner2).isDetached() || !((Fragment) this.f56765a).isAdded())) || this.f56766b[0] || myWalletBean == null) {
                return;
            }
            a.this.u(myWalletBean, false);
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            Activity currTopActivity;
            super.onCompleted();
            HandlerGetter.getMainHandler().removeCallbacks(this.f56767c);
            this.f56766b[0] = true;
            if ((!this.f56768d && a.this.f56751a.getDiamond().intValue() >= this.f56769e) || (this.f56768d && a.this.f56751a.getTokenNum() >= this.f56769e)) {
                f fVar = this.f56770f;
                if (fVar != null) {
                    fVar.onResponse();
                }
            } else if (this.f56771g) {
                f fVar2 = this.f56770f;
                if (fVar2 != null) {
                    fVar2.onCustomRecharge();
                }
            } else {
                LifecycleOwner lifecycleOwner = this.f56765a;
                if (lifecycleOwner instanceof Activity) {
                    currTopActivity = (Activity) lifecycleOwner;
                } else if (lifecycleOwner instanceof Fragment) {
                    currTopActivity = ((Fragment) lifecycleOwner).getActivity();
                } else {
                    currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
                }
                a.this.w(currTopActivity);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<MyWalletBean> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f56773a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56774b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56775c;

        d(Activity activity, int i9, String str) {
            this.f56773a = activity;
            this.f56774b = i9;
            this.f56775c = str;
        }

        @Override // com.guochao.faceshow.views.e.a
        public void onClick(Dialog dialog, boolean z10) {
            dialog.dismiss();
            if (z10) {
                this.f56773a.startActivity(MyWalletActivity.e0(this.f56773a, this.f56774b, this.f56775c));
            }
        }

        @Override // com.guochao.faceshow.views.e.a
        public /* synthetic */ void onCreate(com.guochao.faceshow.views.e eVar) {
            com.guochao.faceshow.views.d.a(this, eVar);
        }
    }

    /* loaded from: classes3.dex */
    public interface e {
        void onCrystalsChanged(int i9);

        void onDiamondsChanged(int i9);
    }

    /* loaded from: classes3.dex */
    public interface f {
        void onCustomRecharge();

        void onResponse();
    }

    private a() {
        this.f56752b = (i.u().s() == null || i.u().s().getOneToOneGenderSelectPrice() == 0) ? 10 : i.u().s().getOneToOneGenderSelectPrice();
        this.f56753c = (i.u().s() == null || i.u().s().getRatioFace2face() == 0) ? 20 : i.u().s().getRatioFace2face();
        this.f56755e = new ArrayMap<>();
    }

    public static a g() {
        if (f56750f == null) {
            synchronized (a.class) {
                if (f56750f == null) {
                    f56750f = new a();
                }
            }
        }
        return f56750f;
    }

    public FilterRechargeDialog A(Activity activity) {
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return null;
        }
        return FilterRechargeDialog.b(activity);
    }

    public void B(int i9) {
        C(i9, true);
    }

    public void C(int i9, boolean z10) {
        MyWalletBean e10 = g().e();
        if (i9 >= 0) {
            try {
                e10.setDiamond(Integer.valueOf(i9));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        u(e10, z10);
    }

    public void D(int i9) {
        MyWalletBean e10 = g().e();
        if (i9 >= 0) {
            e10.setTokenNum(i9);
        }
    }

    public int b(int i9) {
        int intValue = e().getDiamond().intValue() + i9;
        B(intValue);
        return intValue;
    }

    public void c(e eVar) {
        if (this.f56754d == null) {
            this.f56754d = new ArrayList();
        }
        this.f56754d.add(eVar);
    }

    public int d(int i9) {
        if (m(i9)) {
            int max = Math.max(e().getDiamond().intValue() - i9, 0);
            B(max);
            return max;
        }
        return -1;
    }

    public MyWalletBean e() {
        if (this.f56751a == null) {
            this.f56751a = new MyWalletBean();
        }
        return this.f56751a;
    }

    public int f() {
        return e().getDiamond().intValue();
    }

    public List<e> h() {
        return this.f56754d;
    }

    public int i() {
        return this.f56752b;
    }

    public boolean j() {
        return this.f56751a != null && g().f() >= i.u().s().getAudioDiamond();
    }

    public boolean k() {
        return this.f56751a != null && g().f() >= this.f56752b;
    }

    public boolean l() {
        return this.f56751a != null && g().f() >= i.u().s().getVideoDiamond();
    }

    public boolean m(int i9) {
        return e().getDiamond().intValue() >= i9;
    }

    public boolean n(Context context) {
        if (this.f56755e.get(context.getClass().getName()) == null) {
            return false;
        }
        return this.f56755e.get(context.getClass().getName()).booleanValue();
    }

    public void o() {
        refreshWalletData(null);
    }

    public void p(LifecycleOwner lifecycleOwner, int i9, boolean z10, f fVar) {
        q(lifecycleOwner, i9, z10, false, fVar);
    }

    public void q(LifecycleOwner lifecycleOwner, int i9, boolean z10, boolean z11, f fVar) {
        if ((!z10 && this.f56751a.getDiamond().intValue() >= i9) || (z10 && this.f56751a.getTokenNum() >= i9)) {
            fVar.onResponse();
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(Contants.USER_ID, b8.e.g().getUserId());
        boolean[] zArr = new boolean[1];
        b bVar = new b(lifecycleOwner, zArr, z10, i9, fVar, z11);
        HandlerGetter.getMainHandler().postDelayed(bVar, 2000L);
        new PostRequest(Contants.MY_WALLET_DATA).E(hashMap).I(3).M(new c(lifecycleOwner, zArr, bVar, z10, i9, fVar, z11));
    }

    public void r(e eVar) {
        List<e> list = this.f56754d;
        if (list != null) {
            list.remove(eVar);
        }
    }

    public void refreshWalletData(f fVar) {
        HashMap hashMap = new HashMap();
        hashMap.put(Contants.USER_ID, b8.e.g().getUserId());
        new PostRequest(Contants.MY_WALLET_DATA).E(hashMap).I(3).M(new C0613a(fVar));
    }

    public void s() {
        BaseApplication baseApplication = BaseApplication.getInstance();
        SpUtils.setBool(baseApplication, b8.e.g().getUserId() + FilterTipDialog.class.getSimpleName(), true);
    }

    public void t(MyWalletBean myWalletBean) {
        u(myWalletBean, true);
    }

    public void u(MyWalletBean myWalletBean, boolean z10) {
        if (myWalletBean == null) {
            this.f56751a = new MyWalletBean();
        } else {
            this.f56751a = myWalletBean;
            SpUtils.setInt(BaseApplication.getInstance(), Contants.FB, (int) myWalletBean.getAvailableBalance());
        }
        if (!z10 || this.f56754d == null) {
            return;
        }
        for (int i9 = 0; i9 < this.f56754d.size(); i9++) {
            this.f56754d.get(i9).onDiamondsChanged(this.f56751a.getDiamond().intValue());
        }
    }

    public FilterTipDialog v(Activity activity) {
        if (activity != null) {
            BaseApplication baseApplication = BaseApplication.getInstance();
            if (SpUtils.getBool(baseApplication, b8.e.g().getUserId() + FilterTipDialog.class.getSimpleName(), false)) {
                return null;
            }
        }
        return FilterTipDialog.b(activity);
    }

    public void w(Activity activity) {
        x(activity, 1);
    }

    public void x(Activity activity, int i9) {
        y(activity, i9, null);
    }

    public void y(Activity activity, int i9, @Nullable String str) {
        if (activity instanceof FragmentActivity) {
            RechargeDialog.showDialog(((FragmentActivity) activity).getSupportFragmentManager(), Integer.valueOf(i9), 0);
        } else {
            new com.guochao.faceshow.views.e(activity, new d(activity, i9, str)).b(activity.getString(R.string.charge_notifi)).l().show();
        }
    }

    public void z(Activity activity, String str) {
        y(activity, 1, str);
    }
}
