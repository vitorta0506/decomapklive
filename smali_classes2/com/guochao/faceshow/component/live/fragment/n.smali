.class public final synthetic Lcom/guochao/faceshow/component/live/fragment/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/n;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/component/live/fragment/n;->b:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/n;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/component/live/fragment/n;->b:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->R1(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V

    return-void
.end method
