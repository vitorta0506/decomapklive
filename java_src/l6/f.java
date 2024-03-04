package l6;

import android.util.Base64;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final byte f54219a = Byte.parseByte("01110000", 2);

    /* renamed from: b  reason: collision with root package name */
    private static final byte f54220b = Byte.parseByte("00001111", 2);

    private static String b(byte[] bArr) {
        return new String(Base64.encode(bArr, 11), Charset.defaultCharset()).substring(0, 22);
    }

    private static byte[] c(UUID uuid, byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putLong(uuid.getMostSignificantBits());
        wrap.putLong(uuid.getLeastSignificantBits());
        return wrap.array();
    }

    @NonNull
    public String a() {
        byte[] c10 = c(UUID.randomUUID(), new byte[17]);
        c10[16] = c10[0];
        c10[0] = (byte) ((f54220b & c10[0]) | f54219a);
        return b(c10);
    }
}
