package com.guochao.faceshow.aaspring.modulars.friend;

import android.view.View;
import android.widget.PopupWindow;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.db.GroupInfo;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"com/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity$initAdapter$1", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/db/GroupInfo;", "convert", "", "holder", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendGroupMangerActivity$initAdapter$1 extends CommonRecyclerAdapter<GroupInfo> {
    final /* synthetic */ FriendGroupMangerActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendGroupMangerActivity$initAdapter$1(FriendGroupMangerActivity friendGroupMangerActivity, ArrayList<GroupInfo> arrayList) {
        super(friendGroupMangerActivity, arrayList, R.layout.friend_group_manager_group_item);
        this.this$0 = friendGroupMangerActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-1  reason: not valid java name */
    public static final void m380convert$lambda1(FriendGroupMangerActivity this$0, GroupInfo groupInfo, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PopupWindow mDeletePop = this$0.getMDeletePop();
        if (mDeletePop != null) {
            mDeletePop.dismiss();
        }
        Integer valueOf = groupInfo != null ? Integer.valueOf(groupInfo.getId()) : null;
        if (valueOf != null && valueOf.intValue() == 0) {
            String string = this$0.getString(R.string.friend_group_delect_default_tip);
            Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.frien…group_delect_default_tip)");
            ToastUtils.showToast$default(this$0, string, 0, 0, 12, null);
            return;
        }
        this$0.getViewModel().deleteGroup(this$0, valueOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* renamed from: convert$lambda-2  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m381convert$lambda2(final com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity r2, com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder r3, com.guochao.faceshow.aaspring.db.GroupInfo r4, android.view.View r5) {
        /*
            java.lang.String r5 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r5)
            int r3 = r3.getBindingAdapterPosition()
            r2.setCurrentIndex(r3)
            r3 = 1
            r5 = 0
            if (r4 == 0) goto L18
            int r0 = r4.getId()
            if (r0 != 0) goto L18
            r0 = 1
            goto L19
        L18:
            r0 = 0
        L19:
            r1 = 0
            if (r0 == 0) goto L38
            if (r4 == 0) goto L23
            java.lang.String r0 = r4.getName()
            goto L24
        L23:
            r0 = r1
        L24:
            if (r0 == 0) goto L2e
            int r0 = r0.length()
            if (r0 != 0) goto L2d
            goto L2e
        L2d:
            r3 = 0
        L2e:
            if (r3 == 0) goto L38
            r3 = 2131887514(0x7f12059a, float:1.9409637E38)
            java.lang.String r3 = r2.getString(r3)
            goto L42
        L38:
            if (r4 == 0) goto L3e
            java.lang.String r1 = r4.getName()
        L3e:
            java.lang.String r3 = java.lang.String.valueOf(r1)
        L42:
            java.lang.String r4 = "if (item?.id == 0 && ite…g()\n                    }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
            s8.c r4 = r2.getMRenameGroupDialog()
            if (r4 != 0) goto L6a
            s8.c r4 = new s8.c
            com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity$initAdapter$1$convert$2$1 r5 = new com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity$initAdapter$1$convert$2$1
            r5.<init>()
            r4.<init>(r2, r5)
            s8.c r3 = r4.e(r3)
            r4 = 2131887031(0x7f1203b7, float:1.9408658E38)
            java.lang.String r4 = r2.getString(r4)
            s8.c r3 = r3.d(r4)
            r2.setMRenameGroupDialog(r3)
            goto L8c
        L6a:
            s8.c r4 = r2.getMRenameGroupDialog()
            if (r4 == 0) goto L79
            android.widget.EditText r4 = r4.b()
            if (r4 == 0) goto L79
            r4.setText(r3)
        L79:
            s8.c r4 = r2.getMRenameGroupDialog()
            if (r4 == 0) goto L8c
            android.widget.EditText r4 = r4.b()
            if (r4 == 0) goto L8c
            int r3 = r3.length()
            r4.setSelection(r3)
        L8c:
            s8.c r2 = r2.getMRenameGroupDialog()
            if (r2 == 0) goto L95
            r2.show()
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity$initAdapter$1.m381convert$lambda2(com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity, com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder, com.guochao.faceshow.aaspring.db.GroupInfo, android.view.View):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0083  */
    @Override // com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void convert(@org.jetbrains.annotations.Nullable final com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder r5, @org.jetbrains.annotations.Nullable final com.guochao.faceshow.aaspring.db.GroupInfo r6, int r7) {
        /*
            r4 = this;
            r7 = 1
            r0 = 0
            if (r6 == 0) goto Lc
            int r1 = r6.getId()
            if (r1 != 0) goto Lc
            r1 = 1
            goto Ld
        Lc:
            r1 = 0
        Ld:
            r2 = 2131362978(0x7f0a04a2, float:1.8345752E38)
            r3 = 0
            if (r1 == 0) goto L36
            if (r6 == 0) goto L1a
            java.lang.String r1 = r6.getName()
            goto L1b
        L1a:
            r1 = r3
        L1b:
            if (r1 == 0) goto L25
            int r1 = r1.length()
            if (r1 != 0) goto L24
            goto L25
        L24:
            r7 = 0
        L25:
            if (r7 == 0) goto L36
            if (r5 == 0) goto L75
            com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity r7 = r4.this$0
            r0 = 2131887514(0x7f12059a, float:1.9409637E38)
            java.lang.String r7 = r7.getString(r0)
            r5.setText(r2, r7)
            goto L75
        L36:
            if (r5 == 0) goto L75
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            if (r6 == 0) goto L44
            java.lang.String r0 = r6.getName()
            goto L45
        L44:
            r0 = r3
        L45:
            r7.append(r0)
            java.lang.String r0 = " ("
            r7.append(r0)
            if (r6 == 0) goto L5e
            java.util.List r0 = r6.getList()
            if (r0 == 0) goto L5e
            int r0 = r0.size()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            goto L66
        L5e:
            if (r6 == 0) goto L65
            java.lang.Integer r0 = r6.getMemberNum()
            goto L66
        L65:
            r0 = r3
        L66:
            r7.append(r0)
            r0 = 41
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            r5.setText(r2, r7)
        L75:
            r7 = 2131362474(0x7f0a02aa, float:1.834473E38)
            if (r5 == 0) goto L7f
            android.view.View r0 = r5.getView(r7)
            goto L80
        L7f:
            r0 = r3
        L80:
            if (r0 != 0) goto L83
            goto L8f
        L83:
            if (r5 == 0) goto L8c
            r1 = 2131362469(0x7f0a02a5, float:1.834472E38)
            android.view.View r3 = r5.getView(r1)
        L8c:
            r0.setTag(r3)
        L8f:
            if (r5 == 0) goto La1
            android.view.View r7 = r5.getView(r7)
            if (r7 == 0) goto La1
            com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity r0 = r4.this$0
            com.guochao.faceshow.aaspring.modulars.friend.m r1 = new com.guochao.faceshow.aaspring.modulars.friend.m
            r1.<init>()
            r7.setOnClickListener(r1)
        La1:
            if (r5 == 0) goto Lb1
            android.view.View r7 = r5.itemView
            if (r7 == 0) goto Lb1
            com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity r0 = r4.this$0
            com.guochao.faceshow.aaspring.modulars.friend.n r1 = new com.guochao.faceshow.aaspring.modulars.friend.n
            r1.<init>()
            r7.setOnClickListener(r1)
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.friend.FriendGroupMangerActivity$initAdapter$1.convert(com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder, com.guochao.faceshow.aaspring.db.GroupInfo, int):void");
    }
}
