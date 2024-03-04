package com.facebook.appevents.codeless;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.annotation.UiThread;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.appevents.codeless.CodelessLoggingEventListener;
import com.facebook.appevents.codeless.RCTCodelessLoggingEventListener;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.appevents.codeless.internal.EventBinding;
import com.facebook.appevents.codeless.internal.ParameterComponent;
import com.facebook.appevents.codeless.internal.PathComponent;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.appevents.internal.AppEventUtility;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.InternalSettings;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.guochao.faceshow.utils.TCConstants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import io.jsonwebtoken.JwtParser;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\b\u0001\u0018\u0000 \u00192\u00020\u0001:\u0003\u0019\u001a\u001bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0007J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0007J\b\u0010\u0016\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0007J\b\u0010\u0018\u001a\u00020\u0013H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R@\u0010\u0006\u001a4\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\u0007j\u001e\u0012\u0004\u0012\u00020\b\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\f`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher;", "", "()V", "activitiesSet", "", "Landroid/app/Activity;", "activityToListenerMap", "Ljava/util/HashMap;", "", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashMap;", "Lkotlin/collections/HashSet;", "listenerSet", "uiThreadHandler", "Landroid/os/Handler;", "viewMatchers", "Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;", "add", "", PushConstants.INTENT_ACTIVITY_NAME, "destroy", "matchViews", "remove", "startTracking", "Companion", "MatchedView", "ViewMatcher", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class CodelessMatcher {
    @NotNull
    private static final String CURRENT_CLASS_NAME = ".";
    @NotNull
    private static final String PARENT_CLASS_NAME = "..";
    @Nullable
    private static CodelessMatcher codelessMatcher;
    @NotNull
    private final Set<Activity> activitiesSet;
    @NotNull
    private final HashMap<Integer, HashSet<String>> activityToListenerMap;
    @NotNull
    private HashSet<String> listenerSet;
    @NotNull
    private final Handler uiThreadHandler;
    @NotNull
    private final Set<ViewMatcher> viewMatchers;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private static final String TAG = CodelessMatcher.class.getCanonicalName();

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\bH\u0007J\"\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$Companion;", "", "()V", "CURRENT_CLASS_NAME", "", "PARENT_CLASS_NAME", "TAG", "codelessMatcher", "Lcom/facebook/appevents/codeless/CodelessMatcher;", "getInstance", "getParameters", "Landroid/os/Bundle;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "rootView", "Landroid/view/View;", "hostView", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final synchronized CodelessMatcher getInstance() {
            CodelessMatcher access$getCodelessMatcher$cp;
            if (CodelessMatcher.access$getCodelessMatcher$cp() == null) {
                CodelessMatcher.access$setCodelessMatcher$cp(new CodelessMatcher(null));
            }
            access$getCodelessMatcher$cp = CodelessMatcher.access$getCodelessMatcher$cp();
            if (access$getCodelessMatcher$cp == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessMatcher");
            }
            return access$getCodelessMatcher$cp;
        }

        @JvmStatic
        @UiThread
        @NotNull
        public final Bundle getParameters(@Nullable EventBinding eventBinding, @NotNull View rootView, @NotNull View hostView) {
            List<ParameterComponent> viewParameters;
            List<MatchedView> findViewByPath;
            Intrinsics.checkNotNullParameter(rootView, "rootView");
            Intrinsics.checkNotNullParameter(hostView, "hostView");
            Bundle bundle = new Bundle();
            if (eventBinding != null && (viewParameters = eventBinding.getViewParameters()) != null) {
                for (ParameterComponent parameterComponent : viewParameters) {
                    if (parameterComponent.getValue() != null) {
                        if (parameterComponent.getValue().length() > 0) {
                            bundle.putString(parameterComponent.getName(), parameterComponent.getValue());
                        }
                    }
                    if (parameterComponent.getPath().size() > 0) {
                        if (Intrinsics.areEqual(parameterComponent.getPathType(), Constants.PATH_TYPE_RELATIVE)) {
                            ViewMatcher.Companion companion = ViewMatcher.Companion;
                            List<PathComponent> path = parameterComponent.getPath();
                            String simpleName = hostView.getClass().getSimpleName();
                            Intrinsics.checkNotNullExpressionValue(simpleName, "hostView.javaClass.simpleName");
                            findViewByPath = companion.findViewByPath(eventBinding, hostView, path, 0, -1, simpleName);
                        } else {
                            ViewMatcher.Companion companion2 = ViewMatcher.Companion;
                            List<PathComponent> path2 = parameterComponent.getPath();
                            String simpleName2 = rootView.getClass().getSimpleName();
                            Intrinsics.checkNotNullExpressionValue(simpleName2, "rootView.javaClass.simpleName");
                            findViewByPath = companion2.findViewByPath(eventBinding, rootView, path2, 0, -1, simpleName2);
                        }
                        Iterator<MatchedView> it = findViewByPath.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                MatchedView next = it.next();
                                if (next.getView() != null) {
                                    ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
                                    String textOfView = ViewHierarchy.getTextOfView(next.getView());
                                    if (textOfView.length() > 0) {
                                        bundle.putString(parameterComponent.getName(), textOfView);
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return bundle;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u0004\u0018\u00010\u0003R\u0016\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;", "", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "viewMapKey", "", "(Landroid/view/View;Ljava/lang/String;)V", "Ljava/lang/ref/WeakReference;", "getViewMapKey", "()Ljava/lang/String;", "getView", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class MatchedView {
        @Nullable
        private final WeakReference<View> view;
        @NotNull
        private final String viewMapKey;

        public MatchedView(@NotNull View view, @NotNull String viewMapKey) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(viewMapKey, "viewMapKey");
            this.view = new WeakReference<>(view);
            this.viewMapKey = viewMapKey;
        }

        @Nullable
        public final View getView() {
            WeakReference<View> weakReference = this.view;
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }

        @NotNull
        public final String getViewMapKey() {
            return this.viewMapKey;
        }
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u0000 \u001f2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001fB7\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0002\u0010\rJ\"\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0010H\u0002J \u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J \u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J \u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J\u001c\u0010\u001a\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00102\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002J\b\u0010\u001b\u001a\u00020\u0013H\u0016J\b\u0010\u001c\u001a\u00020\u0013H\u0016J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\b\u0010\u001e\u001a\u00020\u0013H\u0002R\u000e\u0010\f\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "Ljava/lang/Runnable;", "rootView", "Landroid/view/View;", "handler", "Landroid/os/Handler;", "listenerSet", "Ljava/util/HashSet;", "", "Lkotlin/collections/HashSet;", "activityName", "(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V", "eventBindings", "", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "Ljava/lang/ref/WeakReference;", "attachListener", "", "matchedView", "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;", "mapping", "attachOnClickListener", "attachOnItemClickListener", "attachRCTListener", "findView", "onGlobalLayout", "onScrollChanged", "run", "startMatch", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @UiThread
    /* loaded from: classes.dex */
    public static final class ViewMatcher implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Runnable {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final String activityName;
        @Nullable
        private List<EventBinding> eventBindings;
        @NotNull
        private final Handler handler;
        @NotNull
        private final HashSet<String> listenerSet;
        @NotNull
        private final WeakReference<View> rootView;

        @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JH\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¨\u0006\u0018"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher$Companion;", "", "()V", "findViewByPath", "", "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", TCConstants.VIDEO_RECORD_VIDEPATH, "Lcom/facebook/appevents/codeless/internal/PathComponent;", "level", "", "index", "mapKey", "", "findVisibleChildren", "viewGroup", "Landroid/view/ViewGroup;", "isTheSameView", "", "targetView", "pathElement", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final List<View> findVisibleChildren(ViewGroup viewGroup) {
                ArrayList arrayList = new ArrayList();
                int childCount = viewGroup.getChildCount();
                if (childCount > 0) {
                    int i9 = 0;
                    while (true) {
                        int i10 = i9 + 1;
                        View child = viewGroup.getChildAt(i9);
                        if (child.getVisibility() == 0) {
                            Intrinsics.checkNotNullExpressionValue(child, "child");
                            arrayList.add(child);
                        }
                        if (i10 >= childCount) {
                            break;
                        }
                        i9 = i10;
                    }
                }
                return arrayList;
            }

            /* JADX WARN: Code restructure failed: missing block: B:14:0x0063, code lost:
                if (kotlin.jvm.internal.Intrinsics.areEqual(r9.getClass().getSimpleName(), (java.lang.String) r11.get(r11.size() - 1)) == false) goto L15;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private final boolean isTheSameView(android.view.View r9, com.facebook.appevents.codeless.internal.PathComponent r10, int r11) {
                /*
                    Method dump skipped, instructions count: 333
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.codeless.CodelessMatcher.ViewMatcher.Companion.isTheSameView(android.view.View, com.facebook.appevents.codeless.internal.PathComponent, int):boolean");
            }

            @JvmStatic
            @NotNull
            public final List<MatchedView> findViewByPath(@Nullable EventBinding eventBinding, @Nullable View view, @NotNull List<PathComponent> path, int i9, int i10, @NotNull String mapKey) {
                List<View> findVisibleChildren;
                int size;
                List<View> findVisibleChildren2;
                int size2;
                Intrinsics.checkNotNullParameter(path, "path");
                Intrinsics.checkNotNullParameter(mapKey, "mapKey");
                String str = mapKey + JwtParser.SEPARATOR_CHAR + i10;
                ArrayList arrayList = new ArrayList();
                if (view == null) {
                    return arrayList;
                }
                if (i9 >= path.size()) {
                    arrayList.add(new MatchedView(view, str));
                } else {
                    PathComponent pathComponent = path.get(i9);
                    if (Intrinsics.areEqual(pathComponent.getClassName(), CodelessMatcher.PARENT_CLASS_NAME)) {
                        ViewParent parent = view.getParent();
                        if ((parent instanceof ViewGroup) && (size = (findVisibleChildren = findVisibleChildren((ViewGroup) parent)).size()) > 0) {
                            int i11 = 0;
                            while (true) {
                                int i12 = i11 + 1;
                                arrayList.addAll(findViewByPath(eventBinding, findVisibleChildren.get(i11), path, i9 + 1, i11, str));
                                if (i12 >= size) {
                                    break;
                                }
                                i11 = i12;
                            }
                        }
                        return arrayList;
                    } else if (Intrinsics.areEqual(pathComponent.getClassName(), CodelessMatcher.CURRENT_CLASS_NAME)) {
                        arrayList.add(new MatchedView(view, str));
                        return arrayList;
                    } else if (!isTheSameView(view, pathComponent, i10)) {
                        return arrayList;
                    } else {
                        if (i9 == path.size() - 1) {
                            arrayList.add(new MatchedView(view, str));
                        }
                    }
                }
                if ((view instanceof ViewGroup) && (size2 = (findVisibleChildren2 = findVisibleChildren((ViewGroup) view)).size()) > 0) {
                    int i13 = 0;
                    while (true) {
                        int i14 = i13 + 1;
                        arrayList.addAll(findViewByPath(eventBinding, findVisibleChildren2.get(i13), path, i9 + 1, i13, str));
                        if (i14 >= size2) {
                            break;
                        }
                        i13 = i14;
                    }
                }
                return arrayList;
            }
        }

        public ViewMatcher(@Nullable View view, @NotNull Handler handler, @NotNull HashSet<String> listenerSet, @NotNull String activityName) {
            Intrinsics.checkNotNullParameter(handler, "handler");
            Intrinsics.checkNotNullParameter(listenerSet, "listenerSet");
            Intrinsics.checkNotNullParameter(activityName, "activityName");
            this.rootView = new WeakReference<>(view);
            this.handler = handler;
            this.listenerSet = listenerSet;
            this.activityName = activityName;
            handler.postDelayed(this, 200L);
        }

        private final void attachListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            boolean startsWith$default;
            if (eventBinding == null) {
                return;
            }
            try {
                View view2 = matchedView.getView();
                if (view2 == null) {
                    return;
                }
                ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
                View findRCTRootView = ViewHierarchy.findRCTRootView(view2);
                if (findRCTRootView != null && viewHierarchy.isRCTButton(view2, findRCTRootView)) {
                    attachRCTListener(matchedView, view, eventBinding);
                    return;
                }
                String name = view2.getClass().getName();
                Intrinsics.checkNotNullExpressionValue(name, "view.javaClass.name");
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(name, "com.facebook.react", false, 2, null);
                if (startsWith$default) {
                    return;
                }
                if (!(view2 instanceof AdapterView)) {
                    attachOnClickListener(matchedView, view, eventBinding);
                } else if (view2 instanceof ListView) {
                    attachOnItemClickListener(matchedView, view, eventBinding);
                }
            } catch (Exception e10) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(CodelessMatcher.access$getTAG$cp(), e10);
            }
        }

        private final void attachOnClickListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            boolean z10;
            View view2 = matchedView.getView();
            if (view2 == null) {
                return;
            }
            String viewMapKey = matchedView.getViewMapKey();
            ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
            View.OnClickListener existingOnClickListener = ViewHierarchy.getExistingOnClickListener(view2);
            if (existingOnClickListener instanceof CodelessLoggingEventListener.AutoLoggingOnClickListener) {
                Objects.requireNonNull(existingOnClickListener, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnClickListener");
                if (((CodelessLoggingEventListener.AutoLoggingOnClickListener) existingOnClickListener).getSupportCodelessLogging()) {
                    z10 = true;
                    if (!this.listenerSet.contains(viewMapKey) || z10) {
                    }
                    CodelessLoggingEventListener codelessLoggingEventListener = CodelessLoggingEventListener.INSTANCE;
                    view2.setOnClickListener(CodelessLoggingEventListener.getOnClickListener(eventBinding, view, view2));
                    this.listenerSet.add(viewMapKey);
                    return;
                }
            }
            z10 = false;
            if (this.listenerSet.contains(viewMapKey)) {
            }
        }

        private final void attachOnItemClickListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            boolean z10;
            AdapterView adapterView = (AdapterView) matchedView.getView();
            if (adapterView == null) {
                return;
            }
            String viewMapKey = matchedView.getViewMapKey();
            AdapterView.OnItemClickListener onItemClickListener = adapterView.getOnItemClickListener();
            if (onItemClickListener instanceof CodelessLoggingEventListener.AutoLoggingOnItemClickListener) {
                Objects.requireNonNull(onItemClickListener, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnItemClickListener");
                if (((CodelessLoggingEventListener.AutoLoggingOnItemClickListener) onItemClickListener).getSupportCodelessLogging()) {
                    z10 = true;
                    if (!this.listenerSet.contains(viewMapKey) || z10) {
                    }
                    CodelessLoggingEventListener codelessLoggingEventListener = CodelessLoggingEventListener.INSTANCE;
                    adapterView.setOnItemClickListener(CodelessLoggingEventListener.getOnItemClickListener(eventBinding, view, adapterView));
                    this.listenerSet.add(viewMapKey);
                    return;
                }
            }
            z10 = false;
            if (this.listenerSet.contains(viewMapKey)) {
            }
        }

        private final void attachRCTListener(MatchedView matchedView, View view, EventBinding eventBinding) {
            boolean z10;
            View view2 = matchedView.getView();
            if (view2 == null) {
                return;
            }
            String viewMapKey = matchedView.getViewMapKey();
            ViewHierarchy viewHierarchy = ViewHierarchy.INSTANCE;
            View.OnTouchListener existingOnTouchListener = ViewHierarchy.getExistingOnTouchListener(view2);
            if (existingOnTouchListener instanceof RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener) {
                Objects.requireNonNull(existingOnTouchListener, "null cannot be cast to non-null type com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener");
                if (((RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener) existingOnTouchListener).getSupportCodelessLogging()) {
                    z10 = true;
                    if (!this.listenerSet.contains(viewMapKey) || z10) {
                    }
                    RCTCodelessLoggingEventListener rCTCodelessLoggingEventListener = RCTCodelessLoggingEventListener.INSTANCE;
                    view2.setOnTouchListener(RCTCodelessLoggingEventListener.getOnTouchListener(eventBinding, view, view2));
                    this.listenerSet.add(viewMapKey);
                    return;
                }
            }
            z10 = false;
            if (this.listenerSet.contains(viewMapKey)) {
            }
        }

        private final void findView(EventBinding eventBinding, View view) {
            if (eventBinding == null || view == null) {
                return;
            }
            String activityName = eventBinding.getActivityName();
            if ((activityName == null || activityName.length() == 0) || Intrinsics.areEqual(eventBinding.getActivityName(), this.activityName)) {
                List<PathComponent> viewPath = eventBinding.getViewPath();
                if (viewPath.size() > 25) {
                    return;
                }
                for (MatchedView matchedView : Companion.findViewByPath(eventBinding, view, viewPath, 0, -1, this.activityName)) {
                    attachListener(matchedView, view, eventBinding);
                }
            }
        }

        @JvmStatic
        @NotNull
        public static final List<MatchedView> findViewByPath(@Nullable EventBinding eventBinding, @Nullable View view, @NotNull List<PathComponent> list, int i9, int i10, @NotNull String str) {
            return Companion.findViewByPath(eventBinding, view, list, i9, i10, str);
        }

        private final void startMatch() {
            List<EventBinding> list = this.eventBindings;
            if (list == null || this.rootView.get() == null) {
                return;
            }
            int i9 = 0;
            int size = list.size() - 1;
            if (size < 0) {
                return;
            }
            while (true) {
                int i10 = i9 + 1;
                findView(list.get(i9), this.rootView.get());
                if (i10 > size) {
                    return;
                }
                i9 = i10;
            }
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            startMatch();
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            startMatch();
        }

        @Override // java.lang.Runnable
        public void run() {
            View view;
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
                String applicationId = FacebookSdk.getApplicationId();
                FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(applicationId);
                if (appSettingsWithoutQuery != null && appSettingsWithoutQuery.getCodelessEventsEnabled()) {
                    List<EventBinding> parseArray = EventBinding.Companion.parseArray(appSettingsWithoutQuery.getEventBindings());
                    this.eventBindings = parseArray;
                    if (parseArray == null || (view = this.rootView.get()) == null) {
                        return;
                    }
                    ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.addOnGlobalLayoutListener(this);
                        viewTreeObserver.addOnScrollChangedListener(this);
                    }
                    startMatch();
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        }
    }

    private CodelessMatcher() {
        this.uiThreadHandler = new Handler(Looper.getMainLooper());
        Set<Activity> newSetFromMap = Collections.newSetFromMap(new WeakHashMap());
        Intrinsics.checkNotNullExpressionValue(newSetFromMap, "newSetFromMap(WeakHashMap())");
        this.activitiesSet = newSetFromMap;
        this.viewMatchers = new LinkedHashSet();
        this.listenerSet = new HashSet<>();
        this.activityToListenerMap = new HashMap<>();
    }

    public /* synthetic */ CodelessMatcher(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static final /* synthetic */ CodelessMatcher access$getCodelessMatcher$cp() {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return codelessMatcher;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, CodelessMatcher.class);
            return null;
        }
    }

    public static final /* synthetic */ String access$getTAG$cp() {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return TAG;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, CodelessMatcher.class);
            return null;
        }
    }

    public static final /* synthetic */ void access$setCodelessMatcher$cp(CodelessMatcher codelessMatcher2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return;
        }
        try {
            codelessMatcher = codelessMatcher2;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, CodelessMatcher.class);
        }
    }

    @JvmStatic
    @NotNull
    public static final synchronized CodelessMatcher getInstance() {
        synchronized (CodelessMatcher.class) {
            if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
                return null;
            }
            return Companion.getInstance();
        }
    }

    @JvmStatic
    @UiThread
    @NotNull
    public static final Bundle getParameters(@Nullable EventBinding eventBinding, @NotNull View view, @NotNull View view2) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return null;
        }
        try {
            return Companion.getParameters(eventBinding, view, view2);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, CodelessMatcher.class);
            return null;
        }
    }

    private final void matchViews() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            for (Activity activity : this.activitiesSet) {
                if (activity != null) {
                    AppEventUtility appEventUtility = AppEventUtility.INSTANCE;
                    View rootView = AppEventUtility.getRootView(activity);
                    String simpleName = activity.getClass().getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "activity.javaClass.simpleName");
                    this.viewMatchers.add(new ViewMatcher(rootView, this.uiThreadHandler, this.listenerSet, simpleName));
                }
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    private final void startTracking() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                matchViews();
            } else {
                this.uiThreadHandler.post(new Runnable() { // from class: com.facebook.appevents.codeless.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        CodelessMatcher.m89startTracking$lambda1(CodelessMatcher.this);
                    }
                });
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: startTracking$lambda-1  reason: not valid java name */
    public static final void m89startTracking$lambda1(CodelessMatcher this$0) {
        if (CrashShieldHandler.isObjectCrashing(CodelessMatcher.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.matchViews();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, CodelessMatcher.class);
        }
    }

    @UiThread
    public final void add(@NotNull Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            InternalSettings internalSettings = InternalSettings.INSTANCE;
            if (InternalSettings.isUnityApp()) {
                return;
            }
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                this.activitiesSet.add(activity);
                this.listenerSet.clear();
                HashSet<String> hashSet = this.activityToListenerMap.get(Integer.valueOf(activity.hashCode()));
                if (hashSet != null) {
                    this.listenerSet = hashSet;
                }
                startTracking();
                return;
            }
            throw new FacebookException("Can't add activity to CodelessMatcher on non-UI thread");
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @UiThread
    public final void destroy(@NotNull Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activityToListenerMap.remove(Integer.valueOf(activity.hashCode()));
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @UiThread
    public final void remove(@NotNull Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            InternalSettings internalSettings = InternalSettings.INSTANCE;
            if (InternalSettings.isUnityApp()) {
                return;
            }
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                this.activitiesSet.remove(activity);
                this.viewMatchers.clear();
                this.activityToListenerMap.put(Integer.valueOf(activity.hashCode()), (HashSet) this.listenerSet.clone());
                this.listenerSet.clear();
                return;
            }
            throw new FacebookException("Can't remove activity from CodelessMatcher on non-UI thread");
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }
}
