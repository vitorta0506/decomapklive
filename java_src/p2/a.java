package p2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.dvbsi.AppInfoTable;
import com.google.android.exoplayer2.util.a0;
import com.google.common.base.e;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import o2.d;
import o2.f;
/* loaded from: classes.dex */
public final class a extends f {
    @Nullable
    private static Metadata c(a0 a0Var) {
        a0Var.r(12);
        int d10 = (a0Var.d() + a0Var.h(12)) - 4;
        a0Var.r(44);
        a0Var.s(a0Var.h(12));
        a0Var.r(16);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String str = null;
            if (a0Var.d() >= d10) {
                break;
            }
            a0Var.r(48);
            int h10 = a0Var.h(8);
            a0Var.r(4);
            int d11 = a0Var.d() + a0Var.h(12);
            String str2 = null;
            while (a0Var.d() < d11) {
                int h11 = a0Var.h(8);
                int h12 = a0Var.h(8);
                int d12 = a0Var.d() + h12;
                if (h11 == 2) {
                    int h13 = a0Var.h(16);
                    a0Var.r(8);
                    if (h13 != 3) {
                    }
                    while (a0Var.d() < d12) {
                        str = a0Var.l(a0Var.h(8), e.f12354a);
                        int h14 = a0Var.h(8);
                        for (int i9 = 0; i9 < h14; i9++) {
                            a0Var.s(a0Var.h(8));
                        }
                    }
                } else if (h11 == 21) {
                    str2 = a0Var.l(h12, e.f12354a);
                }
                a0Var.p(d12 * 8);
            }
            a0Var.p(d11 * 8);
            if (str != null && str2 != null) {
                arrayList.add(new AppInfoTable(h10, str + str2));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    @Override // o2.f
    @Nullable
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            return c(new a0(byteBuffer.array(), byteBuffer.limit()));
        }
        return null;
    }
}
