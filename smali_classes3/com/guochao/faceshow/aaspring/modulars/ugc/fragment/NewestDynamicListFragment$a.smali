.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->resetList(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laa/b<",
        "Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getPublishStatus()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$a;->a(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)Z

    move-result p1

    return p1
.end method
