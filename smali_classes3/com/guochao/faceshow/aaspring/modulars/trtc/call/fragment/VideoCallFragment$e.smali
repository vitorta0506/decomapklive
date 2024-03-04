.class Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->P1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeautyClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isTrtc"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setType(I)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$e$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$e$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$e;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "beauty"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
