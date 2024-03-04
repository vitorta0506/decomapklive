package jb;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.faceshow.utils.LOCAL_EVENT_MSG;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private static a f53180e;

    /* renamed from: a  reason: collision with root package name */
    private b f53181a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f53182b = false;

    /* renamed from: c  reason: collision with root package name */
    private String f53183c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f53184d = LOCAL_EVENT_MSG.APP_IN_UN_DEFINED;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: jb.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class RunnableC0542a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f53185a;

        RunnableC0542a(Activity activity) {
            this.f53185a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f53185a.isDestroyed() && !this.f53185a.isFinishing()) {
                a.this.f53181a.b();
                return;
            }
            a.this.f53181a.e(true);
            a.this.f53181a.d(true);
        }
    }

    private a() {
    }

    private void b() {
        this.f53182b = false;
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity == null || currTopActivity.isDestroyed() || currTopActivity.isFinishing()) {
            return;
        }
        this.f53181a.g();
        HandlerGetter.getMainHandler().postDelayed(new RunnableC0542a(currTopActivity), 3000L);
    }

    public static a c() {
        if (f53180e == null) {
            synchronized (a.class) {
                if (f53180e == null) {
                    f53180e = new a();
                }
            }
        }
        return f53180e;
    }

    public void d(String str) {
        if (TextUtils.isEmpty(str) || this.f53183c.equals(str)) {
            return;
        }
        this.f53183c = str;
        this.f53182b = true;
        Activity currTopActivity = BaseApplication.getInstance().getCurrTopActivity();
        if (currTopActivity == null || currTopActivity.isFinishing() || currTopActivity.isDestroyed()) {
            return;
        }
        if (this.f53181a == null) {
            this.f53181a = new b();
        }
        if (this.f53181a.c()) {
            this.f53181a.b();
        }
        this.f53181a.d(false);
        this.f53181a.e(false);
        this.f53181a.a(currTopActivity);
        this.f53181a.f(str);
        if (LOCAL_EVENT_MSG.APP_IN_BACKGROUND.endsWith(this.f53184d)) {
            return;
        }
        b();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventBus(Intent intent) {
        if (intent == null) {
            return;
        }
        if (LOCAL_EVENT_MSG.APP_IN_BACKGROUND.equals(intent.getAction())) {
            this.f53184d = LOCAL_EVENT_MSG.APP_IN_BACKGROUND;
        } else if (LOCAL_EVENT_MSG.APP_IN_FORGROUND.equals(intent.getAction())) {
            this.f53184d = LOCAL_EVENT_MSG.APP_IN_FORGROUND;
            if (!this.f53182b || this.f53181a == null) {
                return;
            }
            b();
        }
    }
}
