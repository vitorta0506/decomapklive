.class public final Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initLiveVideoAdapter$1;
.super Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->initLiveVideoAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/guild/activity/ApplyContractActivity$initLiveVideoAdapter$1",
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;",
        "Landroid/net/Uri;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initLiveVideoAdapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initLiveVideoAdapter$1;->convert$lambda-1(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;ILandroid/view/View;)V

    return-void
.end method

.method private static final convert$lambda-1(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;ILandroid/view/View;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyContractViewModel;->removeVideoRecordScreenLive(I)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Landroid/net/Uri;I)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    .line 2
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget v0, Lcom/guochao/faceshow/guild/R$id;->cover:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setRoundImageByUri(ILandroid/net/Uri;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    sget p2, Lcom/guochao/faceshow/guild/R$id;->delete_cover:I

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initLiveVideoAdapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;

    new-instance v0, Lcom/guochao/faceshow/guild/activity/n;

    invoke-direct {v0, p2, p3}, Lcom/guochao/faceshow/guild/activity/n;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyContractActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/guild/activity/ApplyContractActivity$initLiveVideoAdapter$1;->convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Landroid/net/Uri;I)V

    return-void
.end method
