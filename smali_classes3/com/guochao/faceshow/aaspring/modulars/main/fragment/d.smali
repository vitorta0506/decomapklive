.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/fragment/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/d;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/d;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/d;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->Q1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;Ljava/util/List;)V

    return-void
.end method
