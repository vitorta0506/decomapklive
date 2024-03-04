.class public final synthetic Lcom/guochao/faceshow/component/live/fragment/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/p;->a:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/p;->a:Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;->P1(Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)I

    move-result p1

    return p1
.end method
