.class public Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    .line 3
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a058e

    const-string v2, "field \'ivAnyone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->ivAnyone:Landroid/widget/ImageView;

    const v0, 0x7f0a0409

    const-string v1, "field \'flAnyone\' and method \'onViewClicked\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'flAnyone\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->flAnyone:Landroid/widget/FrameLayout;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->d:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05a6

    const-string v2, "field \'ivFans\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->ivFans:Landroid/widget/ImageView;

    const v0, 0x7f0a0416

    const-string v1, "field \'flFans\' and method \'onViewClicked\'"

    .line 9
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 10
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'flFans\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->flFans:Landroid/widget/FrameLayout;

    .line 11
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->e:Landroid/view/View;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05aa

    const-string v2, "field \'ivFriends\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->ivFriends:Landroid/widget/ImageView;

    const v0, 0x7f0a0417

    const-string v1, "field \'flFriends\' and method \'onViewClicked\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 15
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'flFriends\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->flFriends:Landroid/widget/FrameLayout;

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->f:Landroid/view/View;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0597

    const-string v2, "field \'ivClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->ivClose:Landroid/widget/ImageView;

    const v0, 0x7f0a0414

    const-string v1, "field \'flClose\' and method \'onViewClicked\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Landroid/widget/FrameLayout;

    const-string v3, "field \'flClose\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->flClose:Landroid/widget/FrameLayout;

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->g:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c86

    const-string v2, "field \'tvFans\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->tvFans:Landroid/widget/TextView;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c90

    const-string v2, "field \'tvFriends\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->tvFriends:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c5d

    const-string v2, "field \'tvClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->tvClose:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c49

    const-string v2, "field \'tvAnyone\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->tvAnyone:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->ivAnyone:Landroid/widget/ImageView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->flAnyone:Landroid/widget/FrameLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->ivFans:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->flFans:Landroid/widget/FrameLayout;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->ivFriends:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->flFriends:Landroid/widget/FrameLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->ivClose:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->flClose:Landroid/widget/FrameLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->tvFans:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->tvFriends:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->tvClose:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;->tvAnyone:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->d:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->e:Landroid/view/View;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->f:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity_ViewBinding;->g:Landroid/view/View;

    .line 23
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
