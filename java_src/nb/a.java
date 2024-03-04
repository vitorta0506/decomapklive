package nb;

import com.guochao.pusher.base.ILivePusher;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes4.dex */
public final /* synthetic */ class a {
    public static void a(ILivePusher iLivePusher, @Nullable String str, @Nullable String str2) {
    }

    public static /* synthetic */ void c(ILivePusher iLivePusher, String str, int i9, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setPauseImage");
        }
        if ((i11 & 2) != 0) {
            i9 = 300;
        }
        if ((i11 & 4) != 0) {
            i10 = 5;
        }
        iLivePusher.setPauseImage(str, i9, i10);
    }

    public static /* synthetic */ void d(ILivePusher iLivePusher, boolean z10, int i9, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: stopPreview");
        }
        if ((i9 & 1) != 0) {
            z10 = false;
        }
        iLivePusher.stopPreview(z10);
    }
}
