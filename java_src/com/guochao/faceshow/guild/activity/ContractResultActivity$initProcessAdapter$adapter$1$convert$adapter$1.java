package com.guochao.faceshow.guild.activity;

import android.content.Context;
import android.view.View;
import com.guochao.faceshow.adapter.BaseViewHolder;
import com.guochao.faceshow.adapter.CommonRecyclerAdapter;
import com.guochao.faceshow.guild.R$id;
import com.guochao.faceshow.guild.bean.ImagePreviewBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.previewlibrary.GPreviewBuilder;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"com/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1", "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;", "", "convert", "", "holder", "Lcom/guochao/faceshow/adapter/BaseViewHolder;", BaseConfig.ITEM, "position", "", "component_guild_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1 extends CommonRecyclerAdapter<String> {
    final /* synthetic */ ArrayList<ImagePreviewBean> $list;
    final /* synthetic */ ContractResultActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1(ContractResultActivity contractResultActivity, ArrayList<ImagePreviewBean> arrayList, Context context, List<String> list, int i9) {
        super(context, list, i9);
        this.this$0 = contractResultActivity;
        this.$list = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: convert$lambda-0  reason: not valid java name */
    public static final void m718convert$lambda0(ContractResultActivity this$0, ArrayList list, int i9, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "$list");
        GPreviewBuilder.a(this$0).c(list).b(i9).h(GuildImagePreviewActivity.class).e(false).d(false).f(GPreviewBuilder.IndicatorType.Dot).g();
    }

    @Override // com.guochao.faceshow.adapter.CommonRecyclerAdapter
    public void convert(@Nullable BaseViewHolder baseViewHolder, @NotNull String item, final int i9) {
        View view;
        Intrinsics.checkNotNullParameter(item, "item");
        if (baseViewHolder != null) {
            baseViewHolder.setImageByUrl(R$id.cover, item, 0);
        }
        if (baseViewHolder == null || (view = baseViewHolder.itemView) == null) {
            return;
        }
        final ContractResultActivity contractResultActivity = this.this$0;
        final ArrayList<ImagePreviewBean> arrayList = this.$list;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.guild.activity.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1.m718convert$lambda0(ContractResultActivity.this, arrayList, i9, view2);
            }
        });
    }
}
