.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/c;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/c;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/c;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomInviteHolder;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V

    return-void
.end method
