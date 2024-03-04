package cn.jpush.android.local;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class JPushResponse {
    public ByteBuffer body;
    public int cmd;
    public long rid;
    public long rquestId;

    public JPushResponse(int i9, long j10, long j11, ByteBuffer byteBuffer) {
        this.cmd = i9;
        this.rid = j10;
        this.body = byteBuffer;
        this.rquestId = j11;
    }

    public ByteBuffer getBody() {
        return this.body;
    }

    public int getCmd() {
        return this.cmd;
    }

    public long getRid() {
        return this.rid;
    }

    public long getRquestId() {
        return this.rquestId;
    }

    protected void parseBody() {
    }

    public void setBody(ByteBuffer byteBuffer) {
        this.body = byteBuffer;
    }

    public void setCmd(int i9) {
        this.cmd = i9;
    }

    public void setRid(long j10) {
        this.rid = j10;
    }

    public void setRquestId(long j10) {
        this.rquestId = j10;
    }

    public String toString() {
        return "JPushResponse{cmd=" + this.cmd + ", rid=" + this.rid + ", rquestId=" + this.rquestId + '}';
    }
}
