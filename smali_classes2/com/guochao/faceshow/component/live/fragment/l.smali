.class public final synthetic Lcom/guochao/faceshow/component/live/fragment/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

.field public final synthetic b:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iput-object p2, p0, Lcom/guochao/faceshow/component/live/fragment/l;->b:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    iget-object v1, p0, Lcom/guochao/faceshow/component/live/fragment/l;->b:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Landroid/view/View;)V

    return-void
.end method