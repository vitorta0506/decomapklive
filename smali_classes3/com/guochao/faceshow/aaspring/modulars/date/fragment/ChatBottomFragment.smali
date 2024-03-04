.class public Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;

.field audioPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private b:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

.field private c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

.field private d:I

.field private e:I

.field llClose:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llVideo:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llVoice:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvClose:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvVideo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvVoice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field videoPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;)Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;)Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    return-object p1
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->S1()V

    return-void
.end method

.method private S1()V
    .locals 5

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->videoPrice:Landroid/widget/TextView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getVideoDiamond()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "min/%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->audioPrice:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAudioDiamond()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->videoPrice:Landroid/widget/TextView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getVideoDiamond()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%s/min"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->audioPrice:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAudioDiamond()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static T1(Landroidx/fragment/app/FragmentManager;IILcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2, p3}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "audioSwitch"

    .line 4
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "videoSwitch"

    .line 5
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {v0, p4}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->setOnChatBottomClickListener(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;)V

    const-string p1, "chatBottomMenu"

    .line 8
    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static U1(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->setOnChatBottomClickListener(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;)V

    const-string p1, "chatBottomMenu"

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00f0

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->S1()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->b:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "audioSwitch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->d:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "videoSwitch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->e:I

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->viewLine:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVideo:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVoice:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->viewLine:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVideo:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVoice:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->viewLine:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVideo:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVoice:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->viewLine:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVideo:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->llVoice:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public loadData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->b:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "tokens/appoint/appointAuth"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->b:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 3
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accountId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f13012a

    invoke-direct {p1, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 4
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x50

    .line 8
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 9
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_2
    return-object p1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 13
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a06c4

    if-eq p1, v0, :cond_14

    const v0, 0x7f0a0701

    const v1, 0x7f12090d

    const/16 v2, 0xfa0

    const/16 v3, 0xfaf

    const/16 v4, 0xfae

    const v5, 0x7f12091b

    const v6, 0x7f12091c

    const/16 v7, 0xfad

    const v8, 0x7f12091d

    const/16 v9, 0xfac

    const/16 v10, 0xfab

    const-string v11, "result_code"

    const v12, 0x7f12069f

    if-eq p1, v0, :cond_a

    const v0, 0x7f0a0703

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, v12}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 4
    :cond_1
    sget-boolean p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->k:Z

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;->onVoiceClick(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    if-nez p1, :cond_4

    return-void

    .line 8
    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result v0

    invoke-virtual {p1, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "friends_Dating_voicecall"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-ne v10, p1, :cond_5

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-ne v9, p1, :cond_6

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-eq v7, p1, :cond_9

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-ne v4, p1, :cond_7

    goto :goto_0

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-ne v3, p1, :cond_8

    .line 17
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 18
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-ne v2, p1, :cond_15

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;

    if-eqz p1, :cond_15

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;->onVoiceClick(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V

    goto/16 :goto_2

    .line 20
    :cond_9
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 21
    :cond_a
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 22
    invoke-virtual {p0, v12}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 23
    :cond_b
    sget-boolean p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->k:Z

    if-eqz p1, :cond_d

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;

    if-eqz p1, :cond_c

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;->onVideoClick(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V

    :cond_c
    return-void

    .line 26
    :cond_d
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    if-nez p1, :cond_e

    return-void

    .line 27
    :cond_e
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result v0

    invoke-virtual {p1, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "friends_Dating_videocall"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-ne v10, p1, :cond_f

    .line 31
    invoke-virtual {p0, v8}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 32
    :cond_f
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-ne v9, p1, :cond_10

    .line 33
    invoke-virtual {p0, v6}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 34
    :cond_10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-eq v7, p1, :cond_13

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-ne v4, p1, :cond_11

    goto :goto_1

    .line 35
    :cond_11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-ne v3, p1, :cond_12

    .line 36
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 37
    :cond_12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->c:Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/TRTCPermissionResponse;->getAppointResult()I

    move-result p1

    if-ne v2, p1, :cond_15

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;

    if-eqz p1, :cond_15

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;->onVideoClick(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V

    goto :goto_2

    .line 39
    :cond_13
    :goto_1
    invoke-virtual {p0, v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void

    .line 40
    :cond_14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;

    if-eqz p1, :cond_15

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;->onCancel(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V

    :cond_15
    :goto_2
    return-void
.end method

.method public setOnChatBottomClickListener(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;

    return-void
.end method
