.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m3(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Lsa/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/manager/a$k<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lsa/a;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lsa/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h;->a:Lsa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;DJJ)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic c(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p3, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h;->d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V

    return-void
.end method

.method public d(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/io/File;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h;)V

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ZipUtils;->safeUnZip(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
