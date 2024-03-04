package cn.jiguang.internal;

import android.content.Context;
import android.os.Bundle;
import cn.jiguang.bg.b;
import cn.jiguang.bg.d;
/* loaded from: classes.dex */
public class JCoreInternalHelper {
    private static final String TAG = "JCoreInternalHelper";
    private static JCoreHelperAction jCoreHelperAction;
    private static final Object locker = new Object();
    private static volatile JCoreInternalHelper mJCoreBridge;

    private JCoreInternalHelper() {
    }

    public static JCoreInternalHelper getInstance() {
        if (mJCoreBridge == null) {
            synchronized (locker) {
                if (mJCoreBridge == null) {
                    mJCoreBridge = new JCoreInternalHelper();
                }
            }
        }
        return mJCoreBridge;
    }

    public Object commonMethod(final Context context, final String str, final Object obj) {
        JCoreHelperAction jCoreHelperAction2 = jCoreHelperAction;
        if (jCoreHelperAction2 != null) {
            return jCoreHelperAction2.onCommonMethod(context, str, obj);
        }
        d.a("ONCE_TASK", new b("JCoreInternalHelper#commonMethod") { // from class: cn.jiguang.internal.JCoreInternalHelper.3
            @Override // cn.jiguang.bg.b
            public void a() {
                try {
                    JCoreInternalHelper.this.initLoad(context);
                    JCoreInternalHelper.jCoreHelperAction.onCommonMethod(context, str, obj);
                } catch (Throwable th2) {
                    cn.jiguang.as.d.g(JCoreInternalHelper.TAG, "commonMethod e:" + th2);
                }
            }
        });
        return null;
    }

    public Bundle directHandle(final Context context, final String str, final String str2, final Bundle bundle) {
        JCoreHelperAction jCoreHelperAction2 = jCoreHelperAction;
        if (jCoreHelperAction2 != null) {
            return jCoreHelperAction2.directHandle(context, str, str2, bundle);
        }
        d.a("ONCE_TASK", new b("JCoreInternalHelper#directHandle") { // from class: cn.jiguang.internal.JCoreInternalHelper.2
            @Override // cn.jiguang.bg.b
            public void a() {
                try {
                    JCoreInternalHelper.this.initLoad(context);
                    JCoreInternalHelper.jCoreHelperAction.directHandle(context, str, str2, bundle);
                } catch (Throwable th2) {
                    cn.jiguang.as.d.g(JCoreInternalHelper.TAG, "directHandle e:" + th2);
                }
            }
        });
        return new Bundle();
    }

    public synchronized void initLoad(Context context) {
        JCoreHelperAction jCoreHelperAction2 = jCoreHelperAction;
        if (jCoreHelperAction2 != null) {
            return;
        }
        if (context == null) {
            return;
        }
        if (jCoreHelperAction2 == null) {
            cn.jiguang.as.d.c(TAG, "load action by local");
            jCoreHelperAction = new cn.jiguang.c.b();
        }
    }

    public Object onEvent(final Context context, final String str, final int i9, boolean z10, final String str2, final Bundle bundle, final Object... objArr) {
        JCoreHelperAction jCoreHelperAction2 = jCoreHelperAction;
        if (jCoreHelperAction2 != null) {
            return jCoreHelperAction2.onEvent(context, str, i9, str2, bundle, objArr);
        }
        if (z10) {
            d.a("ONCE_TASK", new b("JCoreInternalHelper#onEvent") { // from class: cn.jiguang.internal.JCoreInternalHelper.1
                @Override // cn.jiguang.bg.b
                public void a() {
                    try {
                        JCoreInternalHelper.this.initLoad(context);
                        JCoreInternalHelper.jCoreHelperAction.onEvent(context, str, i9, str2, bundle, objArr);
                    } catch (Throwable th2) {
                        cn.jiguang.as.d.g(JCoreInternalHelper.TAG, "onEvent e:" + th2);
                    }
                }
            });
            return null;
        }
        return new cn.jiguang.c.b().onEvent(context, str, i9, str2, bundle, objArr);
    }
}
