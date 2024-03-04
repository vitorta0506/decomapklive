package cn.jiguang.api;

import cn.jiguang.api.utils.ProtocolUtil;
import cn.jiguang.bf.c;
import cn.jiguang.bf.d;
import cn.jiguang.bf.f;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class JProtocol {
    public static final int DEFAULT_RESP_CODE = 0;
    public static final int DEFAULT_RID = 0;
    public static final int DEFAULT_SID = 0;
    public static final int NO_JUID = -1;
    public static final int NO_RESP_CODE = -1;
    public static final int NO_SID = -1;
    private static final int PACKET_SIZE = 7168;
    private static final String TAG = "JProtocol";
    protected ByteBuffer body;
    protected c head;
    private boolean isRequest;

    public JProtocol(boolean z10, int i9, int i10, long j10) {
        this.isRequest = z10;
        this.head = new c(z10, i9, i10, j10);
        this.body = ByteBuffer.allocate(PACKET_SIZE);
    }

    public JProtocol(boolean z10, int i9, int i10, long j10, int i11, long j11) {
        this.isRequest = z10;
        this.head = new c(z10, 0, i9, i10, j10, i11, j11);
        this.body = ByteBuffer.allocate(PACKET_SIZE);
    }

    public JProtocol(boolean z10, Object obj, ByteBuffer byteBuffer) {
        this.isRequest = z10;
        this.head = (c) obj;
        if (byteBuffer == null) {
            d.c(TAG, "No body to parse.");
            return;
        }
        this.body = byteBuffer;
        parseBody();
    }

    public JProtocol(boolean z10, ByteBuffer byteBuffer, byte[] bArr) {
        this.isRequest = z10;
        try {
            this.head = new c(z10, bArr);
        } catch (Exception e10) {
            d.c(TAG, "create JHead failed:" + e10.getMessage());
        }
        if (byteBuffer == null) {
            d.c(TAG, "No body to parse.");
            return;
        }
        this.body = byteBuffer;
        parseBody();
    }

    public static byte[] parseHead(Object obj) {
        String str;
        if (obj == null) {
            str = "object was null";
        } else if (obj instanceof c) {
            return ((c) obj).f();
        } else {
            str = "unknow Object";
        }
        d.c(TAG, str);
        return null;
    }

    private final byte[] toBytes() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bytes = ProtocolUtil.getBytes(this.body);
        if (bytes == null) {
            d.c(TAG, "toBytes bodyBytes  is  null");
            return null;
        }
        this.head.a((this.isRequest ? 24 : 20) + bytes.length);
        try {
            byteArrayOutputStream.write(this.head.f());
            byteArrayOutputStream.write(bytes);
        } catch (Exception unused) {
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        d.b(TAG, "Final - len:" + byteArray.length + ", bytes: " + f.a(byteArray));
        return byteArray;
    }

    public ByteBuffer getBody() {
        return this.body;
    }

    public int getCommand() {
        return this.head.a();
    }

    public c getHead() {
        return this.head;
    }

    public long getJuid() {
        return this.head.c();
    }

    public abstract String getName();

    public Long getRid() {
        return this.head.b();
    }

    public int getSid() {
        return this.head.d();
    }

    public int getVersion() {
        return this.head.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean isNeedParseeErrorMsg();

    protected abstract void parseBody();

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.isRequest ? "[Request]" : "[Response]");
        sb2.append(" - ");
        sb2.append(this.head.toString());
        return sb2.toString();
    }

    protected abstract void writeBody();

    public final byte[] writeBodyAndToBytes() {
        this.body.clear();
        writeBody();
        this.body.flip();
        return toBytes();
    }

    protected void writeBytes(byte[] bArr) {
        this.body.put(bArr);
    }

    protected void writeInt1(int i9) {
        this.body.put((byte) i9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeInt2(int i9) {
        this.body.putShort((short) i9);
    }

    protected void writeInt4(int i9) {
        this.body.putInt(i9);
    }

    protected void writeLong8(long j10) {
        this.body.putLong(j10);
    }

    protected void writeTlv2(String str) {
        this.body.put(ProtocolUtil.tlv2ToByteArray(str));
    }
}
