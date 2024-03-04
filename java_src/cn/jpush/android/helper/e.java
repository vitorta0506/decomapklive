package cn.jpush.android.helper;

import android.app.Notification;
import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static int f3096a = -1;

    /* renamed from: b  reason: collision with root package name */
    private static int f3097b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static float f3098c = -1.0f;

    /* renamed from: d  reason: collision with root package name */
    private static float f3099d = -1.0f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface a {
        void a(View view);
    }

    public static int a() {
        return f3096a;
    }

    public static void a(Context context) {
        try {
            if (f3096a == -1 || f3097b == -1) {
                c(context);
                if (f3096a == -1 || f3097b == -1) {
                    b(context);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private static void a(View view, a aVar) {
        if (view == null || aVar == null) {
            return;
        }
        aVar.a(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i9 = 0; i9 < viewGroup.getChildCount(); i9++) {
                a(viewGroup.getChildAt(i9), aVar);
            }
        }
    }

    public static int b() {
        return f3097b;
    }

    private static void b(Context context) {
        Notification.Builder builder = new Notification.Builder(context);
        builder.setContentTitle("title");
        builder.setContentText("content");
        try {
            ViewGroup viewGroup = (ViewGroup) (Build.VERSION.SDK_INT >= 24 ? builder.createContentView() : builder.build().contentView).apply(context, new FrameLayout(context));
            Logger.d("NotificationStyleHelper", "begain fetch colors by internal , root view is :" + viewGroup);
            a(viewGroup, new a() { // from class: cn.jpush.android.helper.e.1
                @Override // cn.jpush.android.helper.e.a
                public void a(View view) {
                    if (view instanceof TextView) {
                        TextView textView = (TextView) view;
                        if ("title".equals(textView.getText().toString()) && e.f3096a == -1) {
                            int unused = e.f3096a = textView.getCurrentTextColor();
                            float unused2 = e.f3098c = textView.getTextSize();
                        }
                        if ("content".equals(textView.getText().toString()) && e.f3097b == -1) {
                            int unused3 = e.f3097b = textView.getCurrentTextColor();
                            float unused4 = e.f3099d = textView.getTextSize();
                        }
                    }
                }
            });
        } catch (Throwable th2) {
            Logger.e("NotificationStyleHelper", "getNotificationColorInternal error:" + th2.getMessage());
        }
    }

    public static float c() {
        return f3098c;
    }

    private static void c(Context context) {
        try {
            Notification.Builder builder = new Notification.Builder(context);
            builder.setContentTitle("title");
            builder.setContentText("content");
            int i9 = Build.VERSION.SDK_INT;
            builder.setSubText("subtext");
            ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate((i9 >= 24 ? builder.createContentView() : builder.build().contentView).getLayoutId(), (ViewGroup) null);
            Logger.d("NotificationStyleHelper", "begain fetch colors by compat, root view is :" + viewGroup);
            a(viewGroup, new a() { // from class: cn.jpush.android.helper.e.2
                @Override // cn.jpush.android.helper.e.a
                public void a(View view) {
                    if (view instanceof TextView) {
                        TextView textView = (TextView) view;
                        if ("title".equals(textView.getText().toString()) && e.f3096a == -1) {
                            int unused = e.f3096a = textView.getCurrentTextColor();
                            float unused2 = e.f3098c = textView.getTextSize();
                            Logger.d("NotificationStyleHelper", "title color is :" + e.f3096a);
                        }
                        if ("content".equals(textView.getText().toString()) && e.f3097b == -1) {
                            int unused3 = e.f3097b = textView.getCurrentTextColor();
                            float unused4 = e.f3099d = textView.getTextSize();
                            Logger.d("NotificationStyleHelper", "content color is :" + e.f3097b);
                        }
                    }
                }
            });
        } catch (Throwable th2) {
            Logger.e("NotificationStyleHelper", "getNotificationColorCompat error:" + th2.getMessage());
        }
    }

    public static float d() {
        return f3099d;
    }
}
