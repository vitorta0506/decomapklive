.class public Lcom/guochao/faceshow/bean/MyTopicList$Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/bean/MyTopicList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/bean/MyTopic;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/bean/MyTopicList;

.field public totalPage:I


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/bean/MyTopicList;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/MyTopicList$Page;->this$0:Lcom/guochao/faceshow/bean/MyTopicList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
