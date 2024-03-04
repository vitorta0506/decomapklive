package com.guochao.faceshow.aaspring.base.mvvm;

import android.util.ArrayMap;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\"\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u00012\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eJ,\u0010\u0010\u001a\u00020\b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0003R\"\u0010\u0003\u001a\u0016\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/MvvmUtils;", "", "()V", "viewBindingField", "Landroid/util/ArrayMap;", "Ljava/lang/Class;", "Ljava/lang/reflect/Field;", "find", "Landroidx/viewbinding/ViewBinding;", "finder", "field", "viewGroup", "Landroid/view/ViewGroup;", "layoutInflater", "Landroid/view/LayoutInflater;", "findViewBinding", "viewBinding", "container", "clazz", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MvvmUtils {
    @NotNull
    public static final MvvmUtils INSTANCE = new MvvmUtils();
    @NotNull
    private static final ArrayMap<Class<Object>, Field> viewBindingField = new ArrayMap<>();

    private MvvmUtils() {
    }

    private final ViewBinding find(Object obj, Field field, ViewGroup viewGroup, LayoutInflater layoutInflater) throws IllegalArgumentException {
        if (ViewBinding.class.isAssignableFrom(field.getType())) {
            field.setAccessible(true);
            Class<?> type = field.getType();
            Intrinsics.checkNotNull(type, "null cannot be cast to non-null type java.lang.Class<androidx.viewbinding.ViewBinding?>");
            ViewBinding viewBinding = viewBinding(viewGroup, layoutInflater, type);
            try {
                field.set(obj, viewBinding);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return viewBinding;
        }
        throw new IllegalArgumentException("Filed " + field.getName() + " in Clazz " + obj.getClass().getName() + " must be a sub class of ViewBinding");
    }

    @JvmStatic
    private static final ViewBinding viewBinding(ViewGroup viewGroup, LayoutInflater layoutInflater, Class<ViewBinding> cls) {
        try {
            Method method = cls.getMethod("inflate", LayoutInflater.class, ViewGroup.class, Boolean.TYPE);
            method.setAccessible(true);
            Object invoke = method.invoke(null, layoutInflater, viewGroup, Boolean.FALSE);
            Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type androidx.viewbinding.ViewBinding");
            return (ViewBinding) invoke;
        } catch (NoSuchMethodException unused) {
            Object invoke2 = cls.getMethod("inflate", LayoutInflater.class, ViewGroup.class).invoke(null, layoutInflater, viewGroup);
            Intrinsics.checkNotNull(invoke2, "null cannot be cast to non-null type androidx.viewbinding.ViewBinding");
            return (ViewBinding) invoke2;
        }
    }

    static /* synthetic */ ViewBinding viewBinding$default(ViewGroup viewGroup, LayoutInflater layoutInflater, Class cls, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            viewGroup = null;
        }
        return viewBinding(viewGroup, layoutInflater, cls);
    }

    @Nullable
    public final ViewBinding findViewBinding(@NotNull Object finder, @Nullable ViewGroup viewGroup, @NotNull LayoutInflater layoutInflater) throws IllegalArgumentException {
        Intrinsics.checkNotNullParameter(finder, "finder");
        Intrinsics.checkNotNullParameter(layoutInflater, "layoutInflater");
        Class<?> cls = finder.getClass();
        ArrayMap<Class<Object>, Field> arrayMap = viewBindingField;
        Field field = arrayMap.get(cls);
        if (field != null) {
            return find(finder, field, viewGroup, layoutInflater);
        }
        try {
            Field f10 = cls.getDeclaredField("viewBinding");
            Intrinsics.checkNotNullExpressionValue(f10, "f");
            ViewBinding find = find(finder, f10, viewGroup, layoutInflater);
            Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<kotlin.Any?>");
            arrayMap.put(cls, f10);
            return find;
        } catch (Exception e10) {
            e10.printStackTrace();
            if (!(e10 instanceof IllegalArgumentException)) {
                Field[] fields = cls.getDeclaredFields();
                Intrinsics.checkNotNullExpressionValue(fields, "fields");
                for (Field _f : fields) {
                    if (((GCViewBinding) _f.getAnnotation(GCViewBinding.class)) != null) {
                        MvvmUtils mvvmUtils = INSTANCE;
                        Intrinsics.checkNotNullExpressionValue(_f, "_f");
                        ViewBinding find2 = mvvmUtils.find(finder, _f, viewGroup, layoutInflater);
                        ArrayMap<Class<Object>, Field> arrayMap2 = viewBindingField;
                        Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<kotlin.Any?>");
                        arrayMap2.put(cls, _f);
                        return find2;
                    }
                }
                return null;
            }
            throw e10;
        }
    }
}
