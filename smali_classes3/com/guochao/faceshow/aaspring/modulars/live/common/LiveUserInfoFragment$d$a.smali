.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->onScrollToEnd(Lcom/guochao/faceshow/views/HourRankTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/HourRankTextView;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;Lcom/guochao/faceshow/views/HourRankTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d$a;->a:Lcom/guochao/faceshow/views/HourRankTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d$a;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d;->g:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment$d$a;->a:Lcom/guochao/faceshow/views/HourRankTextView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/HourRankTextView;->reStartScroll()V

    return-void
.end method
