package com.guochao.faceshow.guild.activity;

import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.guochao.faceshow.aaspring.base.navigator.ARouterNavigator;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.adapter.BaseViewHolder;
import com.guochao.faceshow.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.R$mipmap;
import com.guochao.faceshow.guild.R$string;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"com/guochao/faceshow/guild/activity/ApplyTerminationActivity$initPictureAdapter$1", "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;", "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;", "convert", "", "holder", "Lcom/guochao/faceshow/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ApplyTerminationActivity$initPictureAdapter$1 extends CommonRecyclerAdapter<LocalImageOrVideoBean> {
    final /* synthetic */ ApplyTerminationActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApplyTerminationActivity$initPictureAdapter$1(ApplyTerminationActivity applyTerminationActivity, ArrayList<LocalImageOrVideoBean> arrayList, int i9) {
        super(applyTerminationActivity, arrayList, i9);
        this.this$0 = applyTerminationActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-0  reason: not valid java name */
    public static final void m702convert$lambda0(ApplyTerminationActivity this$0, int i9, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getViewModel().removePicture(i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-2  reason: not valid java name */
    public static final void m703convert$lambda2(ApplyTerminationActivity this$0, LocalImageOrVideoBean item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        if (this$0.getViewModel().isAddPicButton(item)) {
            ArrayList<LocalImageOrVideoBean> value = this$0.getViewModel().getSelectPictureList().getValue();
            if (value != null && value.size() > 3) {
                ToastUtils.showToast$default(this$0, R$string.guild_upload_photo_size_tip, 0, 4, null);
                return;
            }
            Bundle bundle = new Bundle();
            int max_picature = this$0.getViewModel().getMAX_PICATURE() - 1;
            ArrayList<LocalImageOrVideoBean> removeAddPicButton = this$0.getViewModel().removeAddPicButton();
            Integer valueOf = removeAddPicButton != null ? Integer.valueOf(removeAddPicButton.size()) : null;
            Intrinsics.checkNotNull(valueOf);
            bundle.putInt(Contants.PARAMS_KEY2, max_picature - valueOf.intValue());
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
                baseViewHolder.setImageByUri(i10, uri, 0);
            }
        }
        if (baseViewHolder != null && (imageView2 = (ImageView) baseViewHolder.getView(R$id.delete_cover)) != null) {
            final ApplyTerminationActivity applyTerminationActivity = this.this$0;
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.u
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ApplyTerminationActivity$initPictureAdapter$1.m702convert$lambda0(ApplyTerminationActivity.this, i9, view2);
                }
            });
        }
        if (baseViewHolder == null || (view = baseViewHolder.itemView) == null) {
            return;
        }
        final ApplyTerminationActivity applyTerminationActivity2 = this.this$0;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ApplyTerminationActivity$initPictureAdapter$1.m703convert$lambda2(ApplyTerminationActivity.this, item, view2);
            }
        });
    }
}
