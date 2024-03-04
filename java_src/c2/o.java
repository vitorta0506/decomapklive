package c2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes.dex */
public final class o {
    public static void a(boolean z10, @Nullable String str) throws ParserException {
        if (!z10) {
            throw ParserException.createForMalformedContainer(str, null);
        }
    }

    public static boolean b(m mVar, byte[] bArr, int i9, int i10, boolean z10) throws IOException {
        try {
            return mVar.d(bArr, i9, i10, z10);
        } catch (EOFException e10) {
            if (z10) {
                return false;
            }
            throw e10;
        }
    }

    public static int c(m mVar, byte[] bArr, int i9, int i10) throws IOException {
        int i11 = 0;
        while (i11 < i10) {
            int j10 = mVar.j(bArr, i9 + i11, i10 - i11);
            if (j10 == -1) {
                break;
            }
            i11 += j10;
        }
        return i11;
    }

    public static boolean d(m mVar, byte[] bArr, int i9, int i10) throws IOException {
        try {
            mVar.readFully(bArr, i9, i10);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean e(m mVar, int i9) throws IOException {
        try {
            mVar.k(i9);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
