.class public Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$ImgInfoItem;,
        Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;,
        Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;,
        Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;,
        Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;
    }
.end annotation


# static fields
.field public static final MSG_SENDING:I = 0x1

.field public static final MSG_SENDING_FAIL:I = 0x2

.field public static final MSG_SENDING_SUCCEED:I = 0x3


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;

.field public result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
