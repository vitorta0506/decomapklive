.class public Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssistantMessage"
.end annotation


# instance fields
.field public FromAccount:Ljava/lang/String;

.field public MsgBody:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;",
            ">;"
        }
    .end annotation
.end field

.field public ToAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
