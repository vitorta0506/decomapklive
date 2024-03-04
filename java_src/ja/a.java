package ja;

import android.content.Context;
import androidx.lifecycle.Observer;
import com.guochao.faceshow.aaspring.utils.MMKVUtils;
import com.guochao.faceshow.session.model.UserSessionModel;
import com.guochao.faceshow.session.viewmodel.UserSessionViewModel;
import com.guochao.faceshow.utils.HandlerGetter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static a f53175c;

    /* renamed from: a  reason: collision with root package name */
    private String f53176a;

    /* renamed from: b  reason: collision with root package name */
    HashMap<String, List<b>> f53177b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ja.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class RunnableC0540a implements Runnable {

        /* renamed from: ja.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0541a implements Observer<UserSessionModel> {
            C0541a() {
            }

            @Override // androidx.lifecycle.Observer
            /* renamed from: a */
            public void onChanged(UserSessionModel userSessionModel) {
                if (userSessionModel == null) {
                    a.this.f53176a = "user_guide";
                    return;
                }
                a aVar = a.this;
                aVar.f53176a = "user_guide" + userSessionModel.getUserId();
            }
        }

        RunnableC0540a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            UserSessionViewModel.instance().bind(null, new C0541a());
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void onDone(String str);
    }

    public static a b() {
        if (f53175c == null) {
            synchronized (a.class) {
                if (f53175c == null) {
                    f53175c = new a();
                }
            }
        }
        return f53175c;
    }

    public void c(Context context) {
        this.f53176a = "user_guide";
        HandlerGetter.runOnUIThread(new RunnableC0540a());
    }

    public void d(String str, b bVar) {
        List<b> list = this.f53177b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f53177b.put(str, list);
        }
        if (list.contains(bVar)) {
            return;
        }
        list.add(bVar);
    }

    public void e(String str) {
        if (f(str)) {
            MMKVUtils.putBoolean(this.f53176a, str, false);
            List<b> list = this.f53177b.get(str);
            if (list != null) {
                for (int i9 = 0; i9 < list.size(); i9++) {
                    list.get(i9).onDone(str);
                }
            }
        }
    }

    public boolean f(String str) {
        return MMKVUtils.getBoolean(this.f53176a, str, true);
    }

    public boolean g(String str) {
        boolean f10 = f(str);
        if (f10) {
            e(str);
        }
        return f10;
    }

    public void h(String str, b bVar) {
        List<b> list = this.f53177b.get(str);
        if (list == null) {
            return;
        }
        list.remove(bVar);
    }
}
