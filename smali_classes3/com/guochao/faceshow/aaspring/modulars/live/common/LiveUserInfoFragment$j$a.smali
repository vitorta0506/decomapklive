.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ly7/e;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$j$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ly7/e;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ly7/e;->g(Z)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
