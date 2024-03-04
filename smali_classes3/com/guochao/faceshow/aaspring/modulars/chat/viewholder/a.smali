.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/LiveHelloStartInviteViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;Landroid/view/View;)V

    return-void
.end method
