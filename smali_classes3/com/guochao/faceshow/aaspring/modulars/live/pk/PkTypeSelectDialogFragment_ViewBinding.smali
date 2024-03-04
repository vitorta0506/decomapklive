.class public Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cd4

    const-string v2, "field \'tvPkFriendToMatch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->tvPkFriendToMatch:Landroid/widget/TextView;

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    const v1, 0x7f0a00f6

    const-string v2, "field \'avatarGroupView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->avatarGroupView:Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d2e

    const-string v2, "field \'tvWinNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->tvWinNumber:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c87

    const-string v2, "field \'tvFbNumber\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->tvFbNumber:Landroid/widget/TextView;

    const v0, 0x7f0a06ee

    const-string v1, "field \'llPkRecord\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 8
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->llPkRecord:Landroid/view/View;

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a09bf

    const-string v1, "method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a09c4

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->e:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->tvPkFriendToMatch:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->avatarGroupView:Lcom/guochao/faceshow/aaspring/views/AvatarGroupView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->tvWinNumber:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->tvFbNumber:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment;->llPkRecord:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->d:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkTypeSelectDialogFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
