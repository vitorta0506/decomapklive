package com.facebook.appevents.codeless;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007J$\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\fH\u0007J%\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0001¢\u0006\u0002\b\u000fJ\u0015\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0000¢\u0006\u0002\b\u0013¨\u0006\u0016"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;", "", "()V", "getOnClickListener", "Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "rootView", "Landroid/view/View;", "hostView", "getOnItemClickListener", "Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;", "Landroid/widget/AdapterView;", "logEvent", "", "logEvent$facebook_core_release", "updateParameters", PushConstants.PARAMS, "Landroid/os/Bundle;", "updateParameters$facebook_core_release", "AutoLoggingOnClickListener", "AutoLoggingOnItemClickListener", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class CodelessLoggingEventListener {
    @NotNull
    public static final CodelessLoggingEventListener INSTANCE = new CodelessLoggingEventListener();

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0016R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;", "Landroid/view/View$OnClickListener;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "rootView", "Landroid/view/View;", "hostView", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V", "existingOnClickListener", "Ljava/lang/ref/WeakReference;", "supportCodelessLogging", "", "getSupportCodelessLogging", "()Z", "setSupportCodelessLogging", "(Z)V", "onClick", "", ViewHierarchyConstants.VIEW_KEY, "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class AutoLoggingOnClickListener implements View.OnClickListener {
        @Nullable
        private View.OnClickListener existingOnClickListener;
        @NotNull
        private WeakReference<View> hostView;
        @NotNull
        private EventBinding mapping;
        @NotNull
        private WeakReference<View> rootView;
        private boolean supportCodelessLogging;

        public AutoLoggingOnClickListener(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull View hostView) {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            this.mapping = mapping;
            this.hostView = new WeakReference<>(hostView);
            this.rootView = new WeakReference<>(rootView);
            ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
            this.existingOnClickListener = ViewHierarchy.getExistingOnClickListener(hostView);
            this.supportCodelessLogging = true;
        }

        public final boolean getSupportCodelessLogging() {
            return this.supportCodelessLogging;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@NotNull View view) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                Intrinsics.checkNotNullParameter(view, "view");
                View.OnClickListener onClickListener = this.existingOnClickListener;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
                View view2 = this.rootView.get();
                View view3 = this.hostView.get();
                if (view2 == null || view3 == null) {
                    return;
                }
                CodelessLoggingEventListener codelessLoggingEventListener = CodelessLoggingEventListener.INSTANCE;
                CodelessLoggingEventListener.logEvent$facebook_core_release(this.mapping, view2, view3);
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }

        public final void setSupportCodelessLogging(boolean z10) {
            this.supportCodelessLogging = z10;
        }
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0007¢\u0006\u0002\u0010\bJ.\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;", "Landroid/widget/AdapterView$OnItemClickListener;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "rootView", "Landroid/view/View;", "hostView", "Landroid/widget/AdapterView;", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/widget/AdapterView;)V", "existingOnItemClickListener", "Ljava/lang/ref/WeakReference;", "supportCodelessLogging", "", "getSupportCodelessLogging", "()Z", "setSupportCodelessLogging", "(Z)V", "onItemClick", "", "parent", ViewHierarchyConstants.VIEW_KEY, "position", "", "id", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class AutoLoggingOnItemClickListener implements AdapterView.OnItemClickListener {
        @Nullable
        private AdapterView.OnItemClickListener existingOnItemClickListener;
        @NotNull
        private WeakReference<AdapterView<?>> hostView;
        @NotNull
        private EventBinding mapping;
        @NotNull
        private WeakReference<View> rootView;
        private boolean supportCodelessLogging;

        public AutoLoggingOnItemClickListener(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull AdapterView<?> hostView) {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            this.mapping = mapping;
            this.hostView = new WeakReference<>(hostView);
            this.rootView = new WeakReference<>(rootView);
            this.existingOnItemClickListener = hostView.getOnItemClickListener();
            this.supportCodelessLogging = true;
        }

        public final boolean getSupportCodelessLogging() {
            return this.supportCodelessLogging;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(@Nullable AdapterView<?> adapterView, @NotNull View view, int i9, long j10) {
            Intrinsics.checkNotNullParameter(view, "view");
            AdapterView.OnItemClickListener onItemClickListener = this.existingOnItemClickListener;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i9, j10);
            }
            View view2 = this.rootView.get();
            AdapterView<?> adapterView2 = this.hostView.get();
            if (view2 == null || adapterView2 == null) {
                return;
            }
            CodelessLoggingEventListener codelessLoggingEventListener = CodelessLoggingEventListener.INSTANCE;
            CodelessLoggingEventListener.logEvent$facebook_core_release(this.mapping, view2, adapterView2);
        }

        public final void setSupportCodelessLogging(boolean z10) {
            this.supportCodelessLogging = z10;
        }
    }

    private CodelessLoggingEventListener() {
    }

    @JvmStatic
    @NotNull
    public static final AutoLoggingOnClickListener getOnClickListener(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull View hostView) {
        if (CrashShieldHandler.isObjectCrashing(CodelessLoggingEventListener.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            return new AutoLoggingOnClickListener(mapping, rootView, hostView);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, CodelessLoggingEventListener.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final AutoLoggingOnItemClickListener getOnItemClickListener(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull AdapterView<?> hostView) {
        if (CrashShieldHandler.isObjectCrashing(CodelessLoggingEventListener.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            return new AutoLoggingOnItemClickListener(mapping, rootView, hostView);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, CodelessLoggingEventListener.class);
            return null;
        }
    }

    @JvmStatic
    public static final void logEvent$facebook_core_release(@NotNull EventBinding mapping, @NotNull View rootView, @NotNull View hostView) {
        if (CrashShieldHandler.isObjectCrashing(CodelessLoggingEventListener.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            final String eventName = mapping.getEventName();
            final Bundle parameters = CodelessMatcher.Companion.getParameters(mapping, rootView, hostView);
            INSTANCE.updateParameters$facebook_core_release(parameters);
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.appevents.codeless.a
                @Override // java.lang.Runnable
                public final void run() {
                    CodelessLoggingEventListener.m86logEvent$lambda0(eventName, parameters);
                }
            });
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, CodelessLoggingEventListener.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: logEvent$lambda-0  reason: not valid java name */
    public static final void m86logEvent$lambda0(String eventName, Bundle parameters) {
        if (CrashShieldHandler.isObjectCrashing(CodelessLoggingEventListener.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(eventName, "$eventName");
            Intrinsics.checkNotNullParameter(parameters, "$parameters");
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            AppEventsLogger.Companion.newLogger(FacebookSdk.getApplicationContext()).logEvent(eventName, parameters);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, CodelessLoggingEventListener.class);
        }
    }

    public final void updateParameters$facebook_core_release(@NotNull Bundle parameters) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            String string = parameters.getString(AppEventsConstants.EVENT_PARAM_VALUE_TO_SUM);
            if (string != null) {
                AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                parameters.putDouble(AppEventsConstants.EVENT_PARAM_VALUE_TO_SUM, AppEventUtility.normalizePrice(string));
            }
            parameters.putString(Constants.IS_CODELESS_EVENT_KEY, "1");
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }
}
