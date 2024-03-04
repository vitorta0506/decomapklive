.class public Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/mine/model/LiveHistoryListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field public currPage:I

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/mine/model/LiveHistoryBean;",
            ">;"
        }
    .end annotation
.end field

.field public pageSize:I

.field final synthetic this$0:Lcom/guochao/faceshow/mine/model/LiveHistoryListBean;

.field public totalCount:I

.field public totalPage:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/model/LiveHistoryListBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/LiveHistoryListBean$Page;->this$0:Lcom/guochao/faceshow/mine/model/LiveHistoryListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
