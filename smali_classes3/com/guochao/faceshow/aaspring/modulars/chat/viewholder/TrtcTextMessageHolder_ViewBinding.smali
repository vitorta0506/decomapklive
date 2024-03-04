.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0255

    const-string v2, "field \'contentTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->contentTextView:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d12

    const-string v2, "field \'translateContentView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateContentView:Landroid/widget/TextView;

    const v0, 0x7f0a0a84

    const-string v1, "field \'translateButton\' and method \'translate\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 6
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'translateButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateButton:Landroid/widget/TextView;

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0422

    const-string v1, "field \'translateLoadingView\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateLoadingView:Landroid/view/View;

    const v0, 0x7f0a0104

    const-string v1, "field \'backgroundView\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->backgroundView:Landroid/view/View;

    .line 11
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a070b

    const-string v2, "field \'loadingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->loadingView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->contentTextView:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateContentView:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateButton:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->translateLoadingView:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->backgroundView:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder;->loadingView:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TrtcTextMessageHolder_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
