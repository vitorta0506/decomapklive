package com.facebook.appevents.codeless.internal;

import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0018\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\f0\u00132\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\fH\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\fH\u0007J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u0016\u0010\u0018\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0012\u0010\u001f\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0014\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u0012\u0010\"\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0007J\u001e\u0010#\u001a\u0004\u0018\u00010\f2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010\fH\u0002J\u0010\u0010'\u001a\u00020%2\u0006\u0010\u0011\u001a\u00020\fH\u0002J\b\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\fH\u0003J\u0018\u0010,\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\f2\b\u0010&\u001a\u0004\u0018\u00010\fJ\u0010\u0010-\u001a\u00020+2\u0006\u0010\u0011\u001a\u00020\fH\u0002J\u001a\u0010.\u001a\u00020)2\u0006\u0010\u0011\u001a\u00020\f2\b\u0010/\u001a\u0004\u0018\u00010\u001cH\u0007J \u00100\u001a\u00020)2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u00101\u001a\u00020\u00162\u0006\u00102\u001a\u000203H\u0007J\u0018\u00104\u001a\u00020)2\u0006\u0010\u0011\u001a\u00020\f2\u0006\u00101\u001a\u00020\u0016H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lcom/facebook/appevents/codeless/internal/ViewHierarchy;", "", "()V", "CLASS_RCTROOTVIEW", "", "CLASS_RCTVIEWGROUP", "CLASS_TOUCHTARGETHELPER", "ICON_MAX_EDGE_LENGTH", "", "METHOD_FIND_TOUCHTARGET_VIEW", "RCTRootViewReference", "Ljava/lang/ref/WeakReference;", "Landroid/view/View;", "TAG", "methodFindTouchTargetView", "Ljava/lang/reflect/Method;", "findRCTRootView", ViewHierarchyConstants.VIEW_KEY, "getChildrenOfView", "", "getClassTypeBitmask", "getDictionaryOfView", "Lorg/json/JSONObject;", "getDimensionOfView", "getExistingClass", "Ljava/lang/Class;", "className", "getExistingOnClickListener", "Landroid/view/View$OnClickListener;", "getExistingOnTouchListener", "Landroid/view/View$OnTouchListener;", "getHintOfView", "getParentOfView", "Landroid/view/ViewGroup;", "getTextOfView", "getTouchReactView", "location", "", "RCTRootView", "getViewLocationOnScreen", "initTouchTargetHelperMethods", "", "isAdapterViewItem", "", "isRCTButton", "isRCTRootView", "setOnClickListener", "newListener", "updateAppearanceOfView", "json", "displayDensity", "", "updateBasicInfoOfView", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ViewHierarchy {
    @NotNull
    private static final String CLASS_RCTROOTVIEW = "com.facebook.react.ReactRootView";
    @NotNull
    private static final String CLASS_RCTVIEWGROUP = "com.facebook.react.views.view.ReactViewGroup";
    @NotNull
    private static final String CLASS_TOUCHTARGETHELPER = "com.facebook.react.uimanager.TouchTargetHelper";
    private static final int ICON_MAX_EDGE_LENGTH = 44;
    @NotNull
    private static final String METHOD_FIND_TOUCHTARGET_VIEW = "findTouchTargetView";
    @Nullable
    private static Method methodFindTouchTargetView;
    @NotNull
    public static final ViewHierarchy INSTANCE = new ViewHierarchy();
    @Nullable
    private static final String TAG = ViewHierarchy.class.getCanonicalName();
    @NotNull
    private static WeakReference<View> RCTRootViewReference = new WeakReference<>(null);

    private ViewHierarchy() {
    }

    @JvmStatic
    @Nullable
    public static final View findRCTRootView(@Nullable View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        while (view != null) {
            try {
                if (!INSTANCE.isRCTRootView(view)) {
                    ViewParent parent = view.getParent();
                    if (!(parent instanceof View)) {
                        break;
                    }
                    view = (View) parent;
                } else {
                    return view;
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
            }
        }
        return null;
    }

    @JvmStatic
    @NotNull
    public static final List<View> getChildrenOfView(@Nullable View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof ViewGroup) {
                int childCount = ((ViewGroup) view).getChildCount();
                int i9 = 0;
                if (childCount > 0) {
                    while (true) {
                        int i10 = i9 + 1;
                        arrayList.add(((ViewGroup) view).getChildAt(i9));
                        if (i10 >= childCount) {
                            break;
                        }
                        i9 = i10;
                    }
                }
            }
            return arrayList;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    public static final int getClassTypeBitmask(@NotNull View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return 0;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            int i9 = view instanceof ImageView ? 2 : 0;
            if (view.isClickable()) {
                i9 |= 32;
            }
            ViewHierarchy viewHierarchy = INSTANCE;
            if (isAdapterViewItem(view)) {
                i9 |= 512;
            }
            if (view instanceof TextView) {
                int i10 = i9 | 1024 | 1;
                if (view instanceof Button) {
                    i10 |= 4;
                    if (view instanceof Switch) {
                        i10 |= 8192;
                    } else if (view instanceof CheckBox) {
                        i10 |= 32768;
                    }
                }
                return view instanceof EditText ? i10 | 2048 : i10;
            }
            if (!(view instanceof Spinner) && !(view instanceof DatePicker)) {
                return view instanceof RatingBar ? i9 | 65536 : view instanceof RadioGroup ? i9 | 16384 : ((view instanceof ViewGroup) && viewHierarchy.isRCTButton(view, RCTRootViewReference.get())) ? i9 | 64 : i9;
            }
            return i9 | 4096;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
            return 0;
        }
    }

    @JvmStatic
    @NotNull
    public static final JSONObject getDictionaryOfView(@NotNull View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            if (Intrinsics.areEqual(view.getClass().getName(), CLASS_RCTROOTVIEW)) {
                RCTRootViewReference = new WeakReference<>(view);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                updateBasicInfoOfView(view, jSONObject);
                JSONArray jSONArray = new JSONArray();
                List<View> childrenOfView = getChildrenOfView(view);
                int i9 = 0;
                int size = childrenOfView.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i10 = i9 + 1;
                        jSONArray.put(getDictionaryOfView(childrenOfView.get(i9)));
                        if (i10 > size) {
                            break;
                        }
                        i9 = i10;
                    }
                }
                jSONObject.put(ViewHierarchyConstants.CHILDREN_VIEW_KEY, jSONArray);
            } catch (JSONException e10) {
                Log.e(TAG, "Failed to create JSONObject for view.", e10);
            }
            return jSONObject;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
            return null;
        }
    }

    private final JSONObject getDimensionOfView(View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("top", view.getTop());
                jSONObject.put(ViewHierarchyConstants.DIMENSION_LEFT_KEY, view.getLeft());
                jSONObject.put("width", view.getWidth());
                jSONObject.put("height", view.getHeight());
                jSONObject.put(ViewHierarchyConstants.DIMENSION_SCROLL_X_KEY, view.getScrollX());
                jSONObject.put(ViewHierarchyConstants.DIMENSION_SCROLL_Y_KEY, view.getScrollY());
                jSONObject.put("visibility", view.getVisibility());
            } catch (JSONException e10) {
                Log.e(TAG, "Failed to create JSONObject for dimension.", e10);
            }
            return jSONObject;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final Class<?> getExistingClass(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final View.OnClickListener getExistingOnClickListener(@Nullable View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
            Intrinsics.checkNotNullExpressionValue(declaredField, "forName(\"android.view.View\").getDeclaredField(\"mListenerInfo\")");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(view);
            if (obj == null) {
                return null;
            }
            Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
            Intrinsics.checkNotNullExpressionValue(declaredField2, "forName(\"android.view.View\\$ListenerInfo\").getDeclaredField(\"mOnClickListener\")");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            if (obj2 != null) {
                return (View.OnClickListener) obj2;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.view.View.OnClickListener");
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused) {
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final View.OnTouchListener getExistingOnTouchListener(@Nullable View view) {
        try {
            if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
                return null;
            }
            try {
                Field declaredField = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                Intrinsics.checkNotNullExpressionValue(declaredField, "forName(\"android.view.View\").getDeclaredField(\"mListenerInfo\")");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(view);
                if (obj == null) {
                    return null;
                }
                Field declaredField2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnTouchListener");
                Intrinsics.checkNotNullExpressionValue(declaredField2, "forName(\"android.view.View\\$ListenerInfo\").getDeclaredField(\"mOnTouchListener\")");
                declaredField2.setAccessible(true);
                Object obj2 = declaredField2.get(obj);
                if (obj2 != null) {
                    return (View.OnTouchListener) obj2;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.view.View.OnTouchListener");
            } catch (ClassNotFoundException e10) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(TAG, e10);
                return null;
            } catch (IllegalAccessException e11) {
                Utility utility2 = Utility.INSTANCE;
                Utility.logd(TAG, e11);
                return null;
            } catch (NoSuchFieldException e12) {
                Utility utility3 = Utility.INSTANCE;
                Utility.logd(TAG, e12);
                return null;
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final String getHintOfView(@Nullable View view) {
        CharSequence hint;
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            if (view instanceof EditText) {
                hint = ((EditText) view).getHint();
            } else {
                hint = view instanceof TextView ? ((TextView) view).getHint() : null;
            }
            if (hint == null) {
                return "";
            }
            String obj = hint.toString();
            return obj == null ? "" : obj;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final ViewGroup getParentOfView(@Nullable View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class) || view == null) {
            return null;
        }
        try {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                return (ViewGroup) parent;
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final String getTextOfView(@Nullable View view) {
        CharSequence valueOf;
        Object selectedItem;
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return null;
        }
        try {
            if (view instanceof TextView) {
                valueOf = ((TextView) view).getText();
                if (view instanceof Switch) {
                    valueOf = ((Switch) view).isChecked() ? "1" : "0";
                }
            } else if (view instanceof Spinner) {
                if (((Spinner) view).getCount() > 0 && (selectedItem = ((Spinner) view).getSelectedItem()) != null) {
                    valueOf = selectedItem.toString();
                }
                valueOf = null;
            } else {
                int i9 = 0;
                if (view instanceof DatePicker) {
                    int year = ((DatePicker) view).getYear();
                    int month = ((DatePicker) view).getMonth();
                    int dayOfMonth = ((DatePicker) view).getDayOfMonth();
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    valueOf = String.format("%04d-%02d-%02d", Arrays.copyOf(new Object[]{Integer.valueOf(year), Integer.valueOf(month), Integer.valueOf(dayOfMonth)}, 3));
                    Intrinsics.checkNotNullExpressionValue(valueOf, "java.lang.String.format(format, *args)");
                } else if (view instanceof TimePicker) {
                    Integer currentHour = ((TimePicker) view).getCurrentHour();
                    Intrinsics.checkNotNullExpressionValue(currentHour, "view.currentHour");
                    int intValue = currentHour.intValue();
                    Integer currentMinute = ((TimePicker) view).getCurrentMinute();
                    Intrinsics.checkNotNullExpressionValue(currentMinute, "view.currentMinute");
                    int intValue2 = currentMinute.intValue();
                    StringCompanionObject stringCompanionObject2 = StringCompanionObject.INSTANCE;
                    valueOf = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(intValue), Integer.valueOf(intValue2)}, 2));
                    Intrinsics.checkNotNullExpressionValue(valueOf, "java.lang.String.format(format, *args)");
                } else if (view instanceof RadioGroup) {
                    int checkedRadioButtonId = ((RadioGroup) view).getCheckedRadioButtonId();
                    int childCount = ((RadioGroup) view).getChildCount();
                    if (childCount > 0) {
                        while (true) {
                            int i10 = i9 + 1;
                            View childAt = ((RadioGroup) view).getChildAt(i9);
                            if (childAt.getId() == checkedRadioButtonId && (childAt instanceof RadioButton)) {
                                valueOf = ((RadioButton) childAt).getText();
                                break;
                            } else if (i10 >= childCount) {
                                break;
                            } else {
                                i9 = i10;
                            }
                        }
                    }
                    valueOf = null;
                } else {
                    if (view instanceof RatingBar) {
                        valueOf = String.valueOf(((RatingBar) view).getRating());
                    }
                    valueOf = null;
                }
            }
            if (valueOf == null) {
                return "";
            }
            String obj = valueOf.toString();
            return obj == null ? "" : obj;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
            return null;
        }
    }

    private final View getTouchReactView(float[] fArr, View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            initTouchTargetHelperMethods();
            Method method = methodFindTouchTargetView;
            if (method != null && view != null) {
                try {
                    if (method == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    Object invoke = method.invoke(null, fArr, view);
                    if (invoke != null) {
                        View view2 = (View) invoke;
                        if (view2.getId() > 0) {
                            ViewParent parent = view2.getParent();
                            if (parent != null) {
                                return (View) parent;
                            }
                            throw new NullPointerException("null cannot be cast to non-null type android.view.View");
                        }
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type android.view.View");
                    }
                } catch (IllegalAccessException e10) {
                    Utility utility = Utility.INSTANCE;
                    Utility.logd(TAG, e10);
                } catch (InvocationTargetException e11) {
                    Utility utility2 = Utility.INSTANCE;
                    Utility.logd(TAG, e11);
                }
            }
            return null;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final float[] getViewLocationOnScreen(View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            return new float[]{iArr[0], iArr[1]};
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return null;
        }
    }

    private final void initTouchTargetHelperMethods() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (methodFindTouchTargetView != null) {
                return;
            }
            try {
                try {
                    Class<?> cls = Class.forName(CLASS_TOUCHTARGETHELPER);
                    Intrinsics.checkNotNullExpressionValue(cls, "forName(CLASS_TOUCHTARGETHELPER)");
                    Method declaredMethod = cls.getDeclaredMethod(METHOD_FIND_TOUCHTARGET_VIEW, float[].class, ViewGroup.class);
                    methodFindTouchTargetView = declaredMethod;
                    if (declaredMethod == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    declaredMethod.setAccessible(true);
                } catch (ClassNotFoundException e10) {
                    Utility utility = Utility.INSTANCE;
                    Utility.logd(TAG, e10);
                }
            } catch (NoSuchMethodException e11) {
                Utility utility2 = Utility.INSTANCE;
                Utility.logd(TAG, e11);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }

    @JvmStatic
    private static final boolean isAdapterViewItem(View view) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return false;
        }
        try {
            ViewParent parent = view.getParent();
            if (parent instanceof AdapterView) {
                return true;
            }
            ViewHierarchy viewHierarchy = INSTANCE;
            Class<?> existingClass = viewHierarchy.getExistingClass("android.support.v4.view.NestedScrollingChild");
            if (existingClass == null || !existingClass.isInstance(parent)) {
                Class<?> existingClass2 = viewHierarchy.getExistingClass("androidx.core.view.NestedScrollingChild");
                if (existingClass2 != null) {
                    return existingClass2.isInstance(parent);
                }
                return false;
            }
            return true;
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
            return false;
        }
    }

    private final boolean isRCTRootView(View view) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return Intrinsics.areEqual(view.getClass().getName(), CLASS_RCTROOTVIEW);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }

    @JvmStatic
    public static final void setOnClickListener(@NotNull View view, @Nullable View.OnClickListener onClickListener) {
        Field field;
        Field field2;
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            Object obj = null;
            try {
                try {
                    field = Class.forName("android.view.View").getDeclaredField("mListenerInfo");
                } catch (Exception unused) {
                    return;
                }
            } catch (ClassNotFoundException | NoSuchFieldException unused2) {
                field = null;
            }
            try {
                field2 = Class.forName("android.view.View$ListenerInfo").getDeclaredField("mOnClickListener");
            } catch (ClassNotFoundException | NoSuchFieldException unused3) {
                field2 = null;
                if (field == null) {
                }
                view.setOnClickListener(onClickListener);
            }
            if (field == null && field2 != null) {
                field.setAccessible(true);
                field2.setAccessible(true);
                try {
                    field.setAccessible(true);
                    obj = field.get(view);
                } catch (IllegalAccessException unused4) {
                }
                if (obj == null) {
                    view.setOnClickListener(onClickListener);
                    return;
                } else {
                    field2.set(obj, onClickListener);
                    return;
                }
            }
            view.setOnClickListener(onClickListener);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
        }
    }

    @JvmStatic
    public static final void updateAppearanceOfView(@NotNull View view, @NotNull JSONObject json, float f10) {
        Bitmap bitmap;
        Typeface typeface;
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(json, "json");
            try {
                JSONObject jSONObject = new JSONObject();
                if ((view instanceof TextView) && (typeface = ((TextView) view).getTypeface()) != null) {
                    jSONObject.put(ViewHierarchyConstants.TEXT_SIZE, ((TextView) view).getTextSize());
                    jSONObject.put(ViewHierarchyConstants.TEXT_IS_BOLD, typeface.isBold());
                    jSONObject.put(ViewHierarchyConstants.TEXT_IS_ITALIC, typeface.isItalic());
                    json.put(ViewHierarchyConstants.TEXT_STYLE, jSONObject);
                }
                if (view instanceof ImageView) {
                    Drawable drawable = ((ImageView) view).getDrawable();
                    if (drawable instanceof BitmapDrawable) {
                        float f11 = 44;
                        if (view.getHeight() / f10 > f11 || view.getWidth() / f10 > f11 || (bitmap = ((BitmapDrawable) drawable).getBitmap()) == null) {
                            return;
                        }
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                        json.put(ViewHierarchyConstants.ICON_BITMAP, Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0));
                    }
                }
            } catch (JSONException e10) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(TAG, e10);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
        }
    }

    @JvmStatic
    public static final void updateBasicInfoOfView(@NotNull View view, @NotNull JSONObject json) {
        if (CrashShieldHandler.isObjectCrashing(ViewHierarchy.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(json, "json");
            try {
                ViewHierarchy viewHierarchy = INSTANCE;
                String textOfView = getTextOfView(view);
                String hintOfView = getHintOfView(view);
                Object tag = view.getTag();
                CharSequence contentDescription = view.getContentDescription();
                json.put(ViewHierarchyConstants.CLASS_NAME_KEY, view.getClass().getCanonicalName());
                json.put(ViewHierarchyConstants.CLASS_TYPE_BITMASK_KEY, getClassTypeBitmask(view));
                json.put("id", view.getId());
                SensitiveUserDataUtils sensitiveUserDataUtils = SensitiveUserDataUtils.INSTANCE;
                if (!SensitiveUserDataUtils.isSensitiveUserData(view)) {
                    Utility utility = Utility.INSTANCE;
                    json.put(ViewHierarchyConstants.TEXT_KEY, Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(textOfView), ""));
                } else {
                    json.put(ViewHierarchyConstants.TEXT_KEY, "");
                    json.put(ViewHierarchyConstants.IS_USER_INPUT_KEY, true);
                }
                Utility utility2 = Utility.INSTANCE;
                json.put(ViewHierarchyConstants.HINT_KEY, Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(hintOfView), ""));
                if (tag != null) {
                    json.put("tag", Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(tag.toString()), ""));
                }
                if (contentDescription != null) {
                    json.put("description", Utility.coerceValueIfNullOrEmpty(Utility.sha256hash(contentDescription.toString()), ""));
                }
                json.put("dimension", viewHierarchy.getDimensionOfView(view));
            } catch (JSONException e10) {
                Utility utility3 = Utility.INSTANCE;
                Utility.logd(TAG, e10);
            }
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, ViewHierarchy.class);
        }
    }

    public final boolean isRCTButton(@NotNull View view, @Nullable View view2) {
        View touchReactView;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(view, "view");
            String name = view.getClass().getName();
            Intrinsics.checkNotNullExpressionValue(name, "view.javaClass.name");
            if (!Intrinsics.areEqual(name, CLASS_RCTVIEWGROUP) || (touchReactView = getTouchReactView(getViewLocationOnScreen(view), view2)) == null) {
                return false;
            }
            return touchReactView.getId() == view.getId();
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return false;
        }
    }
}
