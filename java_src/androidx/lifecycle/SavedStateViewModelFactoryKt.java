package androidx.lifecycle;

import android.app.Application;
import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.internal.NativeProtocol;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a6\u0010\u0004\u001a\n\u0012\u0004\u0012\u0002H\u0006\u0018\u00010\u0005\"\u0004\b\u0000\u0010\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\u00022\u0010\u0010\b\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001H\u0000\u001aI\u0010\t\u001a\u0002H\u0006\"\n\b\u0000\u0010\u0006*\u0004\u0018\u00010\n2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\u00060\u00052\u0012\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r\"\u00020\u000eH\u0000¢\u0006\u0002\u0010\u000f\"\u0018\u0010\u0000\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0018\u0010\u0003\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"ANDROID_VIEWMODEL_SIGNATURE", "", "Ljava/lang/Class;", "VIEWMODEL_SIGNATURE", "findMatchingConstructor", "Ljava/lang/reflect/Constructor;", ExifInterface.GPS_DIRECTION_TRUE, "modelClass", "signature", "newInstance", "Landroidx/lifecycle/ViewModel;", "constructor", NativeProtocol.WEB_DIALOG_PARAMS, "", "", "(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ViewModel;", "lifecycle-viewmodel-savedstate_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class SavedStateViewModelFactoryKt {
    @NotNull
    private static final List<Class<?>> ANDROID_VIEWMODEL_SIGNATURE;
    @NotNull
    private static final List<Class<?>> VIEWMODEL_SIGNATURE;

    static {
        List<Class<?>> listOf;
        List<Class<?>> listOf2;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Class[]{Application.class, SavedStateHandle.class});
        ANDROID_VIEWMODEL_SIGNATURE = listOf;
        listOf2 = CollectionsKt__CollectionsJVMKt.listOf(SavedStateHandle.class);
        VIEWMODEL_SIGNATURE = listOf2;
    }

    @Nullable
    public static final <T> Constructor<T> findMatchingConstructor(@NotNull Class<T> modelClass, @NotNull List<? extends Class<?>> signature) {
        List list;
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(signature, "signature");
        Constructor<?>[] constructors = modelClass.getConstructors();
        Intrinsics.checkNotNullExpressionValue(constructors, "modelClass.constructors");
        for (Constructor<?> constructor : constructors) {
            Constructor<T> constructor2 = (Constructor<T>) constructor;
            Class<?>[] parameterTypes = constructor2.getParameterTypes();
            Intrinsics.checkNotNullExpressionValue(parameterTypes, "constructor.parameterTypes");
            list = ArraysKt___ArraysKt.toList(parameterTypes);
            if (Intrinsics.areEqual(signature, list)) {
                return constructor2;
            }
            if (signature.size() == list.size() && list.containsAll(signature)) {
                throw new UnsupportedOperationException("Class " + modelClass.getSimpleName() + " must have parameters in the proper order: " + signature);
            }
        }
        return null;
    }

    public static final <T extends ViewModel> T newInstance(@NotNull Class<T> modelClass, @NotNull Constructor<T> constructor, @NotNull Object... params) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(params, "params");
        try {
            return constructor.newInstance(Arrays.copyOf(params, params.length));
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Failed to access " + modelClass, e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("A " + modelClass + " cannot be instantiated.", e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("An exception happened in constructor of " + modelClass, e12.getCause());
        }
    }
}