package androidx.fragment.app;

import android.os.Bundle;
import androidx.annotation.IdRes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a;\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00012\b\b\u0001\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0086\b\u001a-\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0086\b\u001a;\u0010\n\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00012\b\b\u0001\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0086\b¨\u0006\u000b"}, d2 = {"add", "Landroidx/fragment/app/FragmentTransaction;", "F", "Landroidx/fragment/app/Fragment;", "containerViewId", "", "tag", "", "args", "Landroid/os/Bundle;", "replace", "fragment-ktx_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes.dex */
public final class FragmentTransactionKt {
    public static final /* synthetic */ <F extends Fragment> FragmentTransaction add(FragmentTransaction add, @IdRes int i9, String str, Bundle bundle) {
        Intrinsics.checkNotNullParameter(add, "$this$add");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction add2 = add.add(i9, Fragment.class, bundle, str);
        Intrinsics.checkNotNullExpressionValue(add2, "add(containerViewId, F::class.java, args, tag)");
        return add2;
    }

    public static /* synthetic */ FragmentTransaction add$default(FragmentTransaction add, int i9, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        Intrinsics.checkNotNullParameter(add, "$this$add");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction add2 = add.add(i9, Fragment.class, bundle, str);
        Intrinsics.checkNotNullExpressionValue(add2, "add(containerViewId, F::class.java, args, tag)");
        return add2;
    }

    public static final /* synthetic */ <F extends Fragment> FragmentTransaction replace(FragmentTransaction replace, @IdRes int i9, String str, Bundle bundle) {
        Intrinsics.checkNotNullParameter(replace, "$this$replace");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction replace2 = replace.replace(i9, Fragment.class, bundle, str);
        Intrinsics.checkNotNullExpressionValue(replace2, "replace(containerViewId, F::class.java, args, tag)");
        return replace2;
    }

    public static /* synthetic */ FragmentTransaction replace$default(FragmentTransaction replace, int i9, String str, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        if ((i10 & 4) != 0) {
            bundle = null;
        }
        Intrinsics.checkNotNullParameter(replace, "$this$replace");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction replace2 = replace.replace(i9, Fragment.class, bundle, str);
        Intrinsics.checkNotNullExpressionValue(replace2, "replace(containerViewId, F::class.java, args, tag)");
        return replace2;
    }

    public static final /* synthetic */ <F extends Fragment> FragmentTransaction add(FragmentTransaction add, String tag, Bundle bundle) {
        Intrinsics.checkNotNullParameter(add, "$this$add");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction add2 = add.add(Fragment.class, bundle, tag);
        Intrinsics.checkNotNullExpressionValue(add2, "add(F::class.java, args, tag)");
        return add2;
    }

    public static /* synthetic */ FragmentTransaction add$default(FragmentTransaction add, String tag, Bundle bundle, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            bundle = null;
        }
        Intrinsics.checkNotNullParameter(add, "$this$add");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction add2 = add.add(Fragment.class, bundle, tag);
        Intrinsics.checkNotNullExpressionValue(add2, "add(F::class.java, args, tag)");
        return add2;
    }
}
