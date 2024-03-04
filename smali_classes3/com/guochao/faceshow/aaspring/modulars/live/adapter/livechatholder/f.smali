.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomTakeSeatHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Landroid/view/View;)V

    return-void
.end method
