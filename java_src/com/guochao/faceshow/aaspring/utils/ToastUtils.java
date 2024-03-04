package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.DrawableRes;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.DensityUtil;
import com.guochao.faceshow.utils.HandlerGetter;
import com.guochao.lib_base.R$id;
import com.guochao.lib_base.R$layout;
import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001#B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000bH\u0002J*\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0016H\u0002J,\u0010\u0019\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\r2\b\b\u0002\u0010\u001a\u001a\u00020\u0016H\u0002J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\f\u001a\u00020\rH\u0007J(\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0001\u0010\u001c\u001a\u00020\u00162\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J2\u0010 \u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u0018\u001a\u00020\u00162\b\b\u0002\u0010\u001a\u001a\u00020\u0016H\u0007J(\u0010 \u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010!\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u0016H\u0007J2\u0010\"\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u0018\u001a\u00020\u00162\b\b\u0002\u0010\u001a\u001a\u00020\u0016H\u0007J(\u0010\"\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010!\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u0016H\u0007R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/ToastUtils;", "", "()V", "isMainThread", "", "()Z", "sField_TN", "Ljava/lang/reflect/Field;", "sField_TN_Handler", "compatMode", "debug", "Landroid/widget/Toast;", "msg", "", "debugToast", "context", "Landroid/content/Context;", "hook", "", "toast", "realShowLiveToast", "drawableId", "", "message", "duration", "realShowToast", "gravity", "showCenterToast", "iconId", "showLiveToast", "str", "", "showMVPToast", "resId", "showToast", "SafelyHandlerWarpper", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ToastUtils {
    @NotNull
    public static final ToastUtils INSTANCE = new ToastUtils();
    @Nullable
    private static Field sField_TN;
    @Nullable
    private static Field sField_TN_Handler;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/ToastUtils$SafelyHandlerWarpper;", "Landroid/os/Handler;", "impl", "(Landroid/os/Handler;)V", "handleMessage", "", "msg", "Landroid/os/Message;", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class SafelyHandlerWarpper extends Handler {
        @NotNull
        private final Handler impl;

        public SafelyHandlerWarpper(@NotNull Handler impl) {
            Intrinsics.checkNotNullParameter(impl, "impl");
            this.impl = impl;
        }

        @Override // android.os.Handler
        public void handleMessage(@NotNull Message msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            try {
                this.impl.handleMessage(msg);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                Field declaredField = Toast.class.getDeclaredField("mTN");
                sField_TN = declaredField;
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                }
                Field field = sField_TN;
                Class<?> type = field != null ? field.getType() : null;
                Intrinsics.checkNotNull(type);
                Field declaredField2 = type.getDeclaredField("mHandler");
                sField_TN_Handler = declaredField2;
                if (declaredField2 == null) {
                    return;
                }
                declaredField2.setAccessible(true);
            } catch (Exception unused) {
            }
        }
    }

    private ToastUtils() {
    }

    private final boolean compatMode() {
        if (!NotificationManagerCompat.from(GCApplication.app()).areNotificationsEnabled()) {
            String str = Build.MODEL;
            if (Intrinsics.areEqual(str, "INE-AL00") || Intrinsics.areEqual(str, "moto g(7) power") || Intrinsics.areEqual(str, "XT1710-08")) {
                return true;
            }
        }
        return false;
    }

    @JvmStatic
    @Nullable
    public static final Toast debug(@NotNull CharSequence msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return debugToast(GCApplication.app(), msg);
    }

    @JvmStatic
    @Nullable
    public static final Toast debugToast(@Nullable Context context, @NotNull CharSequence msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return null;
    }

    private final void hook(Toast toast) {
        try {
            Field field = sField_TN;
            Intrinsics.checkNotNull(field);
            Object obj = field.get(toast);
            Field field2 = sField_TN_Handler;
            Intrinsics.checkNotNull(field2);
            Object obj2 = field2.get(obj);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type android.os.Handler");
            Field field3 = sField_TN_Handler;
            Intrinsics.checkNotNull(field3);
            field3.set(obj, new SafelyHandlerWarpper((Handler) obj2));
        } catch (Exception unused) {
        }
    }

    private final boolean isMainThread() {
        return Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper());
    }

    private final Toast realShowLiveToast(Context context, @DrawableRes int i9, CharSequence charSequence, int i10) {
        Toast toast = new Toast(context);
        View inflate = LayoutInflater.from(context).inflate(R$layout.transient_notification, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(16908299);
        if (i9 != 0) {
            TextDrawableUtil.addDrawableTop(textView, i9);
            textView.getLayoutParams().width = DensityUtil.dp2px(context, 200.0f);
            textView.setPadding(DensityUtil.dp2px(context, 21.0f), DensityUtil.dp2px(context, 23.0f), DensityUtil.dp2px(context, 21.0f), DensityUtil.dp2px(context, 23.0f));
            textView.setTextSize(2, 13.0f);
            textView.setCompoundDrawablePadding(DensityUtil.dp2px(context, 16.0f));
            textView.setTextColor(ContextCompat.getColor(context, 17170443));
        }
        textView.setText(charSequence);
        toast.setDuration(i10);
        toast.setView(inflate);
        textView.setGravity(17);
        if (i9 == 0) {
            toast.setGravity(48, 0, (int) ((GCApplication.app().getResources().getDisplayMetrics().heightPixels * 13.0d) / 100));
        } else {
            toast.setGravity(17, 0, 0);
        }
        if (Build.VERSION.SDK_INT == 25) {
            hook(toast);
        }
        try {
            toast.show();
        } catch (Exception unused) {
        }
        return toast;
    }

    private final Toast realShowToast(Context context, int i9, CharSequence charSequence, int i10) {
        if (context == null) {
            context = GCApplication.app();
        }
        Toast toast = new Toast(context);
        View inflate = LayoutInflater.from(context).inflate(R$layout.transient_notification, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(16908299);
        textView.setText(charSequence);
        toast.setDuration(i9);
        toast.setView(inflate);
        textView.setGravity(17);
        toast.setGravity(i10, 0, i10 == 17 ? 0 : (int) ((GCApplication.app().getResources().getDisplayMetrics().heightPixels * 13.0d) / 100));
        if (Build.VERSION.SDK_INT == 25) {
            hook(toast);
        }
        try {
            toast.show();
        } catch (Exception unused) {
        }
        return toast;
    }

    static /* synthetic */ Toast realShowToast$default(ToastUtils toastUtils, Context context, int i9, CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            i10 = 48;
        }
        return toastUtils.realShowToast(context, i9, charSequence, i10);
    }

    @JvmStatic
    @Nullable
    public static final Toast showCenterToast(@Nullable Context context, @DrawableRes int i9, @Nullable CharSequence charSequence) {
        ToastUtils toastUtils = INSTANCE;
        if (toastUtils.compatMode()) {
            ob.m.e(17);
            ob.m.l(charSequence);
            return null;
        }
        if (context == null) {
            context = GCApplication.app();
        }
        Toast toast = new Toast(context);
        View inflate = LayoutInflater.from(context).inflate(R$layout.layout_center_toast, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(16908299);
        textView.setText(charSequence);
        ((ImageView) inflate.findViewById(R$id.icon)).setImageResource(i9);
        toast.setDuration(1);
        toast.setView(inflate);
        textView.setGravity(17);
        toast.setGravity(17, 0, 0);
        if (Build.VERSION.SDK_INT == 25) {
            toastUtils.hook(toast);
        }
        try {
            toast.show();
        } catch (Exception unused) {
        }
        return toast;
    }

    @JvmStatic
    public static final void showLiveToast(@NotNull final Context context, @DrawableRes final int i9, @NotNull final String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(str, "str");
        ToastUtils toastUtils = INSTANCE;
        if (toastUtils.isMainThread()) {
            toastUtils.realShowLiveToast(context, i9, str, 1);
        } else {
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.s
                @Override // java.lang.Runnable
                public final void run() {
                    ToastUtils.m595showLiveToast$lambda1(context, i9, str);
                }
            });
        }
    }

    /* renamed from: showLiveToast$lambda-1 */
    public static final void m595showLiveToast$lambda1(Context context, int i9, String str) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(str, "$str");
        INSTANCE.realShowLiveToast(context, i9, str, 1);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showMVPToast(int i9) {
        return showMVPToast$default(null, i9, 0, 5, null);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showMVPToast(@Nullable Context context, int i9) {
        return showMVPToast$default(context, i9, 0, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showMVPToast(@Nullable Context context, int i9, int i10) {
        ob.m.f(48, 0, DensityUtil.dp2px(210.0f));
        ob.m.j(i9);
        return null;
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showMVPToast(@Nullable Context context, @NotNull CharSequence msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return showMVPToast$default(context, msg, 0, 0, 12, null);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showMVPToast(@Nullable Context context, @NotNull CharSequence msg, int i9) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return showMVPToast$default(context, msg, i9, 0, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showMVPToast(@NotNull CharSequence msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return showMVPToast$default(null, msg, 0, 0, 13, null);
    }

    public static /* synthetic */ Toast showMVPToast$default(Context context, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            context = null;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return showMVPToast(context, i9, i10);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showToast(int i9) {
        return showToast$default(null, i9, 0, 5, null);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showToast(@Nullable Context context, int i9) {
        return showToast$default(context, i9, 0, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showToast(@Nullable Context context, int i9, int i10) {
        if (context == null) {
            context = GCApplication.app();
        }
        Context context2 = context;
        if (INSTANCE.compatMode()) {
            ob.m.f(48, 0, (int) ((GCApplication.app().getResources().getDisplayMetrics().heightPixels * 13.0d) / 100));
            ob.m.j(i9);
            return null;
        }
        Intrinsics.checkNotNull(context2);
        String string = context2.getString(i9);
        Intrinsics.checkNotNullExpressionValue(string, "ctx!!.getString(resId)");
        return showToast$default(context2, string, i10, 0, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showToast(@Nullable Context context, @NotNull CharSequence msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return showToast$default(context, msg, 0, 0, 12, null);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showToast(@Nullable Context context, @NotNull CharSequence msg, int i9) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return showToast$default(context, msg, i9, 0, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showToast(@NotNull CharSequence msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return showToast$default(null, msg, 0, 0, 13, null);
    }

    public static /* synthetic */ Toast showToast$default(Context context, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            context = null;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return showToast(context, i9, i10);
    }

    /* renamed from: showToast$lambda-0 */
    public static final void m596showToast$lambda0(Context context, int i9, CharSequence msg, int i10) {
        Intrinsics.checkNotNullParameter(msg, "$msg");
        INSTANCE.realShowToast(context, i9, msg, i10);
    }

    public static /* synthetic */ Toast showMVPToast$default(Context context, CharSequence charSequence, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            context = null;
        }
        if ((i11 & 4) != 0) {
            i9 = 0;
        }
        if ((i11 & 8) != 0) {
            i10 = 48;
        }
        return showMVPToast(context, charSequence, i9, i10);
    }

    public static /* synthetic */ Toast showToast$default(Context context, CharSequence charSequence, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            context = null;
        }
        if ((i11 & 4) != 0) {
            i9 = 0;
        }
        if ((i11 & 8) != 0) {
            i10 = 48;
        }
        return showToast(context, charSequence, i9, i10);
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showMVPToast(@Nullable Context context, @NotNull CharSequence msg, int i9, int i10) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        ob.m.f(i10, 0, DensityUtil.dp2px(210.0f));
        ob.m.l(msg);
        return null;
    }

    @JvmStatic
    @JvmOverloads
    @Nullable
    public static final Toast showToast(@Nullable final Context context, @NotNull final CharSequence msg, final int i9, final int i10) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        ToastUtils toastUtils = INSTANCE;
        if (toastUtils.compatMode()) {
            ob.m.f(i10, 0, (int) ((GCApplication.app().getResources().getDisplayMetrics().heightPixels * 13.0d) / 100));
            ob.m.l(msg);
            return null;
        } else if (toastUtils.isMainThread()) {
            return toastUtils.realShowToast(context, i9, msg, i10);
        } else {
            HandlerGetter.getMainHandler().post(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.r
                @Override // java.lang.Runnable
                public final void run() {
                    ToastUtils.m596showToast$lambda0(context, i9, msg, i10);
                }
            });
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Toast showCenterToast(@Nullable Context context, @NotNull CharSequence msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        ToastUtils toastUtils = INSTANCE;
        if (toastUtils.compatMode()) {
            ob.m.e(17);
            ob.m.l(msg);
            return null;
        }
        if (context == null) {
            context = GCApplication.app();
        }
        Toast toast = new Toast(context);
        View inflate = LayoutInflater.from(context).inflate(R$layout.transient_notification, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(16908299);
        textView.setText(msg);
        toast.setDuration(1);
        toast.setView(inflate);
        textView.setGravity(17);
        toast.setGravity(17, 0, 0);
        if (Build.VERSION.SDK_INT == 25) {
            toastUtils.hook(toast);
        }
        try {
            toast.show();
        } catch (Exception unused) {
        }
        return toast;
    }
}
