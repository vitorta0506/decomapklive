package cn.jiguang.api;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public abstract class JRequest extends JProtocol {
    public JRequest(int i9, int i10, long j10) {
        super(true, i9, i10, j10);
    }

    public JRequest(Object obj, ByteBuffer byteBuffer) {
        super(true, obj, byteBuffer);
    }

    public void setJuid(long j10) {
        this.head.a(j10);
    }

    public void setSid(int i9) {
        this.head.b(i9);
    }
}
