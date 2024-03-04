package k2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.b0;
import java.nio.ByteBuffer;
import java.util.UUID;
/* loaded from: classes.dex */
public final class l {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final UUID f53462a;

        /* renamed from: b  reason: collision with root package name */
        private final int f53463b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f53464c;

        public a(UUID uuid, int i9, byte[] bArr) {
            this.f53462a = uuid;
            this.f53463b = i9;
            this.f53464c = bArr;
        }
    }

    public static byte[] a(UUID uuid, @Nullable byte[] bArr) {
        return b(uuid, null, bArr);
    }

    public static byte[] b(UUID uuid, @Nullable UUID[] uuidArr, @Nullable byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(1886614376);
        allocate.putInt(uuidArr != null ? 16777216 : 0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    public static boolean c(byte[] bArr) {
        return d(bArr) != null;
    }

    @Nullable
    private static a d(byte[] bArr) {
        b0 b0Var = new b0(bArr);
        if (b0Var.f() < 32) {
            return null;
        }
        b0Var.P(0);
        if (b0Var.n() == b0Var.a() + 4 && b0Var.n() == 1886614376) {
            int c10 = k2.a.c(b0Var.n());
            if (c10 > 1) {
                com.google.android.exoplayer2.util.r.i("PsshAtomUtil", "Unsupported pssh version: " + c10);
                return null;
            }
            UUID uuid = new UUID(b0Var.w(), b0Var.w());
            if (c10 == 1) {
                b0Var.Q(b0Var.H() * 16);
            }
            int H = b0Var.H();
            if (H != b0Var.a()) {
                return null;
            }
            byte[] bArr2 = new byte[H];
            b0Var.j(bArr2, 0, H);
            return new a(uuid, c10, bArr2);
        }
        return null;
    }

    @Nullable
    public static byte[] e(byte[] bArr, UUID uuid) {
        a d10 = d(bArr);
        if (d10 == null) {
            return null;
        }
        if (!uuid.equals(d10.f53462a)) {
            com.google.android.exoplayer2.util.r.i("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + d10.f53462a + ".");
            return null;
        }
        return d10.f53464c;
    }

    @Nullable
    public static UUID f(byte[] bArr) {
        a d10 = d(bArr);
        if (d10 == null) {
            return null;
        }
        return d10.f53462a;
    }

    public static int g(byte[] bArr) {
        a d10 = d(bArr);
        if (d10 == null) {
            return -1;
        }
        return d10.f53463b;
    }
}
