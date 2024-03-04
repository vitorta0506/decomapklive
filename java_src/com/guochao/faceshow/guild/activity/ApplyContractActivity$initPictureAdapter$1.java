package com.guochao.faceshow.guild.activity;

import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.guochao.faceshow.aaspring.base.navigator.ARouterNavigator;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.adapter.BaseViewHolder;
import com.guochao.faceshow.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$mipmap;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"com/guochao/faceshow/guild/activity/ApplyContractActivity$initPictureAdapter$1", "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;", "convert", "", "holder", "Lcom/guochao/faceshow/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ApplyContractActivity$initPictureAdapter$1 extends CommonRecyclerAdapter<LocalImageOrVideoBean> {
    final /* synthetic */ ApplyContractActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyContractActivity$initPictureAdapter$1(ApplyContractActivity applyContractActivity, ArrayList<LocalImageOrVideoBean> arrayList, int i9) {
        super(applyContractActivity, arrayList, i9);
        this.this$0 = applyContractActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-0  reason: not valid java name */
    public static final void m696convert$lambda0(ApplyContractActivity this$0, int i9, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().removePicture(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-1  reason: not valid java name */
    public static final void m697convert$lambda1(ApplyContractActivity this$0, LocalImageOrVideoBean item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        if (this$0.getViewModel().isAddPicButton(item)) {
            Bundle bundle = new Bundle();
            ArrayList<LocalImageOrVideoBean> removeAddPicButton = this$0.getViewModel().removeAddPicButton();
            Integer valueOf = removeAddPicButton != null ? Integer.valueOf(removeAddPicButton.size()) : null;
            Intrinsics.checkNotNull(valueOf);
            bundle.putInt(Contants.PARAMS_KEY2, 5 - valueOf.intValue());
            new ARouterNavigator(this$0, RouterPath.ROUTER_APP_SIMPLE_MEDIA_ACTIVITY).withParams(bundle).requestCode(this$0.getViewModel().getPICTURE()).go();
        }
    }

    @Override // com.guochao.faceshow.adapter.CommonRecyclerAdapter
    public void convert(@Nullable BaseViewHolder baseViewHolder, @NotNull final LocalImageOrVideoBean item, final int i9) {
        ImageView imageView;
        View view;
        ImageView imageView2;
        Intrinsics.checkNotNullParameter(item, "item");
        if (this.this$0.getViewModel().isAddPicButton(item)) {
            imageView = baseViewHolder != null ? (ImageView) baseViewHolder.getView(R$id.delete_cover) : null;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (baseViewHolder != null) {
                baseViewHolder.setImageResource(R$id.cover, R$mipmap.add_image_icon);
            }
        } else {
            imageView = baseViewHolder != null ? (ImageView) baseViewHolder.getView(R$id.delete_cover) : null;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            if (baseViewHolder != null) {
                int i10 = R$id.cover;
                Uri uri = item.getUri();
                Intrinsics.checkNotNullExpressionValue(uri, "item.uri");
                baseViewHolder.setRoundImageByUri(i10, uri, 0);
            }
        }
        if (baseViewHolder != null && (imageView2 = (ImageView) baseViewHolder.getView(R$id.delete_cover)) != null) {
            final ApplyContractActivity applyContractActivity = this.this$0;
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ApplyContractActivity$initPictureAdapter$1.m696convert$lambda0(ApplyContractActivity.this, i9, view2);
                }
            });
        }
        if (baseViewHolder == null || (view = baseViewHolder.itemView) == null) {
            return;
        }
        final ApplyContractActivity applyContractActivity2 = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ApplyContractActivity$initPictureAdapter$1.m697convert$lambda1(ApplyContractActivity.this, item, view2);
            }
        });
    }
}
