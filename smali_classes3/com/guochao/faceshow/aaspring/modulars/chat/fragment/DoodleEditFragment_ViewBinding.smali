.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0592

    const-string v2, "field \'ivBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->ivBg:Landroid/widget/ImageView;

    const v0, 0x7f0a0c55

    const-string v1, "field \'tvCancel\' and method \'onViewClicked\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvCancel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->tvCancel:Landroid/widget/TextView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0239

    const-string v1, "field \'complete\' and method \'onViewClicked\'"

    .line 8
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 9
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'complete\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->complete:Landroid/widget/TextView;

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->d:Landroid/view/View;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a036e

    const-string v2, "field \'etText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    const v0, 0x7f0a05bc

    const-string v1, "field \'ivMode\' and method \'onViewClicked\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivMode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->ivMode:Landroid/widget/ImageView;

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->e:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06c1

    const-string v2, "field \'llBottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->llBottom:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->ivBg:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->tvCancel:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->complete:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->ivMode:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->llBottom:Landroid/widget/LinearLayout;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->c:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
