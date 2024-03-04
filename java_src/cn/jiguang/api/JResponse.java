package cn.jiguang.api;

import cn.jiguang.api.utils.ByteBufferUtils;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class JResponse extends JProtocol {
    public int code;

    public JResponse(int i9, int i10, long j10, long j11, int i11, String str) {
        super(false, i9, i10, j10, -1, j11);
        this.code = i11;
    }

    public JResponse(Object obj, ByteBuffer byteBuffer) {
        super(false, obj, byteBuffer);
    }

    public JResponse(ByteBuffer byteBuffer, byte[] bArr) {
        super(false, byteBuffer, bArr);
    }

    @Override // cn.jiguang.api.JProtocol
    protected void parseBody() {
        if (isNeedParseeErrorMsg()) {
            this.code = ByteBufferUtils.getShort(this.body, this);
        }
    }

    @Override // cn.jiguang.api.JProtocol
    public String toString() {
        return "JResponse{code=" + this.code + '}';
    }

    @Override // cn.jiguang.api.JProtocol
    protected void writeBody() {
        int i9 = this.code;
        if (i9 >= 0) {
            writeInt2(i9);
        }
    }
}
