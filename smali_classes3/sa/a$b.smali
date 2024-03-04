.class Lsa/a$b;
.super Lsa/a$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lsa/a;


# direct methods
.method constructor <init>(Lsa/a;)V
    .locals 0

    iput-object p1, p0, Lsa/a$b;->c:Lsa/a;

    invoke-direct {p0, p1}, Lsa/a$h;-><init>(Lsa/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsa/a$b;->c:Lsa/a;

    invoke-static {v0}, Lsa/a;->c(Lsa/a;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsa/a$b;->c:Lsa/a;

    invoke-static {v0}, Lsa/a;->c(Lsa/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsa/a$b;->c:Lsa/a;

    invoke-static {v0}, Lsa/a;->c(Lsa/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsa/a$i;

    iget-object v0, v0, Lsa/a$i;->f:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isFaceGift(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lsa/a$b;->c:Lsa/a;

    invoke-static {v0}, Lsa/a;->d(Lsa/a;)Lsa/a$j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsa/a$h;->b()Lsa/a$i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lsa/a$h;->b()Lsa/a$i;

    move-result-object v0

    iget-object v0, v0, Lsa/a$i;->b:Ljava/lang/String;

    .line 4
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lsa/a$b;->c:Lsa/a;

    invoke-static {v2}, Lsa/a;->d(Lsa/a;)Lsa/a$j;

    move-result-object v2

    invoke-interface {v2, v0}, Lsa/a$j;->a(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lsa/a$b;->c:Lsa/a;

    invoke-static {v0, v1}, Lsa/a;->e(Lsa/a;Z)Z

    .line 8
    iget-object v0, p0, Lsa/a$b;->c:Lsa/a;

    invoke-static {v0}, Lsa/a;->b(Lsa/a;)V

    return-void
.end method
