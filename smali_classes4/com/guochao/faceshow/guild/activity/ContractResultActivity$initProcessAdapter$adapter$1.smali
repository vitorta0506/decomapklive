.class public final Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;
.super Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->initProcessAdapter(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter<",
        "Lcom/guochao/faceshow/guild/bean/RecordVo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1",
        "Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;",
        "Lcom/guochao/faceshow/guild/bean/RecordVo;",
        "convert",
        "",
        "holder",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        "item",
        "position",
        "",
        "component_guild_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/guild/bean/RecordVo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/util/List;Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/guild/activity/ContractResultActivity;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/guild/bean/RecordVo;",
            ">;",
            "Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->$list:Ljava/util/List;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/guochao/faceshow/adapter/MultiItemCommonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/guochao/faceshow/adapter/MultiItemTypeSupport;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->convert$lambda-3(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;Landroid/view/View;)V

    return-void
.end method

.method private static final convert$lambda-1(ILjava/util/List;Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p4, "this$0"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$item"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ne p0, p1, :cond_2

    .line 2
    new-instance p0, Landroid/content/Intent;

    .line 3
    const-class p1, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->setRecordId(I)V

    :goto_1
    const-string p3, "obj"

    .line 7
    invoke-virtual {p0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    invoke-static {p2}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->access$getStartActivityLauncher$p(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static final convert$lambda-3(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Landroid/content/Intent;

    .line 2
    const-class v0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    .line 3
    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->setRecordId(I)V

    :goto_0
    const-string p1, "obj"

    .line 6
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    invoke-static {p0}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->access$getStartActivityLauncher$p(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(ILjava/util/List;Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->convert$lambda-1(ILjava/util/List;Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Lcom/guochao/faceshow/guild/bean/RecordVo;I)V
    .locals 18
    .param p1    # Lcom/guochao/faceshow/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/guild/bean/RecordVo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "item"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v4, Lcom/guochao/faceshow/guild/R$id;->compaint_tv:I

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x8

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :goto_0
    sget v5, Lcom/guochao/faceshow/guild/R$id;->compaint_tv2:I

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :goto_1
    sget v7, Lcom/guochao/faceshow/guild/R$id;->process_line:I

    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 5
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 6
    sget v10, Lcom/guochao/lib_base/R$color;->colorPrimary:I

    .line 7
    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 8
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    :cond_3
    sget v8, Lcom/guochao/faceshow/guild/R$id;->node_icon:I

    sget v9, Lcom/guochao/faceshow/guild/R$mipmap;->node_1:I

    invoke-virtual {v1, v8, v9}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setImageResource(II)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 10
    sget v10, Lcom/guochao/faceshow/guild/R$id;->creater:I

    invoke-virtual {v1, v10}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 11
    iget-object v12, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 12
    sget v13, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_3:I

    .line 13
    invoke-static {v12, v13}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    .line 14
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    :cond_4
    sget v11, Lcom/guochao/faceshow/guild/R$id;->reason_layout:I

    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    if-nez v12, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getStatus()I

    move-result v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_25

    .line 17
    :pswitch_1
    sget v4, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v7, Lcom/guochao/faceshow/guild/R$string;->revoked:I

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 18
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3e

    .line 19
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 20
    sget v7, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_2:I

    .line 21
    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 22
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_25

    .line 23
    :pswitch_2
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    :goto_3
    sget v4, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v7, Lcom/guochao/faceshow/guild/R$string;->file_appeal:I

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 25
    sget v5, Lcom/guochao/faceshow/guild/R$id;->reason:I

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    if-nez v5, :cond_7

    goto :goto_4

    .line 26
    :cond_7
    iget-object v7, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v8, Lcom/guochao/faceshow/guild/R$string;->appeal_reason:I

    new-array v9, v14, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getReason()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v15

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :goto_4
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3e

    .line 29
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 30
    sget v7, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_2:I

    .line 31
    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 32
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_25

    .line 33
    :pswitch_3
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    :goto_5
    sget v4, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    .line 35
    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v7, Lcom/guochao/faceshow/guild/R$string;->termination_contract_success:I

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 37
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v5, Lcom/guochao/faceshow/guild/R$string;->platform:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 38
    sget v4, Lcom/guochao/faceshow/guild/R$id;->reason:I

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    if-nez v4, :cond_9

    goto/16 :goto_25

    .line 39
    :cond_9
    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v7, Lcom/guochao/faceshow/guild/R$string;->dismissed_reason:I

    new-array v8, v14, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getReason()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v15

    invoke-virtual {v5, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 41
    :pswitch_4
    sget v4, Lcom/guochao/faceshow/guild/R$id;->date:I

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    :goto_6
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    :goto_7
    sget v4, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v9, Lcom/guochao/faceshow/guild/R$string;->dismissed_review:I

    invoke-virtual {v5, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 44
    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v9, Lcom/guochao/faceshow/guild/R$string;->platform_rejected:I

    invoke-virtual {v5, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 45
    sget v5, Lcom/guochao/faceshow/guild/R$id;->reason:I

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    if-nez v5, :cond_c

    goto :goto_8

    .line 46
    :cond_c
    iget-object v9, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v11, Lcom/guochao/faceshow/guild/R$string;->reject_reason:I

    new-array v12, v14, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getReason()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-virtual {v9, v11, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 47
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_8
    sget v5, Lcom/guochao/faceshow/guild/R$mipmap;->node_2:I

    invoke-virtual {v1, v8, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setImageResource(II)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 49
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 50
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 51
    sget v8, Lcom/guochao/faceshow/guild/R$color;->guild_tips_red:I

    .line 52
    invoke-static {v5, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 53
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    :cond_d
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 55
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 56
    sget v7, Lcom/guochao/faceshow/guild/R$color;->guild_tips_red:I

    .line 57
    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 58
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 59
    :cond_e
    invoke-virtual {v1, v10}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3e

    .line 60
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 61
    sget v7, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_2:I

    .line 62
    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 63
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_25

    .line 64
    :pswitch_5
    sget v9, Lcom/guochao/faceshow/guild/R$id;->date:I

    invoke-virtual {v1, v9}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-nez v9, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_9
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    if-nez v9, :cond_10

    goto :goto_a

    :cond_10
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    :goto_a
    sget v9, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    iget-object v11, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v12, Lcom/guochao/faceshow/guild/R$string;->dismissed_review:I

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 67
    iget-object v11, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v12, Lcom/guochao/faceshow/guild/R$string;->guild_rejected:I

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 68
    sget v11, Lcom/guochao/faceshow/guild/R$id;->reason:I

    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    if-nez v11, :cond_11

    goto :goto_b

    .line 69
    :cond_11
    iget-object v12, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v13, Lcom/guochao/faceshow/guild/R$string;->reject_reason:I

    new-array v6, v14, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getReason()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v15

    invoke-virtual {v12, v13, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_b
    invoke-virtual {v1, v9}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_12

    .line 72
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 73
    sget v11, Lcom/guochao/faceshow/guild/R$color;->guild_tips_red:I

    .line 74
    invoke-static {v9, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 75
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    :cond_12
    invoke-virtual {v1, v10}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_13

    .line 77
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 78
    sget v10, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_3:I

    .line 79
    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 80
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 81
    :cond_13
    sget v6, Lcom/guochao/faceshow/guild/R$mipmap;->node_2:I

    invoke-virtual {v1, v8, v6}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setImageResource(II)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 82
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 83
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 84
    sget v8, Lcom/guochao/faceshow/guild/R$color;->guild_tips_red:I

    .line 85
    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 86
    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 87
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getCanComplain()I

    move-result v6

    if-ne v6, v14, :cond_19

    .line 88
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_15

    goto :goto_c

    :cond_15
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 89
    :goto_c
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    goto :goto_d

    :cond_16
    const/4 v5, 0x0

    :goto_d
    if-nez v5, :cond_17

    goto :goto_e

    :cond_17
    invoke-virtual {v5, v14}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 90
    :goto_e
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_f
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3e

    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    new-instance v6, Lcom/guochao/faceshow/guild/activity/j0;

    invoke-direct {v6, v5, v2}, Lcom/guochao/faceshow/guild/activity/j0;-><init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_25

    .line 92
    :cond_19
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-nez v4, :cond_1a

    goto/16 :goto_25

    :cond_1a
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_25

    .line 93
    :pswitch_6
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_1b

    goto :goto_10

    :cond_1b
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    :goto_10
    invoke-virtual {v1, v8, v9}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setImageResource(II)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 95
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 96
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 97
    sget v6, Lcom/guochao/lib_base/R$color;->colorPrimary:I

    .line 98
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 99
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 100
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getOperationType()I

    move-result v4

    if-ne v4, v14, :cond_21

    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_11

    :cond_1d
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_21

    .line 101
    sget v4, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    .line 102
    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v6, Lcom/guochao/faceshow/guild/R$string;->termination_contract_success:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 104
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v5, Lcom/guochao/faceshow/guild/R$string;->platform:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 105
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_1e

    goto :goto_12

    :cond_1e
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    :goto_12
    sget v4, Lcom/guochao/faceshow/guild/R$id;->reason:I

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    if-nez v4, :cond_1f

    goto/16 :goto_25

    .line 107
    :cond_1f
    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getStatus()I

    move-result v6

    const/16 v7, 0xe

    if-ne v6, v7, :cond_20

    sget v6, Lcom/guochao/faceshow/guild/R$string;->dismissed_reason:I

    goto :goto_13

    :cond_20
    sget v6, Lcom/guochao/faceshow/guild/R$string;->reject_reason:I

    :goto_13
    new-array v7, v14, [Ljava/lang/Object;

    .line 109
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getReason()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v15

    .line 110
    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_25

    .line 112
    :cond_21
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getOperationType()I

    move-result v4

    if-ne v4, v14, :cond_23

    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result v4

    if-ne v4, v14, :cond_22

    const/4 v4, 0x1

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    :goto_14
    if-eqz v4, :cond_23

    .line 113
    sget v4, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    .line 114
    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v6, Lcom/guochao/faceshow/guild/R$string;->termination_contract_success:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 116
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v5, Lcom/guochao/faceshow/guild/R$string;->platform_terminate_contract:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {v1, v10, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    goto/16 :goto_25

    .line 118
    :cond_23
    sget v4, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    .line 119
    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v6, Lcom/guochao/faceshow/guild/R$string;->cancellation_approved:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 121
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result v4

    if-ne v4, v14, :cond_24

    const/4 v4, 0x1

    goto :goto_15

    :cond_24
    const/4 v4, 0x0

    :goto_15
    if-eqz v4, :cond_25

    .line 122
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v5, Lcom/guochao/faceshow/guild/R$string;->platform_agreed:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual {v1, v10, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    goto/16 :goto_25

    .line 124
    :cond_25
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getComplain()I

    move-result v4

    if-ne v4, v14, :cond_26

    .line 125
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v5, Lcom/guochao/faceshow/guild/R$string;->platform_agreed:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v1, v10, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    goto/16 :goto_25

    .line 127
    :cond_26
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v5, Lcom/guochao/faceshow/guild/R$string;->guild_agreed:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {v1, v10, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    goto/16 :goto_25

    .line 129
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getMoreSeven()I

    move-result v5

    if-nez v5, :cond_29

    .line 130
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_27

    goto :goto_16

    :cond_27
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    :goto_16
    sget v4, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v6, Lcom/guochao/faceshow/guild/R$string;->initiate_dissmissed:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 132
    sget v5, Lcom/guochao/faceshow/guild/R$id;->reason:I

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    if-nez v5, :cond_28

    goto :goto_17

    .line 133
    :cond_28
    iget-object v6, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v7, Lcom/guochao/faceshow/guild/R$string;->dismissed_reason:I

    new-array v8, v14, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getReason()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v15

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :goto_17
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3e

    .line 136
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 137
    sget v6, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_3:I

    .line 138
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 139
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_25

    .line 140
    :cond_29
    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->$list:Ljava/util/List;

    if-eqz v5, :cond_2a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_18

    :cond_2a
    const/4 v5, 0x0

    :goto_18
    sub-int/2addr v5, v14

    if-ne v3, v5, :cond_30

    .line 141
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    if-nez v5, :cond_2b

    goto :goto_19

    :cond_2b
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :goto_19
    sget v5, Lcom/guochao/faceshow/guild/R$id;->end_node_icon:I

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v5, :cond_2c

    goto :goto_1a

    :cond_2c
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :goto_1a
    sget v5, Lcom/guochao/faceshow/guild/R$id;->end_status:I

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_2d

    goto :goto_1b

    :cond_2d
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :goto_1b
    sget v5, Lcom/guochao/faceshow/guild/R$mipmap;->node_3:I

    invoke-virtual {v1, v8, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setImageResource(II)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 145
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 146
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 147
    sget v7, Lcom/guochao/lib_base/R$color;->colorPrimary:I

    .line 148
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 149
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 150
    :cond_2e
    sget v5, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_2f

    .line 151
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 152
    sget v7, Lcom/guochao/lib_base/R$color;->colorPrimary:I

    .line 153
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 154
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 155
    :cond_2f
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_34

    .line 156
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 157
    sget v7, Lcom/guochao/faceshow/guild/R$color;->guild_tips_red:I

    .line 158
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 159
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1d

    .line 160
    :cond_30
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_31

    goto :goto_1c

    :cond_31
    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :goto_1c
    invoke-virtual {v1, v8, v9}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setImageResource(II)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 162
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 163
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 164
    sget v7, Lcom/guochao/lib_base/R$color;->colorPrimary:I

    .line 165
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 166
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 167
    :cond_32
    sget v5, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_33

    .line 168
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 169
    sget v7, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_3:I

    .line 170
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 171
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 172
    :cond_33
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_34

    .line 173
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 174
    sget v7, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_3:I

    .line 175
    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 176
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 177
    :cond_34
    :goto_1d
    sget v5, Lcom/guochao/faceshow/guild/R$id;->date:I

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x8

    if-nez v5, :cond_35

    goto :goto_1e

    :cond_35
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :goto_1e
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-nez v5, :cond_36

    goto :goto_1f

    :cond_36
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    :goto_1f
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_37

    goto :goto_20

    :cond_37
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :goto_20
    sget v5, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    iget-object v6, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v7, Lcom/guochao/faceshow/guild/R$string;->wait_guild_audit:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 181
    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v6, Lcom/guochao/faceshow/guild/R$string;->agency_platform_tip:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 183
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_38

    goto :goto_21

    :cond_38
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 184
    :goto_21
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_39

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    goto :goto_22

    :cond_39
    const/4 v5, 0x0

    :goto_22
    if-nez v5, :cond_3a

    goto :goto_23

    :cond_3a
    invoke-virtual {v5, v14}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 185
    :goto_23
    invoke-virtual {v1, v10}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3b

    goto :goto_24

    :cond_3b
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :goto_24
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3e

    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->$list:Ljava/util/List;

    iget-object v6, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    new-instance v7, Lcom/guochao/faceshow/guild/activity/i0;

    invoke-direct {v7, v3, v5, v6, v2}, Lcom/guochao/faceshow/guild/activity/i0;-><init>(ILjava/util/List;Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Lcom/guochao/faceshow/guild/bean/RecordVo;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_25

    .line 187
    :pswitch_8
    sget v4, Lcom/guochao/faceshow/guild/R$id;->state_tv:I

    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v6, Lcom/guochao/faceshow/guild/R$string;->signed_successfully:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    .line 188
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3c

    .line 189
    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 190
    sget v6, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_3:I

    .line 191
    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 192
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 193
    :cond_3c
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_3d

    goto :goto_25

    :cond_3d
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    :cond_3e
    :goto_25
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getImgList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_40

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_26

    :cond_3f
    const/4 v4, 0x0

    goto :goto_27

    :cond_40
    :goto_26
    const/4 v4, 0x1

    :goto_27
    if-nez v4, :cond_47

    .line 195
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getImgList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_42

    .line 197
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 198
    new-instance v6, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;

    const-string v8, ""

    invoke-direct {v6, v8, v5}, Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 199
    :cond_41
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 200
    :cond_42
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 201
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getImgList()Ljava/util/List;

    move-result-object v9

    .line 202
    sget v10, Lcom/guochao/faceshow/guild/R$layout;->process_image_item:I

    .line 203
    new-instance v4, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1;

    iget-object v6, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1;-><init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/List;I)V

    .line 204
    sget v5, Lcom/guochao/faceshow/guild/R$id;->image_recyclerview:I

    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v6, :cond_43

    goto :goto_29

    :cond_43
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 205
    :goto_29
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v6, :cond_44

    goto :goto_2b

    .line 206
    :cond_44
    new-instance v7, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v8, :cond_45

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    goto :goto_2a

    :cond_45
    const/4 v13, 0x0

    :goto_2a
    const/4 v8, 0x3

    invoke-direct {v7, v13, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 207
    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 208
    :goto_2b
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_46

    goto :goto_2c

    :cond_46
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_2c

    .line 209
    :cond_47
    sget v4, Lcom/guochao/faceshow/guild/R$id;->image_recyclerview:I

    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_48

    goto :goto_2c

    :cond_48
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 210
    :goto_2c
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->$list:Ljava/util/List;

    if-eqz v4, :cond_49

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_2d

    :cond_49
    const/4 v4, 0x0

    :goto_2d
    sub-int/2addr v4, v14

    if-ne v3, v4, :cond_56

    .line 211
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getStatus()I

    move-result v3

    const/4 v4, 0x5

    const/16 v5, 0xc

    if-ne v3, v4, :cond_4a

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getMoreSeven()I

    move-result v3

    if-eqz v3, :cond_4b

    :cond_4a
    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_52

    .line 212
    :cond_4b
    sget v3, Lcom/guochao/faceshow/guild/R$id;->end_node_icon:I

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-nez v3, :cond_4c

    goto :goto_2e

    :cond_4c
    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :goto_2e
    sget v3, Lcom/guochao/faceshow/guild/R$id;->process_line:I

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4d

    goto :goto_2f

    :cond_4d
    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :goto_2f
    sget v3, Lcom/guochao/faceshow/guild/R$id;->end_status:I

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4e

    goto :goto_30

    :cond_4e
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :goto_30
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/viewmodel/ContractResultViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result v4

    if-ne v4, v14, :cond_4f

    goto :goto_31

    :cond_4f
    const/4 v14, 0x0

    :goto_31
    if-nez v14, :cond_51

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getStatus()I

    move-result v4

    if-ne v4, v5, :cond_50

    goto :goto_32

    .line 216
    :cond_50
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v5, Lcom/guochao/faceshow/guild/R$string;->wait_guild_audit:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    goto :goto_37

    .line 217
    :cond_51
    :goto_32
    iget-object v4, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v5, Lcom/guochao/faceshow/guild/R$string;->wait_platform_audit:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {v1, v3, v4}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    goto :goto_37

    .line 219
    :cond_52
    sget v3, Lcom/guochao/faceshow/guild/R$id;->end_node_icon:I

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v4, 0x8

    if-nez v3, :cond_53

    goto :goto_33

    :cond_53
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    :goto_33
    sget v3, Lcom/guochao/faceshow/guild/R$id;->process_line:I

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_54

    goto :goto_34

    :cond_54
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_34
    sget v3, Lcom/guochao/faceshow/guild/R$id;->end_status:I

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_55

    goto :goto_37

    :cond_55
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_37

    :cond_56
    const/16 v4, 0x8

    .line 222
    sget v3, Lcom/guochao/faceshow/guild/R$id;->end_node_icon:I

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-nez v3, :cond_57

    goto :goto_35

    :cond_57
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    :goto_35
    sget v3, Lcom/guochao/faceshow/guild/R$id;->process_line:I

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_58

    goto :goto_36

    :cond_58
    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :goto_36
    sget v3, Lcom/guochao/faceshow/guild/R$id;->end_status:I

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_59

    goto :goto_37

    :cond_59
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :goto_37
    sget v3, Lcom/guochao/faceshow/guild/R$id;->date:I

    .line 226
    new-instance v4, Ljava/text/SimpleDateFormat;

    iget-object v5, v0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    sget v6, Lcom/guochao/faceshow/guild/R$string;->format_time:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual/range {p2 .. p2}, Lcom/guochao/faceshow/guild/bean/RecordVo;->getCreateTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/guild/bean/RecordVo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Lcom/guochao/faceshow/guild/bean/RecordVo;I)V

    return-void
.end method
