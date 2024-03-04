.class public Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a00fc

    const-string v2, "field \'avatarUser\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v0, 0x7f0a0d88

    const-string v1, "field \'userAgeLevel\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->userAgeLevel:Landroid/view/View;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cc7

    const-string v2, "field \'tvNickName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->tvNickName:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ca7

    const-string v2, "field \'tvInviteName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->tvInviteName:Landroid/widget/TextView;

    const v0, 0x7f0a017e

    const-string v1, "field \'btnAgree\' and method \'onViewClicked\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'btnAgree\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->btnAgree:Landroid/widget/ImageButton;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0197

    const-string v1, "field \'btnRefuse\' and method \'onViewClicked\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'btnRefuse\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->btnRefuse:Landroid/widget/ImageButton;

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05d6

    const-string v2, "field \'ivSelectState\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->ivSelectState:Landroid/widget/ImageView;

    const v0, 0x7f0a0620

    const-string v1, "method \'onViewClicked\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 17
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->e:Landroid/view/View;

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->userAgeLevel:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->tvNickName:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->tvInviteName:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->btnAgree:Landroid/widget/ImageButton;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->btnRefuse:Landroid/widget/ImageButton;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment;->ivSelectState:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->c:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->d:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/PkInviteCardDialogFragment_ViewBinding;->e:Landroid/view/View;

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
