package androidx.fragment.app;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.transition.FragmentTransitionSupport;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentTransition {
    static final FragmentTransitionImpl PLATFORM_IMPL = new FragmentTransitionCompat21();
    static final FragmentTransitionImpl SUPPORT_IMPL = resolveSupportImpl();

    private FragmentTransition() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void callSharedElementStartEnd(Fragment fragment, Fragment fragment2, boolean z10, ArrayMap<String, View> arrayMap, boolean z11) {
        SharedElementCallback enterTransitionCallback;
        if (z10) {
            enterTransitionCallback = fragment2.getEnterTransitionCallback();
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
        }
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = arrayMap == null ? 0 : arrayMap.size();
            for (int i9 = 0; i9 < size; i9++) {
                arrayList2.add(arrayMap.keyAt(i9));
                arrayList.add(arrayMap.valueAt(i9));
            }
            if (z11) {
                enterTransitionCallback.onSharedElementStart(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.onSharedElementEnd(arrayList2, arrayList, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String findKeyForValue(ArrayMap<String, String> arrayMap, String str) {
        int size = arrayMap.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (str.equals(arrayMap.valueAt(i9))) {
                return arrayMap.keyAt(i9);
            }
        }
        return null;
    }

    private static FragmentTransitionImpl resolveSupportImpl() {
        try {
            return (FragmentTransitionImpl) FragmentTransitionSupport.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void retainValues(@NonNull ArrayMap<String, String> arrayMap, @NonNull ArrayMap<String, View> arrayMap2) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            if (!arrayMap2.containsKey(arrayMap.valueAt(size))) {
                arrayMap.removeAt(size);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setViewVisibility(ArrayList<View> arrayList, int i9) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean supportsTransition() {
        return (PLATFORM_IMPL == null && SUPPORT_IMPL == null) ? false : true;
    }
}
