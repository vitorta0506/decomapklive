.class public Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;
    .locals 2

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;

    .line 4
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public b()Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/j;->a:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;

    return-object v0
.end method
