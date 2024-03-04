.class Lcom/guochao/faceshow/mine/view/HobbyActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/HobbyActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/HobbyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/HobbyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity$a;->a:Lcom/guochao/faceshow/mine/view/HobbyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity$a;->a:Lcom/guochao/faceshow/mine/view/HobbyActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/HobbyActivity;->e:Ljava/util/List;

    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity$a;->a:Lcom/guochao/faceshow/mine/view/HobbyActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/HobbyActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity$a;->a:Lcom/guochao/faceshow/mine/view/HobbyActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/HobbyActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity$a;->a:Lcom/guochao/faceshow/mine/view/HobbyActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity$a;->a:Lcom/guochao/faceshow/mine/view/HobbyActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "tag"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity$a;->a:Lcom/guochao/faceshow/mine/view/HobbyActivity;

    const-string/jumbo v1, "userId"

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/mine/view/HobbyActivity;->b0(Lcom/guochao/faceshow/mine/view/HobbyActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
