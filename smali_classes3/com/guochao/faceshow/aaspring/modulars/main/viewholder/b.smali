.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/b;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/b;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;->e(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ConversationInfoHolderV2;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
