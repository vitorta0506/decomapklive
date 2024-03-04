package com.guochao.component.voiceliveroom.adapter;

import android.view.View;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.liveroom.databinding.ItemVoiceRoomInviteBinding;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/guochao/component/voiceliveroom/adapter/PeopleViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", ViewHierarchyConstants.VIEW_KEY, "Landroid/view/View;", "(Landroid/view/View;)V", "binding", "Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomInviteBinding;", "getBinding", "()Lcom/guochao/component/liveroom/databinding/ItemVoiceRoomInviteBinding;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PeopleViewHolder extends BaseViewHolder {
    @NotNull
    private final ItemVoiceRoomInviteBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeopleViewHolder(@NotNull View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        ItemVoiceRoomInviteBinding bind = ItemVoiceRoomInviteBinding.bind(view);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(view)");
        this.binding = bind;
    }

    @NotNull
    public final ItemVoiceRoomInviteBinding getBinding() {
        return this.binding;
    }
}
