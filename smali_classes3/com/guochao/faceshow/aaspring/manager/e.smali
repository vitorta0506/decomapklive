.class public final synthetic Lcom/guochao/faceshow/aaspring/manager/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/callback/d;Lkotlin/jvm/internal/Ref$LongRef;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/e;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/e;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide p3, p0, Lcom/guochao/faceshow/aaspring/manager/e;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/e;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/e;->b:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/manager/e;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->a(Lcom/guochao/faceshow/aaspring/base/http/callback/d;Lkotlin/jvm/internal/Ref$LongRef;J)V

    return-void
.end method
