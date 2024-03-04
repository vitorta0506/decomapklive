.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->c(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->d(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->c(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getMediaType()I

    move-result p1

    const/16 v0, 0x66

    if-gt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->d(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->c(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage$c;->a(Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
