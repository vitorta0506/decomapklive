.class public final Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1;
.super Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1;->convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Lcom/guochao/faceshow/guild/bean/RecordVo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1",
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;",
        "",
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
.field final synthetic $list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/guild/activity/ContractResultActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/guild/bean/ImagePreviewBean;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1;->$list:Ljava/util/ArrayList;

    invoke-direct {p0, p3, p4, p5}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/util/ArrayList;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1;->convert$lambda-0(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/util/ArrayList;ILandroid/view/View;)V

    return-void
.end method

.method private static final convert$lambda-0(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/util/ArrayList;ILandroid/view/View;)V
    .locals 0

    const-string/jumbo p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$list"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/previewlibrary/GPreviewBuilder;->a(Landroid/app/Activity;)Lcom/previewlibrary/GPreviewBuilder;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lcom/previewlibrary/GPreviewBuilder;->c(Ljava/util/List;)Lcom/previewlibrary/GPreviewBuilder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p2}, Lcom/previewlibrary/GPreviewBuilder;->b(I)Lcom/previewlibrary/GPreviewBuilder;

    move-result-object p0

    const-class p1, Lcom/guochao/faceshow/guild/activity/GuildImagePreviewActivity;

    .line 4
    invoke-virtual {p0, p1}, Lcom/previewlibrary/GPreviewBuilder;->h(Ljava/lang/Class;)Lcom/previewlibrary/GPreviewBuilder;

    move-result-object p0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/previewlibrary/GPreviewBuilder;->e(Z)Lcom/previewlibrary/GPreviewBuilder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/previewlibrary/GPreviewBuilder;->d(Z)Lcom/previewlibrary/GPreviewBuilder;

    move-result-object p0

    .line 7
    sget-object p1, Lcom/previewlibrary/GPreviewBuilder$IndicatorType;->Dot:Lcom/previewlibrary/GPreviewBuilder$IndicatorType;

    invoke-virtual {p0, p1}, Lcom/previewlibrary/GPreviewBuilder;->f(Lcom/previewlibrary/GPreviewBuilder$IndicatorType;)Lcom/previewlibrary/GPreviewBuilder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/previewlibrary/GPreviewBuilder;->g()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1;->convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Ljava/lang/String;I)V

    return-void
.end method

.method public convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    sget v0, Lcom/guochao/faceshow/guild/R$id;->cover:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setImageByUrl(ILjava/lang/String;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$1$convert$adapter$1;->$list:Ljava/util/ArrayList;

    new-instance v1, Lcom/guochao/faceshow/guild/activity/k0;

    invoke-direct {v1, p2, v0, p3}, Lcom/guochao/faceshow/guild/activity/k0;-><init>(Lcom/guochao/faceshow/guild/activity/ContractResultActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
