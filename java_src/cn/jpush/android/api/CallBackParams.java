package cn.jpush.android.api;

import cn.jpush.android.helper.g;
import java.util.Set;
/* loaded from: classes.dex */
public class CallBackParams {
    public int action;
    public String alias;
    public int protoType;
    private long sendTime;
    public int sequence;
    public TagAliasCallback tagAliasCallBack;
    public Set<String> tags;

    public CallBackParams(int i9, String str, long j10, int i10, int i11) {
        this.sequence = i9;
        this.alias = str;
        this.sendTime = j10;
        this.protoType = i10;
        this.action = i11;
    }

    public CallBackParams(int i9, Set<String> set, long j10, int i10, int i11) {
        this.sequence = i9;
        this.tags = set;
        this.sendTime = j10;
        this.protoType = i10;
        this.action = i11;
    }

    public CallBackParams(String str, Set<String> set, TagAliasCallback tagAliasCallback, long j10, int i9, int i10) {
        this.alias = str;
        this.tags = set;
        this.tagAliasCallBack = tagAliasCallback;
        this.sendTime = j10;
        this.protoType = i9;
        this.action = i10;
        this.sequence = (int) g.a();
    }

    public boolean isTimeOut(long j10) {
        return this.protoType == 0 && System.currentTimeMillis() - this.sendTime > j10 + 10000;
    }

    public String toString() {
        return "CallBackParams{sendTime=" + this.sendTime + ", alias='" + this.alias + "', tags=" + this.tags + ", tagAliasCallBack=" + this.tagAliasCallBack + ", sequence=" + this.sequence + ", protoType=" + this.protoType + ", action=" + this.action + '}';
    }
}
