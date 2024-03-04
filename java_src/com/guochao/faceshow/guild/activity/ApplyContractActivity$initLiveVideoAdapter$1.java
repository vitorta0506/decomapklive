package com.guochao.faceshow.guild.activity;

import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import com.guochao.faceshow.adapter.BaseViewHolder;
import com.guochao.faceshow.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"com/guochao/faceshow/guild/activity/ApplyContractActivity$initLiveVideoAdapter$1", "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;", "Landroid/net/Uri;", "convert", "", "holder", "Lcom/guochao/faceshow/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ApplyContractActivity$initLiveVideoAdapter$1 extends CommonRecyclerAdapter<Uri> {
    final /* synthetic */ ApplyContractActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyContractActivity$initLiveVideoAdapter$1(ApplyContractActivity applyContractActivity, ArrayList<Uri> arrayList, int i9) {
        super(applyContractActivity, arrayList, i9);
        this.this$0 = applyContractActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-1  reason: not valid java name */
    public static final void m695convert$lambda1(ApplyContractActivity this$0, int i9, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().removeVideoRecordScreenLive(i9);
    }

    @Override // com.guochao.faceshow.adapter.CommonRecyclerAdapter
    public void convert(@Nullable BaseViewHolder baseViewHolder, @NotNull Uri item, final int i9) {
        ImageView imageView;
        Intrinsics.checkNotNullParameter(item, "item");
        if (baseViewHolder != null) {
            baseViewHolder.setRoundImageByUri(R$id.cover, item, 0);
        }
        if (baseViewHolder == null || (imageView = (ImageView) baseViewHolder.getView(R$id.delete_cover)) == null) {
            return;
        }
        final ApplyContractActivity applyContractActivity = this.this$0;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ApplyContractActivity$initLiveVideoAdapter$1.m695convert$lambda1(ApplyContractActivity.this, i9, view);
            }
        });
    }
}
