package com.guochao.faceshow.aaspring.modulars.friend.bean;

import com.guochao.faceshow.aaspring.db.GroupInfo;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/bean/GroupListBean;", "", "()V", "code", "", "getCode", "()I", "setCode", "(I)V", "data", "Lcom/guochao/faceshow/aaspring/modulars/friend/bean/GroupListBean$Data;", "getData", "()Lcom/guochao/faceshow/aaspring/modulars/friend/bean/GroupListBean$Data;", "setData", "(Lcom/guochao/faceshow/aaspring/modulars/friend/bean/GroupListBean$Data;)V", "Data", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GroupListBean {
    private int code;
    @Nullable
    private Data data;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/friend/bean/GroupListBean$Data;", "", "()V", "list", "", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "getList", "()Ljava/util/List;", "setList", "(Ljava/util/List;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Data {
        @Nullable
        private List<GroupInfo> list;

        @Nullable
        public final List<GroupInfo> getList() {
            return this.list;
        }

        public final void setList(@Nullable List<GroupInfo> list) {
            this.list = list;
        }
    }

    public final int getCode() {
        return this.code;
    }

    @Nullable
    public final Data getData() {
        return this.data;
    }

    public final void setCode(int i9) {
        this.code = i9;
    }

    public final void setData(@Nullable Data data) {
        this.data = data;
    }
}
