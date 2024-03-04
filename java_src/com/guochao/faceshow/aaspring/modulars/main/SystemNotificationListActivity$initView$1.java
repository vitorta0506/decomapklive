package com.guochao.faceshow.aaspring.modulars.main;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.AuthorityNotifyBean;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.AtMeListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.CollectionListActivity;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.activity.CommentListActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, d2 = {"com/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SystemNotificationListActivity$initView$1 extends RecyclerView.Adapter<BaseViewHolder> {
    final /* synthetic */ SystemNotificationListActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SystemNotificationListActivity$initView$1(SystemNotificationListActivity systemNotificationListActivity) {
        this.this$0 = systemNotificationListActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onBindViewHolder$lambda-1  reason: not valid java name */
    public static final void m501onBindViewHolder$lambda1(AuthorityNotifyBean item, TextView textView, View view) {
        Intrinsics.checkNotNullParameter(item, "$item");
        item.setUnreadCount(0);
        textView.setVisibility(8);
        String messageType = item.getMessageType();
        if (messageType != null) {
            switch (messageType.hashCode()) {
                case 49:
                    if (messageType.equals("1")) {
                        CommentListActivity.start(view.getContext());
                        return;
                    }
                    return;
                case 50:
                    if (messageType.equals("2")) {
                        CollectionListActivity.start(view.getContext());
                        return;
                    }
                    return;
                case 51:
                    if (messageType.equals("3")) {
                        AtMeListActivity.start(view.getContext());
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List list;
        list = this.this$0.list;
        return list.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0131  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(@org.jetbrains.annotations.NotNull com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder r11, int r12) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.main.SystemNotificationListActivity$initView$1.onBindViewHolder(com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public BaseViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i9) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(this.this$0.getLayoutInflater().inflate(R.layout.list_item_system_notification, parent, false));
    }
}
