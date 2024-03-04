package com.guochao.faceshow.adapters;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.guochao.faceshow.R;
import com.guochao.faceshow.bean.UserVoiceRoomMicro;
import com.guochao.faceshow.utils.BaseConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0002H\u0014¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/adapters/PeopleAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;", "Lcom/guochao/faceshow/adapters/PeopleViewHolder;", "()V", "convert", "", "holder", BaseConfig.ITEM, "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PeopleAdapter extends BaseQuickAdapter<UserVoiceRoomMicro, PeopleViewHolder> {
    public PeopleAdapter() {
        super(R.layout.item_user_home_page_users, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(@NotNull PeopleViewHolder holder, @NotNull UserVoiceRoomMicro item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        hc.a.p(holder.getBinding().headerIV, item.getImg(), R.mipmap.icon_head_default);
    }
}
