.class public Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    const v1, 0x7f0a0c7c

    const-string v2, "field \'tvExpandable\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    const v0, 0x7f0a05a4

    const-string v1, "field \'ivExpandable\' and method \'onViewClicked\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivExpandable\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->ivExpandable:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0beb

    const-string v1, "field \'translateBtn\' and method \'onViewClicked\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'translateBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateBtn:Landroid/widget/TextView;

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0bf0

    const-string v2, "field \'translateLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    const v0, 0x7f0a0bee

    const-string v1, "field \'translateContentLay\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateContentLay:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->ivExpandable:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateBtn:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateLoading:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->translateContentLay:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;->c:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
