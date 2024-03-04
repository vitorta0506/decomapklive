package com.guochao.faceshow.aaspring.beans;

import com.facebook.internal.NativeProtocol;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/FriendsRelation;", "", "()V", NativeProtocol.AUDIENCE_FRIENDS, "", "", "getFriends", "()Ljava/util/List;", "setFriends", "(Ljava/util/List;)V", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendsRelation {
    @NotNull
    private List<String> friends = new ArrayList();

    @NotNull
    public final List<String> getFriends() {
        return this.friends;
    }

    public final void setFriends(@NotNull List<String> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.friends = list;
    }
}
