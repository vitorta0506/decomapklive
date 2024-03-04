.class public abstract Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$d;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$d;->b:Z

    return-void
.end method


# virtual methods
.method public abstract b(IZ)V
.end method

.method public run()V
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$d;->a:I

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$d;->b:Z

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$d;->b(IZ)V

    return-void
.end method
