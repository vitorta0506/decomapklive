.class public final Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;


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
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/adapter/MultiItemTypeSupport<",
        "Lcom/guochao/faceshow/guild/bean/RecordVo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$2",
        "Lcom/guochao/faceshow/adapter/MultiItemTypeSupport;",
        "Lcom/guochao/faceshow/guild/bean/RecordVo;",
        "getItemViewType",
        "",
        "position",
        "t",
        "getLayoutId",
        "itemType",
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


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemViewType(ILcom/guochao/faceshow/guild/bean/RecordVo;)I
    .locals 0
    .param p2    # Lcom/guochao/faceshow/guild/bean/RecordVo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getItemViewType(ILjava/lang/Object;)I
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/guild/bean/RecordVo;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/guild/activity/ContractResultActivity$initProcessAdapter$adapter$2;->getItemViewType(ILcom/guochao/faceshow/guild/bean/RecordVo;)I

    move-result p1

    return p1
.end method

.method public getLayoutId(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    sget p1, Lcom/guochao/faceshow/guild/R$layout;->process_list_item_top:I

    goto :goto_0

    .line 2
    :cond_0
    sget p1, Lcom/guochao/faceshow/guild/R$layout;->process_list_item_middle:I

    goto :goto_0

    .line 3
    :cond_1
    sget p1, Lcom/guochao/faceshow/guild/R$layout;->process_list_item_bottom:I

    goto :goto_0

    .line 4
    :cond_2
    sget p1, Lcom/guochao/faceshow/guild/R$layout;->process_list_item_middle:I

    :goto_0
    return p1
.end method
