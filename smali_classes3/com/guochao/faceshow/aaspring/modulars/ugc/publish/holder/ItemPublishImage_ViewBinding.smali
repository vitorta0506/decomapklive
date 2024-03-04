.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    const v0, 0x7f0a0521

    const-string v1, "field \'imageThumb\' and method \'onViewClicked\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imageThumb\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->imageThumb:Landroid/widget/ImageView;

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->c:Landroid/view/View;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0de3

    const-string v1, "field \'videoIcon\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'videoIcon\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->videoIcon:Landroid/widget/ImageView;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->d:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02a9

    const-string v1, "field \'deleteImage\' and method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 12
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'deleteImage\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->deleteImage:Landroid/widget/ImageView;

    .line 13
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->e:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->imageThumb:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->videoIcon:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage;->deleteImage:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->c:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->d:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/ItemPublishImage_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
