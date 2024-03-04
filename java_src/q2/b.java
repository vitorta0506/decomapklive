package q2;

import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f57104a;

    /* renamed from: b  reason: collision with root package name */
    private final DataOutputStream f57105b;

    public b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f57104a = byteArrayOutputStream;
        this.f57105b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(EventMessage eventMessage) {
        this.f57104a.reset();
        try {
            b(this.f57105b, eventMessage.schemeIdUri);
            String str = eventMessage.value;
            if (str == null) {
                str = "";
            }
            b(this.f57105b, str);
            this.f57105b.writeLong(eventMessage.durationMs);
            this.f57105b.writeLong(eventMessage.f6327id);
            this.f57105b.write(eventMessage.messageData);
            this.f57105b.flush();
            return this.f57104a.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
