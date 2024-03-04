.class public Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;

    const v0, 0x7f0a0dd2

    const-string v1, "field \'userSawPhotos\'"

    .line 3
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userSawPhotos:Landroid/view/View;

    const v0, 0x7f0a04f9

    const-string v1, "field \'iconFocus\' and method \'onViewClicked\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'iconFocus\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->iconFocus:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a00fd

    const-string v2, "field \'avatarBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dc5

    const-string v2, "field \'userName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userName:Landroid/widget/TextView;

    const v0, 0x7f0a0d88

    const-string v1, "field \'userCenterAgeLevel\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userCenterAgeLevel:Landroid/view/View;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0e35

    const-string v2, "field \'watchTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->watchTime:Landroid/widget/TextView;

    const v0, 0x7f0a02dd

    const-string v1, "field \'dividerLine\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->dividerLine:Landroid/view/View;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0dd4

    const-string v2, "field \'userSign\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userSign:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userSawPhotos:Landroid/view/View;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->iconFocus:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userName:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userCenterAgeLevel:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->watchTime:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->dividerLine:Landroid/view/View;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->userSign:Landroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
