.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setTranslateContent(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setTranslateing(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setShowtranslateContent(Z)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1208e7

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(I)Landroid/widget/Toast;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setTranslateContent(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setTranslateing(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setShowtranslateContent(Z)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;->a()V

    :cond_1
    return-void
.end method
