package wd;

import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.scwang.smartrefresh.layout.constant.SpinnerStyle;
/* loaded from: classes4.dex */
public interface h extends zd.f {
    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void a(@NonNull j jVar, int i9, int i10);

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    int c(@NonNull j jVar, boolean z10);

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void g(@NonNull i iVar, int i9, int i10);

    @NonNull
    SpinnerStyle getSpinnerStyle();

    @NonNull
    View getView();

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void h(float f10, int i9, int i10);

    boolean j();

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void k(@NonNull j jVar, int i9, int i10);

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void o(boolean z10, float f10, int i9, int i10, int i11);

    @RestrictTo({RestrictTo.Scope.LIBRARY, RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.SUBCLASSES})
    void setPrimaryColors(@ColorInt int... iArr);
}
