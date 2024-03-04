package com.guochao.faceshow.aaspring.modulars.friend;

import android.view.MenuItem;
import android.view.View;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"com/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity$initAdapter$1", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "convert", "", "holder", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendSetGroupActivity$initAdapter$1 extends CommonRecyclerAdapter<GroupInfo> {
    final /* synthetic */ FriendSetGroupActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendSetGroupActivity$initAdapter$1(FriendSetGroupActivity friendSetGroupActivity, List<GroupInfo> list) {
        super(friendSetGroupActivity, list, R.layout.friend_set_group_item);
        this.this$0 = friendSetGroupActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-0  reason: not valid java name */
    public static final void m386convert$lambda0(FriendSetGroupActivity this$0, BaseViewHolder baseViewHolder, FriendSetGroupActivity$initAdapter$1 this$1, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        this$0.setCheckIndex(baseViewHolder.getAbsoluteAdapterPosition());
        MenuItem menuItem = this$0.getMenuItem();
        if (menuItem != null) {
            menuItem.setEnabled(true);
        }
        this$1.notifyDataSetChanged();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x005a  */
    @Override // com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void convert(@org.jetbrains.annotations.Nullable final com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder r6, @org.jetbrains.annotations.Nullable com.guochao.faceshow.aaspring.db.GroupInfo r7, int r8) {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            if (r7 == 0) goto Lc
            int r2 = r7.getId()
            if (r2 != 0) goto Lc
            r2 = 1
            goto Ld
        Lc:
            r2 = 0
        Ld:
            r3 = 2131362978(0x7f0a04a2, float:1.8345752E38)
            r4 = 0
            if (r2 == 0) goto L32
            java.lang.String r2 = r7.getName()
            if (r2 == 0) goto L21
            int r2 = r2.length()
            if (r2 != 0) goto L20
            goto L21
        L20:
            r0 = 0
        L21:
            if (r0 == 0) goto L32
            if (r6 == 0) goto L3f
            com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity r7 = r5.this$0
            r0 = 2131887514(0x7f12059a, float:1.9409637E38)
            java.lang.String r7 = r7.getString(r0)
            r6.setText(r3, r7)
            goto L3f
        L32:
            if (r6 == 0) goto L3f
            if (r7 == 0) goto L3b
            java.lang.String r7 = r7.getName()
            goto L3c
        L3b:
            r7 = r4
        L3c:
            r6.setText(r3, r7)
        L3f:
            com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity r7 = r5.this$0
            int r7 = r7.getCheckIndex()
            r0 = 2131364573(0x7f0a0add, float:1.8348987E38)
            if (r7 != r8) goto L5a
            if (r6 == 0) goto L53
            android.view.View r7 = r6.getView(r0)
            r4 = r7
            android.widget.ImageView r4 = (android.widget.ImageView) r4
        L53:
            if (r4 != 0) goto L56
            goto L6b
        L56:
            r4.setVisibility(r1)
            goto L6b
        L5a:
            if (r6 == 0) goto L63
            android.view.View r7 = r6.getView(r0)
            r4 = r7
            android.widget.ImageView r4 = (android.widget.ImageView) r4
        L63:
            if (r4 != 0) goto L66
            goto L6b
        L66:
            r7 = 8
            r4.setVisibility(r7)
        L6b:
            if (r6 == 0) goto L7b
            android.view.View r7 = r6.itemView
            if (r7 == 0) goto L7b
            com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity r8 = r5.this$0
            com.guochao.faceshow.aaspring.modulars.friend.s r0 = new com.guochao.faceshow.aaspring.modulars.friend.s
            r0.<init>()
            r7.setOnClickListener(r0)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.friend.FriendSetGroupActivity$initAdapter$1.convert(com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder, com.guochao.faceshow.aaspring.db.GroupInfo, int):void");
    }
}
