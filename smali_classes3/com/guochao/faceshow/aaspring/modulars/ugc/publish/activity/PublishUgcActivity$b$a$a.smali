.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;->onSuccessful()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V
    .locals 4

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setImgList(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setUuid(I)V

    .line 7
    invoke-static {}, Lba/a;->r()Lba/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lba/a;->v(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b$a$a;->onNext(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V

    return-void
.end method
