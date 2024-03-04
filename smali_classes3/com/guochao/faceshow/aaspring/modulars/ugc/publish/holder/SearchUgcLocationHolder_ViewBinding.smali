.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05f0

    const-string v2, "field \'ivUgcLocation\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;->ivUgcLocation:Landroid/widget/ImageView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08c1

    const-string v2, "field \'primaryTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;->primaryTitle:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0a44

    const-string v2, "field \'secondaryTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;->secondaryTitle:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a01f3

    const-string v2, "field \'checkStatus\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;->checkStatus:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;->ivUgcLocation:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;->primaryTitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;->secondaryTitle:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/SearchUgcLocationHolder;->checkStatus:Landroid/widget/ImageView;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
