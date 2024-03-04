.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a00fc

    const-string v2, "field \'avatarUser\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v0, 0x7f0a0d88

    const-string v1, "field \'userAgeLevel\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->userAgeLevel:Landroid/view/View;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cc7

    const-string v2, "field \'tvNickName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->tvNickName:Landroid/widget/TextView;

    const v0, 0x7f0a0564

    const-string v1, "field \'inviteType\' and method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'inviteType\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->inviteType:Landroid/widget/ImageView;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->c:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ca7

    const-string v2, "field \'tvInviteName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->tvInviteName:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d14

    const-string v2, "field \'tvTrtcPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->tvTrtcPrice:Landroid/widget/TextView;

    const v0, 0x7f0a017e

    const-string v1, "method \'onViewClicked\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0197

    .line 15
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->e:Landroid/view/View;

    .line 17
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding$c;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01e5

    .line 18
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->f:Landroid/view/View;

    .line 20
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding$d;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a014b

    .line 21
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->g:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->userAgeLevel:Landroid/view/View;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->tvNickName:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->inviteType:Landroid/widget/ImageView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->tvInviteName:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->tvTrtcPrice:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->c:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->d:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->e:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->f:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog_ViewBinding;->g:Landroid/view/View;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
