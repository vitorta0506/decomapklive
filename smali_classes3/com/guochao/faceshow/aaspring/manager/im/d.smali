.class public interface abstract Lcom/guochao/faceshow/aaspring/manager/im/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/manager/im/d$a;,
        Lcom/guochao/faceshow/aaspring/manager/im/d$b;
    }
.end annotation


# virtual methods
.method public abstract b(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/imsdk/v2/V2TIMMessage;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
