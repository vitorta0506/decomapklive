.class public final Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$adapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$adapter$1$1",
        "Lx0/j;",
        "",
        "onLoadMore",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$adapter$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$adapter$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->access$getPage$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->access$setPage$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;I)V

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->access$getPage$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2$adapter$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->access$getPage$p(Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/F2fHistoryFragment2;->loadData(I)V

    return-void
.end method