.class Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/beans/PageComment;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$i;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PageComment;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$i;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->d:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PageComment;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->addDamus(Ljava/util/List;)V

    .line 3
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PageComment;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$i;->a(Lcom/guochao/faceshow/aaspring/beans/PageComment;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
