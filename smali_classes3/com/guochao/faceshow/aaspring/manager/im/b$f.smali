.class Lcom/guochao/faceshow/aaspring/manager/im/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;->p0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
        "Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field final synthetic b:Z

.field final synthetic c:Lcom/guochao/faceshow/aaspring/manager/im/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$f;->c:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$f;->a:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b$f;->b(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$f;->a:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$f;->c:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$f;->b:Z

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->R0(Z)V

    return-void
.end method
