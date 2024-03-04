.class public Lcom/guochao/faceshow/mine/model/ContributionListBean$Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/mine/model/ContributionListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Page"
.end annotation


# instance fields
.field public currPage:I

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/mine/model/ContributionBean;",
            ">;"
        }
    .end annotation
.end field

.field public pageSize:I

.field public totalCount:I

.field public totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
