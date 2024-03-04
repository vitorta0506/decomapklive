package wd;

import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public interface j {
    j a(boolean z10);

    j b(boolean z10);

    j c(boolean z10);

    j d(int i9);

    j e(@FloatRange(from = 1.0d, to = 10.0d) float f10);

    j f(boolean z10);

    @NonNull
    ViewGroup getLayout();
}
