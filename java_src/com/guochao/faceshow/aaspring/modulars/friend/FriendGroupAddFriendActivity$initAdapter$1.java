package com.guochao.faceshow.aaspring.modulars.friend;

import android.view.View;
import android.widget.ImageView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.db.FriendInfo;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"com/guochao/faceshow/aaspring/modulars/friend/FriendGroupAddFriendActivity$initAdapter$1", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/db/FriendInfo;", "convert", "", "holder", "Lcom/guochao/faceshow/aaspring/modulars/friend/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendGroupAddFriendActivity$initAdapter$1 extends CommonRecyclerAdapter<FriendInfo> {
    final /* synthetic */ FriendGroupAddFriendActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FriendGroupAddFriendActivity$initAdapter$1(FriendGroupAddFriendActivity friendGroupAddFriendActivity, List<FriendInfo> list) {
        super(friendGroupAddFriendActivity, list, R.layout.select_friend_item);
        this.this$0 = friendGroupAddFriendActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-3  reason: not valid java name */
    public static final void m373convert$lambda3(FriendGroupAddFriendActivity this$0, int i9, FriendGroupAddFriendActivity$initAdapter$1 this$1, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        List<FriendInfo> friendList = this$0.getFriendList();
        List<FriendInfo> mutableList = friendList != null ? CollectionsKt___CollectionsKt.toMutableList((Collection) friendList) : null;
        if (mutableList != null) {
            mutableList.remove(i9);
        }
        this$0.setFriendList(mutableList);
        List<FriendInfo> friendList2 = this$0.getFriendList();
        if (friendList2 != null) {
            this$1.setData(friendList2);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.friend.adapter.CommonRecyclerAdapter
    public void convert(@Nullable BaseViewHolder baseViewHolder, @Nullable FriendInfo friendInfo, final int i9) {
        ImageView imageView;
        String countryFlag;
        String headImg;
        if (friendInfo != null && (headImg = friendInfo.getHeadImg()) != null && baseViewHolder != null) {
            baseViewHolder.setImageByUrl(R.id.avatar_view, headImg, R.mipmap.default_head);
        }
        if (baseViewHolder != null) {
            baseViewHolder.setText(R.id.user_name, friendInfo != null ? friendInfo.getNickName() : null);
        }
        if (baseViewHolder != null) {
            baseViewHolder.setImageResource(R.id.check_status, R.mipmap.select_friend_checked);
        }
        if (friendInfo != null && (countryFlag = friendInfo.getCountryFlag()) != null && baseViewHolder != null) {
            baseViewHolder.setImageByUrl(R.id.flag, countryFlag, 0);
        }
        if (baseViewHolder == null || (imageView = (ImageView) baseViewHolder.getView(R.id.check_status)) == null) {
            return;
        }
        final FriendGroupAddFriendActivity friendGroupAddFriendActivity = this.this$0;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.aaspring.modulars.friend.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FriendGroupAddFriendActivity$initAdapter$1.m373convert$lambda3(FriendGroupAddFriendActivity.this, i9, this, view);
            }
        });
    }
}
